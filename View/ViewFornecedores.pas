unit ViewFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmPadraoCads, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uFornecedorDao, uBuscaCnpj, ACBrBase,
  ACBrEnterTab, uEstados;

type
  TFrmFornecedores = class(TFrmPadraoCadastros)
    Label1: TLabel;
    DbCodigo: TDBEdit;
    Dstb_fornecedores: TDataSource;
    Label2: TLabel;
    DbRazaoSocial: TDBEdit;
    Label3: TLabel;
    DbFantasia: TDBEdit;
    Label4: TLabel;
    DbCnpj: TDBEdit;
    Label5: TLabel;
    DbIe: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DbCidade: TDBEdit;
    Label8: TLabel;
    DbBairro: TDBEdit;
    Label9: TLabel;
    DbEndereco: TDBEdit;
    Label10: TLabel;
    DbNum: TDBEdit;
    Label11: TLabel;
    DbFone: TDBEdit;
    Label12: TLabel;
    DbFone2: TDBEdit;
    Label13: TLabel;
    DbEmail: TDBEdit;
    DbInativo: TDBCheckBox;
    BtnBuscaCnpj: TBitBtn;
    BtnBuscaIe: TBitBtn;
    DbCep: TDBEdit;
    Label14: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    CbEstado: TDBComboBox;
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnBuscaCnpjClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);

  private
    { Private declarations }
    DmFornecedores : TDmFornecedores;
  public
    { Public declarations }
  end;

var
  FrmFornecedores: TFrmFornecedores;

implementation

{$R *.dfm}

procedure TFrmFornecedores.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  DmFornecedores.Querytb_fornecedor.Edit;
end;

procedure TFrmFornecedores.BtnBuscaCnpjClick(Sender: TObject);
var
BuscaCnpj : TBuscaCnpj;
Resultado : TBuscaCnpj;


begin
BuscaCnpj := TBuscaCnpj.Create;
Resultado := BuscaCnpj.BuscaCnpj(DbCnpj.Text);

DbRazaoSocial.Text := Resultado.Razao_social;
DbFantasia.Text    := Resultado.Fantasia;
DbIe.Text          := Resultado.Ie;
CbEstado.Text      := Resultado.Uf;
DbCep.Text         := Resultado.Cep;
DbCidade.Text      := Resultado.Cidade;
DbBairro.Text      := Resultado.Bairro;
DbEndereco.Text    := Resultado.Endereco;
DbNum.Text         := Resultado.Num.ToString;
DbEmail.Text       := Resultado.Email;
DbFone.Text        := Resultado.Fone1;
DbFone2.Text       := Resultado.Fone2;

end;

procedure TFrmFornecedores.BtnBuscarClick(Sender: TObject);
begin
  inherited;
  if Dstb_fornecedores.Enabled = False then
     Dstb_fornecedores.Enabled := True;

  DmFornecedores.Querytb_fornecedor.close;
  DmFornecedores.Querytb_fornecedor.Sql.clear;

  DmFornecedores.Querytb_fornecedor.sql.text := 'select * from tb_fornecedor where nome like :nome';
  DmFornecedores.Querytb_fornecedor.ParamByName('nome').asstring := '%'+ EdtBusca.Text + '%';

  DmFornecedores.Querytb_fornecedor.open;

end;

procedure TFrmFornecedores.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  DmFornecedores.Querytb_fornecedor.Cancel;
end;

procedure TFrmFornecedores.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  try
  DmFornecedores.Querytb_fornecedor.Delete;

  finally
  ShowMessage('Forncedor excluído com sucesso');
  end;
end;

procedure TFrmFornecedores.BtnNovoClick(Sender: TObject);
begin
  inherited;

  if Dstb_fornecedores.Enabled = False then
     Dstb_fornecedores.Enabled := True;

  try
  DmFornecedores.Querytb_fornecedor.Insert;

  finally

  end;
end;

procedure TFrmFornecedores.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  try
  DmFornecedores.Querytb_fornecedor.Post;
  finally

  end;
end;



procedure TFrmFornecedores.FormCreate(Sender: TObject);
var
Estados : TArray<string>;
i : integer;
begin

 if DmFornecedores = nil then
    DmFornecedores := TDmFornecedores.Create(Self);

 Estados := TEstado.GetSiglasEstados;

 for i := 0 to High(Estados) do
 begin
   CbEstado.Items.Add(Estados[i]);
 end;


end;

end.
