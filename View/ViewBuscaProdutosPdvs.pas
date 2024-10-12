unit ViewBuscaProdutosPdvs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, uPedidoDao, Vcl.Mask, Vcl.DBCtrls,
  Datasnap.DBClient, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmBuscaProdutoPdvs = class(TForm)
    PnlFundo: TPanel;
    EdtBuscaProd: TEdit;
    BtnBuscarProdutos: TBitBtn;
    DbGridBuscaProdutos: TDBGrid;
    DsBuscaProdutos: TDataSource;
    PnlDadosProdutos: TPanel;
    lblQtd: TLabel;
    lblPreco: TLabel;
    EdtQtd: TEdit;
    BtnSair: TBitBtn;
    DbPreco: TDBEdit;
    ClDsProdutos: TClientDataSet;
    BtnEnviaProdutos: TBitBtn;
    constructor ConstruirFormBusca(texto: string);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnBuscarProdutosClick(Sender: TObject);
    procedure EdtPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure DbGridBuscaProdutosEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure VerificaQtd(Field : TField);
    procedure DsBuscaProdutosDataChange(Sender: TObject; Field: TField);
    procedure DbGridBuscaProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure BtnEnviaProdutosClick(Sender: TObject);
    procedure DbPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure DbGridBuscaProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscaProdutoPdvs: TFrmBuscaProdutoPdvs;

implementation

{$R *.dfm}




procedure TFrmBuscaProdutoPdvs.FormCreate(Sender: TObject);
begin

//ShowMessage('Estou no Create');

 ClDsProdutos := TClientDataSet.Create(nil);
 ClDsProdutos.FieldDefs.Add('codigo', ftInteger);
 ClDsProdutos.FieldDefs.Add('descricao', ftString, 70);
 ClDsProdutos.FieldDefs.Add('qtd', ftFloat);
 ClDsProdutos.FieldDefs.Add('unidade', ftString, 2);
 ClDsProdutos.FieldDefs.Add('preco_venda', ftFloat);
 ClDsProdutos.FieldDefs.Add('marca', ftString, 50);
 ClDsProdutos.FieldDefs.Add('saldo', ftFloat);
 ClDsProdutos.FieldDefs.Add('custo_unit', ftFloat);
 ClDsProdutos.FieldDefs.Add('valor_venda_or', ftFloat);

 ClDsProdutos.CreateDataSet;
end;


procedure TFrmBuscaProdutoPdvs.FormShow(Sender: TObject);
begin

 if DmPedidos = nil then
    DmPedidos := TDmPedidos.Create(Self);


 DmPedidos.Query_BuscaProdutos.Close;

 DmPedidos.Query_BuscaProdutos.ParamByName('descricao').AsString := EdtBuscaProd.Text + '%';

 DmPedidos.Query_BuscaProdutos.Open;

 DsBuscaProdutos.DataSet := DmPedidos.Query_BuscaProdutos;

 DbGridBuscaProdutos.DataSource.DataSet.FieldByName('qtd').FocusControl;
end;

procedure TFrmBuscaProdutoPdvs.BtnBuscarProdutosClick(Sender: TObject);
begin
  DmPedidos.Query_BuscaProdutos.Close;
  DmPedidos.Query_BuscaProdutos.ParamByName('descricao').AsString := EdtBuscaProd.Text + '%';

  DmPedidos.Query_BuscaProdutos.open;

  DbGridBuscaProdutos.DataSource.DataSet := DmPedidos.Query_BuscaProdutos;

  DbGridBuscaProdutos.DataSource.DataSet.FieldByName('qtd').FocusControl;

 if DmPedidos.Query_BuscaProdutos.IsEmpty then
 begin
   DmPedidos.Query_BuscaProdutos.Close;
   DmPedidos.Query_BuscaProdutos.SQL.Clear;
   DmPedidos.Query_BuscaProdutos.SQL.Text := 'select codigo, descricao, unidade, preco_venda, saldo, marca, custo_unit, ''0,00'' as qtd from tb_produto' +
   ' where codigo = :codigo';
   DmPedidos.Query_BuscaProdutos.ParamByName('codigo').AsInteger := StrToInt(EdtBuscaProd.Text);
   DmPedidos.Query_BuscaProdutos.open;

   DbGridBuscaProdutos.SetFocus;
 end;

end;

procedure TFrmBuscaProdutoPdvs.BtnEnviaProdutosClick(Sender: TObject);
begin
 FrmBuscaProdutoPdvs.Close;
end;

procedure TFrmBuscaProdutoPdvs.BtnSairClick(Sender: TObject);
begin
 ClDsProdutos.EmptyDataSet;
 FrmBuscaProdutoPdvs.Close;
end;

constructor TFrmBuscaProdutoPdvs.ConstruirFormBusca(texto: string);
begin
inherited
  Create(nil);
  EdtBuscaProd.Text := texto;

//ShowMessage('Estou no Constructor');

end;



procedure TFrmBuscaProdutoPdvs.DbGridBuscaProdutosEnter(Sender: TObject);
begin

DbGridBuscaProdutos.DataSource.DataSet.Edit;
end;

procedure TFrmBuscaProdutoPdvs.DbGridBuscaProdutosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
// Verifica se a tecla pressionada é a seta para baixo
  if (Key = VK_DOWN) then
  begin
    // Verifica se está no último registro
    if DbGridBuscaProdutos.DataSource.DataSet.RecNo = DbGridBuscaProdutos.DataSource.DataSet.RecordCount then
    begin
      // Cancela o movimento para baixo quando estiver no último registro
      Key := 0;
    end;
  end;

end;

procedure TFrmBuscaProdutoPdvs.DbGridBuscaProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
 begin
    DbGridBuscaProdutos.DataSource.DataSet := nil;
    DbGridBuscaProdutos.DataSource.DataSet := ClDsProdutos;
 end;
end;

procedure TFrmBuscaProdutoPdvs.DbPrecoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  EdtQtd.SetFocus;
end;

procedure TFrmBuscaProdutoPdvs.DsBuscaProdutosDataChange(Sender: TObject;
  Field: TField);
begin
 if (Field <> nil) and (Field.FieldName = 'qtd') and (Field.AsFloat > 0) then
 begin
   VerificaQtd(Field);
 end;

end;

procedure TFrmBuscaProdutoPdvs.EdtPrecoKeyPress(Sender: TObject; var Key: Char);
begin
case key of
 #13:
  DbPreco.SetFocus
 end;
end;

procedure TFrmBuscaProdutoPdvs.EdtQtdKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 begin
   BtnEnviaProdutos.SetFocus;
 end;
end;



procedure TFrmBuscaProdutoPdvs.VerificaQtd(Field : TField);
var
qtd : Double;

begin

    begin
      Qtd := Field.AsFloat;

      if Qtd > 0 then
      begin
        ClDsProdutos.Append;
        ClDsProdutos.FieldByName('codigo').AsInteger         := DbGridBuscaProdutos.DataSource.DataSet.FieldByName('codigo').AsInteger;
        ClDsProdutos.FieldByName('descricao').AsString       := DbGridBuscaProdutos.DataSource.DataSet.FieldByName('descricao').AsString;
        ClDsProdutos.FieldByName('qtd').AsFloat              := qtd;
        ClDsProdutos.FieldByName('unidade').AsString         := DbGridBuscaProdutos.DataSource.DataSet.FieldByName('unidade').AsString;
        ClDsProdutos.FieldByName('preco_venda').AsFloat      := DbGridBuscaProdutos.DataSource.DataSet.FieldByName('preco_venda').AsFloat;
        ClDsProdutos.FieldByName('marca').AsString           := DbGridBuscaProdutos.DataSource.DataSet.FieldByName('marca').AsString;
        ClDsProdutos.FieldByName('saldo').AsInteger          := DbGridBuscaProdutos.DataSource.DataSet.FieldByName('saldo').AsInteger;
        ClDsProdutos.FieldByName('custo_unit').AsFloat       := DbGridBuscaProdutos.DataSource.DataSet.FieldByName('custo_unit').AsFloat;
        ClDsProdutos.FieldByName('valor_venda_or').AsFloat   := DbGridBuscaProdutos.DataSource.DataSet.FieldByName('preco_venda').AsFloat;

        ClDsProdutos.Post;

      end;
    end;

end;



end.
