unit ViewConfigNfe2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.Buttons, uConfigNFeDao, uEstados, FolderDialog,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ConexaoDao, JvExStdCtrls,
  JvCombobox, JvDBCombobox, Datasnap.DSHTTP, ACBrBase, ACBrDFe, ACBrNFe;

type
  TFrmConfigNfe2 = class(TForm)
    PnlBody: TPanel;
    PnlBotoes: TPanel;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnAlterar: TBitBtn;
    PageControl1: TPageControl;
    TsConsulta: TTabSheet;
    DBGrid1: TDBGrid;
    TsCadastro: TTabSheet;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CbEmpresa: TComboBox;
    DbAtivo: TDBCheckBox;
    CbEstados: TDBComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DbSSL: TDBComboBox;
    DbSSLHTTP: TDBComboBox;
    DbXmlSign: TDBComboBox;
    DbVersaoDf: TDBComboBox;
    DbSSLCrypt: TDBComboBox;
    DbCertificado: TDBEdit;
    Impressão: TTabSheet;
    Label14: TLabel;
    DBRgTipoImpressao: TDBRadioGroup;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Pastas: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DbEdtPastaXml: TDBEdit;
    DbEdtPastaCanceladas: TDBEdit;
    DbEdtInutilizadas: TDBEdit;
    DbEdtXmlCCe: TDBEdit;
    DbEdtXmlDpec: TDBEdit;
    PnlHeader: TPanel;
    ImgNfe: TImage;
    Dstb_configNfe: TDataSource;
    BtnPastaXml: TBitBtn;
    BtnXmlCanceladas: TBitBtn;
    BtnXmlCCe: TBitBtn;
    BtnXmlDpec: TBitBtn;
    BtnInutilizadas: TBitBtn;
    FileOpenDialogPastas: TFileOpenDialog;
    QueryEmpresas: TZQuery;
    QueryEmpresasEmpresas: TWideStringField;
    JvDBComboBox1: TJvDBComboBox;
    QueryEmpresascodigo: TIntegerField;
    BtnCertificado: TBitBtn;
    ACBrNFe1: TACBrNFe;
    DbSenha: TDBEdit;
    Label20: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnPastaXmlClick(Sender: TObject);
    procedure BtnXmlCanceladasClick(Sender: TObject);
    procedure BtnXmlDpecClick(Sender: TObject);
    procedure BtnInutilizadasClick(Sender: TObject);
    procedure BtnXmlCCeClick(Sender: TObject);
    procedure Dstb_configNfeDataChange(Sender: TObject; Field: TField);
    procedure BtnCertificadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigNfe2: TFrmConfigNfe2;

implementation

{$R *.dfm}

procedure TFrmConfigNfe2.BtnPastaXmlClick(Sender: TObject);
begin
 FileOpenDialogPastas.Execute;
 DbEdtPastaXml.SetFocus;
 DbEdtPastaXml.Text := FileOpenDialogPastas.FileName;
end;

procedure TFrmConfigNfe2.BtnAlterarClick(Sender: TObject);
begin

if PageControl1.ActivePage = TsConsulta then
   PageControl1.ActivePage := TSCadastro;

try
  Dstb_configNfe.DataSet.Edit;
finally
  TsCadastro.Enabled  := True;
  BtnNovo.Enabled     := False;
  BtnSalvar.Enabled   := True;
  BtnCancelar.Enabled := True;
  BtnAlterar.Enabled  := False;
  BtnExcluir.Enabled  := False;
end;

end;

procedure TFrmConfigNfe2.BtnCancelarClick(Sender: TObject);
begin

try
  Dstb_configNfe.DataSet.Cancel;
finally
  TsCadastro.Enabled := False;
  BtnNovo.Enabled     := True;
  BtnSalvar.Enabled   := False;
  BtnCancelar.Enabled := False;
  BtnAlterar.Enabled  := True;
  BtnExcluir.Enabled  := True;
end;


end;

procedure TFrmConfigNfe2.BtnCertificadoClick(Sender: TObject);
begin
 DbCertificado.Text := ACBrNFe1.SSL.SelecionarCertificado;
end;

procedure TFrmConfigNfe2.BtnExcluirClick(Sender: TObject);
begin

try
  Dstb_configNfe.DataSet.Delete;
finally
  BtnNovo.Enabled     := True;
  BtnSalvar.Enabled   := False;
  BtnCancelar.Enabled := False;
  BtnAlterar.Enabled  := True;
  BtnExcluir.Enabled  := True;
end;


end;

procedure TFrmConfigNfe2.BtnInutilizadasClick(Sender: TObject);
begin
 FileOpenDialogPastas.Execute;
 DbEdtInutilizadas.SetFocus;
 DbEdtInutilizadas.Text := FileOpenDialogPastas.FileName;
end;

procedure TFrmConfigNfe2.BtnNovoClick(Sender: TObject);
begin
if PageControl1.ActivePage = TsConsulta then
   PageControl1.ActivePage := TSCadastro;

try
  Dstb_configNfe.DataSet.Insert;
finally
  TsCadastro.Enabled := True;
  BtnNovo.Enabled     := False;
  BtnSalvar.Enabled   := True;
  BtnCancelar.Enabled := True;
  BtnAlterar.Enabled  := False;
  BtnExcluir.Enabled  := False;
end;


end;

procedure TFrmConfigNfe2.BtnSalvarClick(Sender: TObject);
var
 cod_empresa : Integer;
begin

try
  cod_empresa := strtoint(trim(copy(CbEmpresa.Text, 1, Pos('-', CbEmpresa.Text) -1 )));

  Dstb_configNfe.DataSet.FieldByName('empresa').AsInteger := cod_empresa;


  Dstb_configNfe.DataSet.Post;
finally
  TsCadastro.Enabled := False;
  BtnNovo.Enabled     := True;
  BtnSalvar.Enabled   := False;
  BtnCancelar.Enabled := False;
  BtnAlterar.Enabled  := True;
  BtnExcluir.Enabled  := True;
  DmConfigNfe.Querytb_config_nfe.Connection.Commit;
end;


end;

procedure TFrmConfigNfe2.BtnXmlCanceladasClick(Sender: TObject);
begin
 FileOpenDialogPastas.Execute;
 DbEdtPastaCanceladas.SetFocus;
 DbEdtPastaCanceladas.Text := FileOpenDialogPastas.FileName;
end;

procedure TFrmConfigNfe2.BtnXmlCCeClick(Sender: TObject);
begin
 FileOpenDialogPastas.Execute;
 DbEdtXmlCCe.SetFocus;
 DbEdtXmlCCe.Text := FileOpenDialogPastas.FileName;
end;

procedure TFrmConfigNfe2.BtnXmlDpecClick(Sender: TObject);
begin
 FileOpenDialogPastas.Execute;
 DbEdtXmlDpec.SetFocus;
 DbEdtXmlDpec.Text := FileOpenDialogPastas.FileName;
end;

procedure TFrmConfigNfe2.Dstb_configNfeDataChange(Sender: TObject;
  Field: TField);
var
 Empresa : String;
begin

  QueryEmpresas.Close;
  QueryEmpresas.Open;

  QueryEmpresas.First;
  while not(QueryEmpresas.Eof) do
  begin

    if ((Dstb_configNfe.DataSet.FieldByName('empresa').AsInteger > 0) and (Dstb_configNfe.DataSet.FieldByName('empresa').AsInteger  = QueryEmpresascodigo.Value)) then
     begin
       Empresa := QueryEmpresasEmpresas.Value;
       CbEmpresa.Text := Empresa;
     end;

    QueryEmpresas.Next;
  end;


end;

procedure TFrmConfigNfe2.FormShow(Sender: TObject);
var
Estados : TArray<String>;
LEstados : TEstado;
i : integer;

begin

Estados := LEstados.GetSiglasEstados;

for i:= 0 to High(Estados) do
  CbEstados.Items.Add(Estados[i]);

if DmConfigNfe = nil then
   DmConfigNfe := TDmConfigNfe.Create(Self);

DmConfigNfe.Querytb_config_nfe.Open;

QueryEmpresas.Close;
QueryEmpresas.Open;

while not (QueryEmpresas.Eof) do
begin
 CbEmpresa.Items.Add(QueryEmpresas.FieldByName('empresas').AsString);
 QueryEmpresas.Next;
end;


DmConfigNfe.Querytb_config_nfe.Close;
DmConfigNfe.Querytb_config_nfe.SQL.Clear;
DmConfigNfe.Querytb_config_nfe.SQL.Text := 'Select * from tb_config_nfe';
DmConfigNfe.Querytb_config_nfe.Open;



end;





end.
