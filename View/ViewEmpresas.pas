unit ViewEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ComCtrls, uEmpresaDao, uEstados, Winapi.ShellAPI, FrmPadraoCads, uBuscaCep;

type
  TFrmEmpresas = class(TFrmBase)
    PageControl1: TPageControl;
    TsConsulta: TTabSheet;
    DbGridEmpresa: TDBGrid;
    TsCadastro: TTabSheet;
    PnlBotoes: TPanel;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnAlterar: TBitBtn;
    Dstb_empresa: TDataSource;
    lblRazao_social: TLabel;
    DbRazao_social: TDBEdit;
    lblFantasia: TLabel;
    DbFantasia: TDBEdit;
    lblCnpj: TLabel;
    DbCnpj: TDBEdit;
    lblie: TLabel;
    DbIe: TDBEdit;
    lblCep: TLabel;
    DbCep: TDBEdit;
    lblEstado: TLabel;
    lblCidade: TLabel;
    DbCidade: TDBEdit;
    lblBairro: TLabel;
    DbBairro: TDBEdit;
    lblEndereco: TLabel;
    DbEndereco: TDBEdit;
    lblNum: TLabel;
    DbNum: TDBEdit;
    lbblTelefone: TLabel;
    DbTelefone: TDBEdit;
    lblEmail: TLabel;
    DbEmail: TDBEdit;
    lblSite: TLabel;
    DbSite: TDBEdit;
    lblLogo: TLabel;
    DbLogo: TDBEdit;
    CbEstado: TDBComboBox;
    Image1: TImage;
    AbrirImagem: TOpenDialog;
    PnlLogo: TPanel;
    BtbBuscaCep: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure PnlLogoClick(Sender: TObject);
    procedure BtbBuscaCepClick(Sender: TObject);
  private
    { Private declarations }
    DmEmpresas : TDmEmpresas;
  public
    { Public declarations }
  end;

var
  FrmEmpresas: TFrmEmpresas;


implementation

{$R *.dfm}

procedure TFrmEmpresas.BtbBuscaCepClick(Sender: TObject);
var
BuscaCep : TBuscaCep;
begin
  inherited;
 BuscaCep := TBuscaCep.Create;
 BuscaCep := BuscaCep.RetornaDadosCep(DbCep.Text);

 CbEstado.Text   := BuscaCep.Uf;
 DbCidade.Text   := BuscaCep.Cidade;
 DbBairro.Text   := BuscaCep.Bairro;
 DbEndereco.Text := BuscaCep.Logradouro;

end;

procedure TFrmEmpresas.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePage = TsConsulta then
   PageControl1.ActivePage := TSCadastro;

BtnNovo.Enabled     := False;
BtnSalvar.Enabled   := True;
BtnCancelar.Enabled := True;
BtnAlterar.Enabled  := False;
BtnExcluir.Enabled  := False;

 DmEmpresas.Querytb_empresa.edit;
end;

procedure TFrmEmpresas.BtnCancelarClick(Sender: TObject);
begin
  inherited;
BtnNovo.Enabled     := True;
BtnSalvar.Enabled   := False;
BtnCancelar.Enabled := False;
BtnAlterar.Enabled  := True;
BtnExcluir.Enabled  := True;

 DmEmpresas.Querytb_empresa.cancel;
end;

procedure TFrmEmpresas.BtnExcluirClick(Sender: TObject);
begin
  inherited;
BtnNovo.Enabled     := True;
BtnSalvar.Enabled   := False;
BtnCancelar.Enabled := False;
BtnAlterar.Enabled  := True;
BtnExcluir.Enabled  := True;

 DmEmpresas.Querytb_empresa.delete;
end;

procedure TFrmEmpresas.BtnNovoClick(Sender: TObject);
begin
  inherited;

if Dstb_empresa.Enabled = False then
   Dstb_empresa.Enabled := True;

if PageControl1.ActivePage = TsConsulta then
   PageControl1.ActivePage := TSCadastro;

BtnNovo.Enabled     := False;
BtnSalvar.Enabled   := True;
BtnCancelar.Enabled := True;
BtnAlterar.Enabled  := False;
BtnExcluir.Enabled  := False;

 DmEmpresas.Querytb_empresa.insert;
end;

procedure TFrmEmpresas.BtnSalvarClick(Sender: TObject);
begin
  inherited;
BtnNovo.Enabled     := True;
BtnSalvar.Enabled   := False;
BtnCancelar.Enabled := False;
BtnAlterar.Enabled  := True;
BtnExcluir.Enabled  := True;

 DmEmpresas.Querytb_empresa.post;
end;

procedure TFrmEmpresas.FormCreate(Sender: TObject);
var
Estados : TEstado;
UFs : TArray<string>;
i : integer;
begin
  inherited;
 DmEmpresas := TDmEmpresas.create(self);

 DmEmpresas.Querytb_empresa.close;
 DmEmpresas.Querytb_empresa.sql.clear;
 DmEmpresas.Querytb_empresa.sql.text := 'select * from tb_empresa';
 DmEmpresas.Querytb_empresa.Open;
 Dstb_empresa.DataSet := DmEmpresas.Querytb_empresa;


 Estados := TEstado.Create;
 UFs := Estados.GetSiglasEstados;

 for i := 0 to High(UFs) do
  begin
    CbEstado.Items.Add(UFs[i]);
  end;



end;

procedure TFrmEmpresas.PnlLogoClick(Sender: TObject);
begin
  inherited;
  if AbrirImagem.execute then
 Image1.Picture.LoadFromFile(AbrirImagem.FileName);
 DbLogo.Text := AbrirImagem.FileName;

end;

end.
