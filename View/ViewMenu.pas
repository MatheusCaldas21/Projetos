unit ViewMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Menus, uClientes, ViewClientes, ViewProdutos, ViewMarcas, ViewFornecedores,
  ViewDepartamentos, ViewInventarioEstoque, ViewEmpresas, Vcl.StdCtrls, ViewPdvs,
  IdBaseComponent, IdComponent, IdCustomTCPServer, IdTimeServer,
  IdDateTimeStamp, ConexaoDao, ZDataSet, System.Rtti, System.Generics.Collections,
  ViewPlanoContas, ViewParametros, ViewCondicoesPagamentos, Vcl.Buttons, ViewCaixa,
  ViewHistoricoProdutos, ViewNcms, ViewTipoMovimento, ViewCst, ViewRelatorioVendas,
  ViewVendedores, SessionManager, ViewConfigNfe, ViewConfigNfe2, ViewNatOperacao, ViewCliente, ViewUsuarios;


type
  TFrmMenu = class(TFrmBase)
    Menu: TMainMenu;
    lblUsuario: TLabel;
    lblHorario: TLabel;
    Timer: TTimer;
    Menu2: TMainMenu;
    ImgUsuario: TImage;
    procedure InsereUsuario(usuario : String);
    procedure TimerTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CriaMenu;
    procedure FormShow(Sender: TObject);
    procedure MenuItemClick(Sender : TObject);
    procedure Teste(Sender : TObject);

  private
    { Private declarations }
    DmConexao : TDmConexao;
  public
    { Public declarations }
    FormClassDictionary : TDictionary<string,TClass>;
  end;

  type
  TMenuNode = class
    Caption: string;
    Hint: string;
    Form: string;
    MenuType: string;
    Parent: TMenuNode;
    Children: TObjectList<TMenuNode>;
    constructor Create;
    destructor Destroy; override;
  end;


var
  FrmMenu: TFrmMenu;
  Usuario: String;





implementation

{$R *.dfm}
 uses
  ViewLogin;

constructor TMenuNode.Create;
begin
  Children := TObjectList<TMenuNode>.Create;
end;

destructor TMenuNode.Destroy;
begin
  Children.Free;
  inherited;
end;



procedure TFrmMenu.MenuItemClick(Sender: TObject);
var
Form          : String;
FormClass     : TFormClass;
FormInstancia : TForm;
MenuItem      : TMenuItem;

begin

MenuItem := Sender as TMenuItem;
Form := MenuItem.Hint ;

 if FormClassDictionary.TryGetValue(Form, TClass(FormClass)) then
 begin
   FormInstancia := TFormClass(FormClass).Create(Application);
   FormInstancia.Show;
 end
 else
 begin
  ShowMessage(' Formulário   :' + Form + '  não encontrado');
 End;


end;


procedure TFrmMenu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if key = VK_F1 then
  ShowMessage('teste f1');
end;


procedure TFrmMenu.FormShow(Sender: TObject);
begin
  inherited;
 DmConexao := TDmConexao.Create(self);
 FormClassDictionary := TDictionary<String, TClass>.Create;
 FormClassDictionary.Add('FrmCliente',TFrmCliente);
 FormClassDictionary.Add('FrmFornecedores',TFrmFornecedores);
 FormClassDictionary.Add('FrmProdutos',TFrmProdutos);
 FormClassDictionary.Add('FrmMarcas',TFrmMarcas);
 FormClassDictionary.Add('FrmDepartamentos',TFrmDepartamentos);
 FormClassDictionary.Add('FrmEmpresas',TFrmEmpresas);
 FormClassDictionary.Add('FrmPedidos',TFrmPedidos);
 FormClassDictionary.Add('FrmPlanoContas',TFrmPlanoContas);
 FormClassDictionary.Add('FrmParametros', TFrmParametros);
 FormClassDictionary.Add('FrmCondPagamentos', TFrmCondPagamentos);
 FormClassDictionary.Add('FrmCaixa', TFrmCaixa);
 FormClassDictionary.Add('FrmHistoricoProdutos', TFrmHistoricoProdutos);
 FormClassDictionary.Add('FrmNcms', TFrmNcms);
 FormClassDictionary.Add('FrmTipoMovto', TFrmTipoMovimento);
 FormClassDictionary.Add('FrmCst', TFrmCst);
 FormClassDictionary.Add('FrmRelatorioVendas', TFrmRelatorioVendas);
 FormClassDictionary.Add('FrmVendedores', TFrmVendedores);
 FormClassDictionary.Add('FrmInventarioEstoque', TFrmInventarioEstoque);
 FormClassDictionary.Add('FrmConfigNfe2', TFrmConfigNfe2);
 FormClassDictionary.Add('FrmNatOperacao', TFrmNatOperacao);
 FormClassDictionary.Add('FrmUsuarios', TFrmUsuarios);


 CriaMenu;
end;

procedure TFrmMenu.InsereUsuario(usuario : String);
begin
   lblUsuario.Caption := usuario;

end;
procedure TFrmMenu.Teste(Sender: TObject);
begin
ShowMessage('Teste')
end;

procedure TFrmMenu.TimerTimer(Sender: TObject);
begin
  inherited;
lblHorario.Caption := DateTimeToStr(Now);
end;


procedure  TFrmMenu.CriaMenu;
var
Query : TZQuery;
Sql   : String;
ItemDeMenu, SubMenu : TMenuItem;
MenuPrincipal, Form : String;

begin
 Query := TZQuery.Create(self);

 Query.Connection := DmConexao.ZConnection;


 Sql := 'select tp.codigo, u.nome, tp.tela, tp.menu, tp.principal, tp.submenu, tp.permissoes, tp.tipo, up.permitido, tp.possui_subitens ' +
        'from tb_telas_permissoes tp inner join tb_usuarios_permissao up on up.codigo_permissao = tp.codigo ' +
        'inner join tb_usuario u on u.codigo = up.cod_usuario ' +
        'where u.nome like :usuario';

 Query.SQL.Text := sql;
 Query.ParamByName('usuario').AsString := lblUsuario.Caption;

 Query.Open;


 while not(Query.Eof) do
 begin

   if (Query.FieldByName('tipo').AsString = 'ME') then
    begin
      ItemDeMenu := TMenuItem.Create(Self);
      ItemDeMenu.Caption := Query.FieldByName('menu').AsString;
      Menu2.Items.Add(ItemDeMenu);

      Query.Next;
    end
    else if (Query.FieldByName('tipo').AsString = 'SM') then
     begin
      ItemDeMenu := TMenuItem.Create(Self);
      SubMenu    := TMenuItem.Create(Self);

      ItemDeMenu.Caption := Query.FieldByName('menu').AsString;
      SubMenu.Caption    := Query.FieldByName('submenu').AsString;
      SubMenu.Hint       := Query.FieldByName('tela').AsString;
      Form               := Query.FieldByName('tela').AsString;

      if not (Query.FieldByName('possui_subitens').AsString = 'S') then
      begin
           SubMenu.OnClick := MenuItemClick;
      end;

      Menu2.Items.Find(ItemDeMenu.Caption).Add(SubMenu);


      Query.Next;
     end
     else if (Query.FieldByName('tipo').AsString = 'SI') then
      begin
       ItemDeMenu := TMenuItem.Create(Self);
       SubMenu    := TMenuItem.Create(Self);

       ItemDeMenu.Caption :=  Query.FieldByName('menu').AsString;
       SubMenu.Caption    :=  Query.FieldByName('submenu').AsString;
       SubMenu.Hint       :=  Query.FieldByName('tela').AsString;
       MenuPrincipal      :=  Query.FieldByName('principal').AsString;
       Form               :=  Query.FieldByName('tela').AsString;

     //  SubMenu.Tag := NativeInt(Pointer(Form));

       SubMenu.OnClick := MenuItemClick;

       Menu2.Items.Find(MenuPrincipal).Find(ItemDeMenu.Caption).Add(SubMenu);

       Query.Next;
      end
       else
       begin
         break;
         MessageDlg('Ocorreu um erro ao abrir o menu', mtError, mbAbortIgnore, 0);
       end;
 end;


end;




end.
