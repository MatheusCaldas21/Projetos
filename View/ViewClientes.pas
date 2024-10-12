unit ViewClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids,
  Vcl.DBCtrls, uClientes, uClienteDao, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppDB, ppDBPipe, Generics.Collections, Datasnap.DBClient,
  ppDesignLayer, ppParameter, ppBands, ppCache, ConexaoDao, ppCtrls, ppPrnabl, uBuscaCep,
  Vcl.DBGrids, ACBrBase, ACBrDFe, ACBrNFe, Vcl.Mask, uEnderecoEntregaCliDao;

type
  TFrmClientes = class(TFrmBase)
    PgControlClientes: TPageControl;
    TSConsulta: TTabSheet;
    TSCadastro: TTabSheet;
    Label1: TLabel;
    EdtBuscar: TEdit;
    BtnBuscar: TBitBtn;
    DbGridClientes: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdtCodigo: TEdit;
    EdtCep: TEdit;
    EdtNome: TEdit;
    EdtCpf: TEdit;
    CBEstado: TComboBox;
    EdtCidade: TEdit;
    EdtBairro: TEdit;
    EdtEndereco: TEdit;
    Panel1: TPanel;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnImprimirDadosCli: TBitBtn;
    RelDadosCliente: TppReport;
    Dados_clientes: TppDBPipeline;
    ClDsClientes: TClientDataSet;
    DsClientes: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Codigo: TppField;
    Nome: TppField;
    Estado: TppField;
    Cidade: TppField;
    CPF: TppField;
    Endereco: TppField;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    BtnBuscaCep: TBitBtn;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    CbIndIEDest: TComboBox;
    CbIndFinal: TComboBox;
    MemObservacoesNFe: TMemo;
    TsEnderecoEntrega: TTabSheet;
    DsEntregaCli: TDataSource;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label16: TLabel;
    Label17: TLabel;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BotoesInicialmente;
    procedure EdtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCpfKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCepKeyPress(Sender: TObject; var Key: Char);
    procedure CBEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBairroKeyPress(Sender: TObject; var Key: Char);
    procedure BtnBuscarClick(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure BtnImprimirDadosCliClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure liberarDigitacao;
    procedure bloquearDigitacao;
    procedure BtnBuscaCepClick(Sender: TObject);
  private

    { Private declarations }
   procedure limpaCampos();
  { FModoOperacao: (moNovo, moEditar, moNenhum);

   procedure SetModoOperacao(const Value: TModoOperacao);    }

  public


    procedure Cadastrar;
    procedure Alterar;


    { Public declarations }
 {  property ModoOperacao: TModoOperacao read FModoOperacao write SetModoOperacao; }
  end;

var
  FrmClientes: TFrmClientes;
  EstadoForm : String;


implementation



procedure TFrmClientes.BtnAlterarClick(Sender: TObject);
begin

 if PgControlClientes.ActivePage = TSConsulta then
    PgControlClientes.ActivePage := TSCadastro;

 BtnNovo.Enabled     := False;
 BtnExcluir.Enabled  := True;
 BtnAlterar.Enabled  := False;
 BtnSalvar.Enabled   := True;
 BtnCancelar.Enabled := True;
 EstadoForm := 'Alterar';
end;

procedure TFrmClientes.BtnBuscarClick(Sender: TObject);
var
ClienteDao : TClienteDao;
Clientes   : TList<TClientes>;
Cliente    : TClientes;
begin


ClienteDao := TClienteDao.Create;
Clientes   := TList<TClientes>.Create;
Cliente    := TClientes.Create;

Clientes   := ClienteDao.Buscar(EdtBuscar.Text);

 if Clientes = nil then

 ShowMessage('Nenhum Cliente encontrado')

 else
  begin

    ClDsClientes := TClientDataSet.Create(nil);
    ClDsClientes.FieldDefs.add('codigo', ftInteger);
    ClDsClientes.FieldDefs.Add('nome', ftString, 100);
    ClDsClientes.FieldDefs.Add('cpf', ftString, 100);
    ClDsClientes.FieldDefs.Add('estado', ftString, 100);
    ClDsClientes.FieldDefs.Add('cidade', ftString, 100);
    ClDsClientes.FieldDefs.Add('endereco', ftString, 100);
    ClDsClientes.CreateDataSet;

     for Cliente in Clientes do
      begin
       ClDsClientes.Append;

       ClDsClientes.FieldByName('codigo').AsInteger := Cliente.codigo;
       ClDsClientes.FieldByName('nome').AsString := Cliente.Nome;
       ClDsClientes.FieldByName('cpf').AsString := Cliente.Cpf;
       ClDsClientes.FieldByName('estado').AsString := Cliente.Estado;
       ClDsClientes.FieldByName('cidade').AsString := Cliente.Cidade;
       ClDsClientes.FieldByName('endereco').AsString := Cliente.Endereco;

       ClDsClientes.Post;


      end;

     ClDsClientes.Open;


     if Assigned(DbGridClientes) then
     begin
     DbGridClientes.DataSource.DataSet := nil;
     DbGridClientes.DataSource.DataSet := ClDsClientes;
     end;
     BtnImprimirDadosCli.Enabled := True;
  end;


end;

procedure TFrmClientes.BtnCancelarClick(Sender: TObject);
begin
 BotoesInicialmente;
 EstadoForm := 'nenhum';
 limpaCampos;
 bloquearDigitacao;
end;

procedure TFrmClientes.BtnImprimirDadosCliClick(Sender: TObject);
begin

  RelDadosCliente.Print;

end;

procedure TFrmClientes.BtnNovoClick(Sender: TObject);
var
ClienteDao : TClienteDao;
CodigoCli  : integer;
begin

 if PgControlClientes.ActivePage = TSConsulta then
   PgControlClientes.ActivePage := TSCadastro;


 ClienteDao := TClienteDao.Create;
 CodigoCli := ClienteDao.GetCodigo;
 EdtCodigo.Text := IntToStr(CodigoCli);

 liberarDigitacao;
 BtnNovo.Enabled     := False;
 BtnExcluir.Enabled  := False;
 BtnAlterar.Enabled  := False;
 BtnSalvar.Enabled   := True;
 BtnCancelar.Enabled := True;
 EstadoForm := 'Novo';
end;

procedure TFrmClientes.BtnSalvarClick(Sender: TObject);
begin

 if EstadoForm = 'Alterar' then
   begin
    Alterar;
    BotoesInicialmente;
   end
 else if EstadoForm = 'Novo' then
    begin
     Cadastrar;
     BotoesInicialmente;
    end;
end;

procedure TFrmClientes.limpaCampos();
begin
  EdtCodigo.Text         := '';
  EdtNome.Text           := '';
  EdtCpf.Text            := '';
  EdtCep.Text            := '';
  CBEstado.Text          := '';
  EdtCidade.Text         := '';
  EdtBairro.Text         := '';
  EdtEndereco.Text       := '';
  MemObservacoesNFe.Text := '';

end;


procedure TFrmClientes.Cadastrar;
var
Cliente                   : TClientes;
ClienteDao                : TClienteDao;
Resultado                 : Boolean;
IndIEDest, IndFinal       : string;
begin

 Cliente    := TClientes.Create;
 ClienteDao := TClienteDao.Create;

 IndIEDest := CbIndIEDest.Text;
 IndFinal  := CbIndFinal.Text;

 Cliente.Codigo    := StrToInt(EdtCodigo.Text);
 Cliente.Nome      := EdtNome.Text;
 Cliente.Cpf       := EdtCpf.Text;
 Cliente.Cep       := EdtCep.Text;
 Cliente.Estado    := CBEstado.Text;
 Cliente.Cidade    := EdtCidade.Text;
 Cliente.Bairro    := EdtBairro.Text;
 Cliente.Endereco  := EdtEndereco.Text;
 Cliente.IndIEDest := StrToInt((IndIEDest.Chars[0]));
 Cliente.IndFinal  := StrToInt((IndFinal.Chars[0]));
 Cliente.ObsNFe    := MemObservacoesNFe.Text;

 Resultado := ClienteDao.Cadastrar(Cliente);

 if Resultado = True then
  ShowMessage('Cliente Cadastrado com sucesso')
 else
  ShowMessage('Erro ao cadastrar Cliente');


end;




procedure TFrmClientes.CBEstadoKeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
  #13:
      EdtCidade.SetFocus;
  #27:
      EdtCep.SetFocus;
 end;
end;

procedure TFrmClientes.EdtBairroKeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
  #13:
      EdtEndereco.SetFocus;
  #27:
      EdtBairro.SetFocus;
 end;
end;

procedure TFrmClientes.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  BtnBuscar.SetFocus;
end;

procedure TFrmClientes.EdtCepKeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
  #13:
      CBEstado.SetFocus;
  #27:
      EdtCpf.SetFocus;
 end;
end;

procedure TFrmClientes.EdtCidadeKeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
  #13:
      EdtBairro.SetFocus;
  #27:
      CBEstado.SetFocus;
 end;
end;

procedure TFrmClientes.EdtCpfKeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
  #13:
      EdtNome.SetFocus;
  #27:
      EdtCep.SetFocus;
 end;
end;

procedure TFrmClientes.EdtNomeKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    EdtCpf.SetFocus;
end;

procedure TFrmClientes.Alterar;
var
Cliente    : TClientes;
ClienteDao : TClienteDao;
Resultado  : Boolean;
IndIEDest, IndFinal       : string;

begin

 Cliente    := TClientes.Create;
 ClienteDao := TClienteDao.Create;

 Cliente.Nome     := EdtNome.Text;
 Cliente.Cpf      := EdtCpf.Text;
 Cliente.Cep      := EdtCep.Text;
 Cliente.Estado   := CBEstado.Text;
 Cliente.Cidade   := EdtCidade.Text;
 Cliente.Bairro   := EdtBairro.Text;
 Cliente.Endereco := EdtEndereco.Text;
 Cliente.IndIEDest := StrToInt((IndIEDest.Chars[0]));
 Cliente.IndFinal  := StrToInt((IndFinal.Chars[0]));
 Cliente.ObsNFe    := MemObservacoesNFe.Text;

 Resultado := ClienteDao.Alterar(Cliente);



 if Resultado = True then
  ShowMessage('Cliente alterado com sucesso')
 else
  ShowMessage('Erro ao alterar Cliente')

end;




procedure TFrmClientes.BotoesInicialmente;
begin
  BtnNovo.Enabled     := True;
  BtnCancelar.Enabled := False;
  BtnAlterar.Enabled  := True;
  BtnSalvar.Enabled   := False;
  BtnExcluir.Enabled  := True;

end;


procedure TFrmClientes.liberarDigitacao;
begin
  EdtNome.Enabled := True;
  EdtCpf.Enabled := True;
  EdtCep.Enabled := True;
  CBEstado.Enabled := True;
  EdtCidade.Enabled := True;
  EdtBairro.Enabled := True;
  EdtEndereco.Enabled := True;
end;


procedure TFrmClientes.BtnBuscaCepClick(Sender: TObject);
var
BuscaCep : TBuscaCep;
Resultado : TBuscaCep;
begin
BuscaCep := TBuscaCep.Create;
Resultado := TBuscaCep.Create;

Resultado := BuscaCep.RetornaDadosCep(EdtCep.Text);

 CBEstado.Text    := Resultado.Uf;
 EdtCidade.Text   := Resultado.Cidade;
 EdtBairro.Text   := Resultado.Bairro;
 EdtEndereco.Text := Resultado.Logradouro;

end;

procedure TFrmClientes.bloquearDigitacao;
begin
  EdtNome.Enabled := False;
  EdtCpf.Enabled := False;
  EdtCep.Enabled := False;
  CBEstado.Enabled := False;
  EdtCidade.Enabled := False;
  EdtBairro.Enabled := False;
  EdtEndereco.Enabled := False;
end;








{$R *.dfm}

end.
