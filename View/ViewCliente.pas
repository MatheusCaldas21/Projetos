unit ViewCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmPadraoCads, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Access2000, Vcl.ExtCtrls,
  uClientesDao, Vcl.DBCtrls, Vcl.Mask, uBuscaCep, uEstados, ACBrBase,
  ACBrEnterTab;

type
  TFrmCliente = class(TFrmPadraoCadastros)
    Dstb_clientes: TDataSource;
    Panel2: TPanel;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Label17: TLabel;
    CbIndIEDest: TComboBox;
    CbIndFinal: TComboBox;
    MemObservacoesNFe: TMemo;
    TsEnderecoEntrega: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DbCbUfEndereco: TDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    BtnBuscaCep: TBitBtn;
    DbEdtCodigo: TDBEdit;
    DbEdtNome: TDBEdit;
    DbEdtCpf: TDBEdit;
    DbEdtCidade: TDBEdit;
    DbEdtBairro: TDBEdit;
    DbEdtCep: TDBEdit;
    DbEdtEndereco: TDBEdit;
    DbCbEstado: TDBComboBox;
    DbGridEnderecoCli: TDBGrid;
    Dstb_endereco_cli: TDataSource;
    BtnAlterarEnd: TBitBtn;
    BtnNovoEnd: TBitBtn;
    BtnExcluirEnd: TBitBtn;
    BtnCancelarEnd: TBitBtn;
    BtnSalvarEnd: TBitBtn;
    ACBrEnterTab1: TACBrEnterTab;
    procedure BtnBuscaCepClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure BtnAlterarEndClick(Sender: TObject);
    procedure BtnNovoEndClick(Sender: TObject);
    procedure BtnExcluirEndClick(Sender: TObject);
    procedure BtnCancelarEndClick(Sender: TObject);
    procedure BtnSalvarEndClick(Sender: TObject);
    procedure Dstb_clientesDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

procedure TFrmCliente.BtnAlterarClick(Sender: TObject);
begin
  inherited;

if PageControl1.ActivePage = TSConsulta then
   PageControl1.ActivePage := TSCadastro;

Dstb_clientes.DataSet.Edit;
end;

procedure TFrmCliente.BtnAlterarEndClick(Sender: TObject);
begin
  inherited;
  try
    Dstb_endereco_cli.DataSet.Edit;
  finally
    BtnNovoEnd.Enabled      := False;
    BtnSalvarEnd.Enabled    := True;
    BtnCancelarEnd.Enabled  := True;
    BtnAlterarEnd.Enabled   := False;
    BtnExcluirEnd.Enabled   := False;
  end;

end;

procedure TFrmCliente.BtnBuscaCepClick(Sender: TObject);
var
BuscaCep : TBuscaCep;
Resultado : TBuscaCep;
begin
BuscaCep := TBuscaCep.Create;
Resultado := TBuscaCep.Create;

Resultado := BuscaCep.RetornaDadosCep(DbEdtCep.Text);

 DbCbEstado.Text    := Resultado.Uf;
 DbEdtCidade.Text   := Resultado.Cidade;
 DbEdtBairro.Text   := Resultado.Bairro;
 DbEdtEndereco.Text := Resultado.Logradouro;

end;



procedure TFrmCliente.BtnBuscarClick(Sender: TObject);
begin
  inherited;
DmClientes.Querytb_clientes.Close;
DmClientes.Querytb_clientes.SQL.Clear;
DmClientes.Querytb_clientes.SQL.Text := 'Select * from tb_cliente where nome like :nome';
DmClientes.Querytb_clientes.ParamByName('nome').AsString := EdtBusca.Text + '%';
DmClientes.Querytb_clientes.Open;

end;

procedure TFrmCliente.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Dstb_clientes.DataSet.Cancel;
end;

procedure TFrmCliente.BtnCancelarEndClick(Sender: TObject);
begin
  inherited;
  try
   Dstb_endereco_cli.DataSet.Cancel;
  finally
   BtnNovoEnd.Enabled     := True;
   BtnSalvarEnd.Enabled   := False;
   BtnCancelarEnd.Enabled := False;
   BtnAlterarEnd.Enabled  := True;
   BtnExcluirEnd.Enabled  := True;
  end;

end;

procedure TFrmCliente.BtnExcluirClick(Sender: TObject);
begin
  inherited;
 if Application.MessageBox('Deseja realmente excluir esse cliente ?', 'Exclusão', MB_YESNO+MB_ICONEXCLAMATION) = mrYes then
 begin
  Try
   Dstb_clientes.DataSet.Delete;
   DmClientes.Querytb_clientes.Connection.Commit;
  Finally
   PageControl1.ActivePageIndex := 0;
  End;
 
 end;

end;

procedure TFrmCliente.BtnExcluirEndClick(Sender: TObject);
begin
  inherited;

if Application.MessageBox('Deseja realmente excluir esse endereço de entrega ?', 'Exclusão', MB_YESNO+MB_ICONQUESTION) = mrYes then
begin
 TRY
   Dstb_endereco_cli.DataSet.Delete;
   DmClientes.Querytb_endereco_cli.connection.commit;
 FINALLY
   BtnNovoEnd.Enabled     := True;
   BtnSalvarEnd.Enabled   := False;
   BtnCancelarEnd.Enabled := False;
   BtnAlterarEnd.Enabled  := True;
   BtnExcluirEnd.Enabled  := True;
 END;



end;

end;

procedure TFrmCliente.BtnNovoClick(Sender: TObject);
begin
  inherited;

if PageControl1.ActivePage = TSConsulta then
   PageControl1.ActivePage := TSCadastro;

Dstb_clientes.DataSet.Insert;
end;

procedure TFrmCliente.BtnNovoEndClick(Sender: TObject);
begin
  inherited;
try
 Dstb_endereco_cli.DataSet.Insert;
finally
 BtnNovoEnd.Enabled     := False;
 BtnSalvarEnd.Enabled   := True;
 BtnCancelarEnd.Enabled := True;
 BtnAlterarEnd.Enabled  := False;
 BtnExcluirEnd.Enabled  := False;
end;



end;

procedure TFrmCliente.BtnSalvarClick(Sender: TObject);
begin
  inherited;

Dstb_clientes.DataSet.Post;
DmClientes.Querytb_clientes.Connection.Commit;
end;

procedure TFrmCliente.BtnSalvarEndClick(Sender: TObject);
begin
  inherited;
  if Dstb_clientes.DataSet.State in [dsInsert] then
     Dstb_endereco_cli.DataSet.FieldByName('codigo_cli').AsInteger := Dstb_clientes.DataSet.FieldByName('codigo').AsInteger;

  try
    Dstb_endereco_cli.DataSet.Post;
    DmClientes.Querytb_endereco_cli.connection.commit;
  finally
    BtnNovoEnd.Enabled     := True;
    BtnSalvarEnd.Enabled   := False;
    BtnCancelarEnd.Enabled := False;
    BtnAlterarEnd.Enabled  := True;
    BtnExcluirEnd.Enabled  := True;
  end;

end;

procedure TFrmCliente.Dstb_clientesDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
DmClientes.Querytb_endereco_cli.close;
DmClientes.Querytb_endereco_cli.ParamByName('codigo_cli').asInteger := Dstb_clientes.DataSet.FieldByName('codigo').AsInteger;
DmClientes.Querytb_endereco_cli.open;
end;

procedure TFrmCliente.FormCreate(Sender: TObject);
var
Estados : TArray<string>;
i : Byte;
begin
  inherited;
Estados := TEstado.GetSiglasEstados;

 for i := 0 to High(Estados) do
 begin
   DbCbEstado.Items.Add(Estados[i]);
   DbCbUfEndereco.Items.Add(Estados[i]);
 end;
end;

procedure TFrmCliente.FormShow(Sender: TObject);
begin
  inherited;
 if DmClientes = nil then
    DmClientes := TDmClientes.Create(Self);
end;

end.
