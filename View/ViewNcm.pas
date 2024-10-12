unit ViewNcm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmPadraoCads, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uNcmDao, uEstados, ACBrBase,
  ACBrEnterTab, ConexaoDao, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmNcm = class(TFrmPadraoCadastros)
    Dstb_ncm: TDataSource;
    DbGridRegras: TDBGrid;
    lblRegrasNcm: TLabel;
    PnlCadastrosRegrasFiscais: TPanel;
    PnlRegrasFiscais: TPanel;
    PnlGridRegras: TPanel;
    DbCbUf: TDBComboBox;
    DbCbCst: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DbCbCstPis: TDBComboBox;
    DbCbCstCofins: TDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DbCbCstIpi: TDBComboBox;
    DbCheckDestacaICMS: TDBCheckBox;
    Splitter1: TSplitter;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    Dstb_regras_fiscais: TDataSource;
    ACBrEnterTab1: TACBrEnterTab;
    DbCbTipo: TDBComboBox;
    Label18: TLabel;
    Dstb_regras: TDataSource;
    QueryRegras: TZQuery;
    QueryRegrascodigo: TIntegerField;
    QueryRegrastipo: TWideStringField;
    QueryRegrascst: TWideStringField;
    QueryRegrasuf: TWideStringField;
    QueryRegrasaliq_icms_inter: TExtendedField;
    QueryRegrasaliq_icms_intra: TExtendedField;
    QueryRegrasdestaca_icms: TWideStringField;
    QueryRegrasdestaca_ipi: TWideStringField;
    QueryRegrasdestaca_st: TWideStringField;
    QueryRegrassoma_st_total_nf: TWideStringField;
    QueryRegrascst_pis: TWideStringField;
    QueryRegrascst_cofins: TWideStringField;
    QueryRegrascst_ipi: TWideStringField;
    QueryRegrasaliq_pis: TExtendedField;
    QueryRegrasaliq_cofins: TExtendedField;
    QueryRegrasiva: TExtendedField;
    QueryRegrasreducao_base: TExtendedField;
    QueryRegrasreducao_base_nfce: TExtendedField;
    QueryRegrasreducao_base_st: TExtendedField;
    QueryRegrasajusta_iva: TWideStringField;
    QueryRegrasutiliza_reducao_base: TWideStringField;
    QueryRegrasutiliza_reducao_base_st: TWideStringField;
    QueryRegrascodigo_ncm: TIntegerField;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure Dstb_ncmDataChange(Sender: TObject; Field: TField);
    procedure Dstb_regras_fiscaisDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNcm: TFrmNcm;

implementation

{$R *.dfm}

procedure TFrmNcm.BtnAlterarClick(Sender: TObject);
begin
  inherited;
if PageControl1.ActivePageIndex = TsConsulta.TabIndex then
   Dstb_ncm.DataSet.Edit
else
   Dstb_regras_fiscais.DataSet.Edit
end;

procedure TFrmNcm.BtnBuscarClick(Sender: TObject);
begin
  inherited;
  DmNcm.Querytb_ncms.Close;
  DmNcm.Querytb_ncms.SQL.Text := 'select * from tb_ncm where ncm like :ncm';
  DmNcm.Querytb_ncms.ParamByName('ncm').AsString := EdtBusca.Text + '%';
  DmNcm.Querytb_ncms.Open;
end;

procedure TFrmNcm.BtnCancelarClick(Sender: TObject);
begin
  inherited;

if PageControl1.ActivePageIndex = TsConsulta.TabIndex then
   Dstb_ncm.DataSet.Cancel
else
   Dstb_regras_fiscais.DataSet.Cancel;

DmNcm.Querytb_ncms.Connection.Rollback;
DmNcm.querytb_regrasfiscais.Connection.Rollback;
end;

procedure TFrmNcm.BtnExcluirClick(Sender: TObject);
begin
  inherited;

if PageControl1.ActivePageIndex = TsConsulta.TabIndex then
   Dstb_ncm.DataSet.Delete
else
   Dstb_regras_fiscais.DataSet.Delete;


DmNcm.Querytb_ncms.Connection.Commit;
DmNcm.querytb_regrasfiscais.Connection.Commit;
end;

procedure TFrmNcm.BtnNovoClick(Sender: TObject);
begin
  inherited;

if PageControl1.ActivePageIndex = TsConsulta.TabIndex then
   Dstb_ncm.DataSet.Insert
else
 begin
  if ((Dstb_ncm.DataSet.FieldByName('codigo').IsNull) or
     (Dstb_ncm.DataSet.FieldByName('codigo').AsInteger <=0)) then
  begin
     ShowMessage('Busque uma NCM primeiro');
  end
  else
      Dstb_regras_fiscais.DataSet.Insert;

 end;

//DmNcm.Querytb_ncms.Connection.Commit;
//DmNcm.querytb_regrasfiscais.Connection.Commit;
end;

procedure TFrmNcm.BtnSalvarClick(Sender: TObject);
var
 TextoComboBoxPis,TextoComboBoxCofins, TextoComboBoxIpi, TextoComboBoxCST,
 CST, CstPis, CstCofins, CstIpi : String;
 PosicaoSeparadorPis, PosicaoSeparadorCofins, PosicaoSeparadorIpi, PosicaoSeparadorCst : Byte;
begin
  inherited;

 TextoComboBoxPis    := DbCbCstPis.Text;
 TextoComboBoxCofins := DbCbCstCofins.Text;
 TextoComboBoxIpi    := DbCbCstIpi.Text;
 TextoComboBoxCST    := DbCbCst.Text;

 PosicaoSeparadorPis    := Pos(' ', TextoComboBoxPis);
 PosicaoSeparadorCofins := Pos(' ', TextoComboBoxCofins);
 PosicaoSeparadorIpi    := Pos(' ', TextoComboBoxIpi);
 PosicaoSeparadorCst    := Pos(' ', TextoComboBoxCST);

 CstPis    := Copy(TextoComboBoxPis,   1, PosicaoSeparadorPis -1);
 CstCofins := Copy(TextoComboBoxCofins,1, PosicaoSeparadorCofins -1);
 CstIpi    := Copy(TextoComboBoxIpi,   1, PosicaoSeparadorIpi -1);
 Cst       := Copy(TextoComboBoxCST,   1, PosicaoSeparadorCst -1);

 Dstb_regras_fiscais.DataSet.FieldByName('cst_pis').AsString    := CstPis;
 Dstb_regras_fiscais.DataSet.FieldByName('cst_cofins').AsString := CstCofins;
 Dstb_regras_fiscais.DataSet.FieldByName('cst_ipi').AsString    := CstIpi;
 Dstb_regras_fiscais.DataSet.FieldByName('cst').AsString        := CST;

 Dstb_regras_fiscais.DataSet.FieldByName('codigo_ncm').AsInteger := Dstb_ncm.DataSet.FieldByName('codigo').AsInteger;

 if DbCbTipo.Text = 'Venda' then
    Dstb_regras_fiscais.DataSet.FieldByName('tipo').AsString := 'V'
 else
    Dstb_regras_fiscais.DataSet.FieldByName('tipo').AsString := 'C';

Dstb_ncm.DataSet.Post;
Dstb_regras_fiscais.DataSet.Post;

DmNcm.Querytb_ncms.Connection.Commit;
DmNcm.querytb_regrasfiscais.Connection.Commit;

DbCbCstPis.Text    :=  Dstb_regras_fiscais.DataSet.FieldByName('cst_pis').AsString + ' - ' + Dstb_regras_fiscais.DataSet.FieldByName('descricao').AsString;
DbCbCstCofins.Text :=  Dstb_regras_fiscais.DataSet.FieldByName('cst_cofins').AsString + ' - ' + Dstb_regras_fiscais.DataSet.FieldByName('descricao').AsString;
DbCbCstIpi.Text    :=  Dstb_regras_fiscais.DataSet.FieldByName('cst_ipi').AsString + ' - ' + Dstb_regras_fiscais.DataSet.FieldByName('descricao').AsString;
DbCbCst.Text       :=  Dstb_regras_fiscais.DataSet.FieldByName('cst').AsString + ' - ' + Dstb_regras_fiscais.DataSet.FieldByName('descricao').AsString;


end;

procedure TFrmNcm.Dstb_ncmDataChange(Sender: TObject; Field: TField);
begin
  inherited;
 QueryRegras.Close;
 QueryRegras.ParamByName('codigo_ncm').AsInteger := Dstb_ncm.DataSet.FieldByName('codigo').AsInteger;
 QueryRegras.Open;

 DmNcm.Querytb_regrasfiscais.Close;
 DmNcm.Querytb_regrasfiscais.SQL.Clear;
 DmNcm.Querytb_regrasfiscais.SQL.Text := 'select * from tb_regras_fiscais where codigo_ncm = :codigo_ncm';
 DmNcm.Querytb_regrasfiscais.ParamByName('codigo_ncm').AsInteger := Dstb_ncm.DataSet.FieldByName('codigo').AsInteger;
 DmNcm.Querytb_regrasfiscais.Open;
end;

procedure TFrmNcm.Dstb_regras_fiscaisDataChange(Sender: TObject; Field: TField);
begin
  inherited;

if Dstb_regras_fiscais.DataSet.FieldByName('codigo').AsInteger > 0 then
begin

 DmNcm.Querytb_pis.Close;
 DmNcm.Querytb_cofins.Close;
 DmNcm.Querytb_ipi.Close;
 DmNcm.Querytb_cst.Close;


 DmNcm.Querytb_pis.SQL.Clear;
 DmNcm.Querytb_cofins.SQL.Clear;
 DmNcm.Querytb_cst.SQL.Clear;
 DmNcm.Querytb_cst.SQL.Clear;


 DmNcm.Querytb_pis.SQL.Text    := 'select * from tb_pis where cst_pis = :cst_pis';
 DmNcm.Querytb_cofins.SQL.Text := 'select * from tb_cofins where cst_cofins = :cst_cofins';
 DmNcm.Querytb_ipi.SQL.Text    := 'select * from tb_ipi where cst_ipi = :cst_ipi';
 DmNcm.Querytb_cst.SQL.Text    := 'select * from tb_cst where cst = :cst';

 DmNcm.Querytb_pis.ParamByName('cst_pis').AsString := DmNcm.Querytb_regrasfiscais.FieldByName('cst_pis').AsString;
 DmNcm.Querytb_cofins.ParamByName('cst_cofins').AsString := DmNcm.Querytb_regrasfiscais.FieldByName('cst_cofins').AsString;
 DmNcm.Querytb_ipi.ParamByName('cst_ipi').AsString := DmNcm.Querytb_regrasfiscais.FieldByName('cst_ipi').AsString;
 DmNcm.Querytb_cst.ParamByName('cst').AsString := DmNcm.Querytb_regrasfiscais.FieldByName('cst').AsString;


 DmNcm.Querytb_pis.Open;
 DmNcm.Querytb_cofins.Open;
 DmNcm.Querytb_ipi.Open;
 DmNcm.Querytb_cst.Open;

 DbCbCstPis.Text    :=  DmNcm.querytb_pis.FieldByName('cst_pis').AsString       + ' - ' + DmNcm.querytb_pis.FieldByName('descricao').AsString;
 DbCbCstCofins.Text :=  DmNcm.Querytb_cofins.FieldByName('cst_cofins').AsString + ' - ' + DmNcm.Querytb_cofins.FieldByName('descricao').AsString;
 DbCbCstIpi.Text    :=  DmNcm.Querytb_ipi.FieldByName('cst_ipi').AsString       + ' - ' + DmNcm.Querytb_ipi.FieldByName('descricao').AsString;
 DbCbCst.Text       :=  DmNcm.Querytb_cst.FieldByName('cst').AsString           + ' - ' + DmNcm.Querytb_cst.FieldByName('descricao').AsString;


 DmNcm.Querytb_pis.Close;
 DmNcm.Querytb_cofins.Close;
 DmNcm.Querytb_ipi.Close;
 DmNcm.Querytb_cst.Close;
end;

end;

procedure TFrmNcm.FormShow(Sender: TObject);
Var
Estados : TArray<String>;
i : Byte;
begin
  inherited;

 if DmNcm = nil then
    DmNcm := TDmNcm.Create(Self);


 Estados := TEstado.GetSiglasEstados;

 DmNcm.Querytb_ncms.Open;
 DmNcm.Querytb_regrasfiscais.Open;


 DmNcm.querytb_pis.open;
 while not (DmNcm.querytb_pis.eof) do
 begin
   DbCbCstPis.Items.Add(DmNcm.querytb_pis.fieldbyname('cst_pis').asstring + ' - ' + DmNcm.querytb_pis.FieldByName('descricao').asstring);
   DmNcm.querytb_pis.next;
 end;

 DmNcm.Querytb_cofins.open;
 while not (DmNcm.Querytb_cofins.eof) do
 begin
   DbCbCstCofins.Items.Add(DmNcm.Querytb_cofins.fieldbyname('cst_cofins').asstring + ' - ' + DmNcm.Querytb_cofins.FieldByName('descricao').asstring);
   DmNcm.Querytb_cofins.next;
 end;


 DmNcm.querytb_ipi.open;
 while not (DmNcm.querytb_ipi.eof) do
 begin
   DbCbCstIpi.Items.Add(DmNcm.querytb_ipi.fieldbyname('cst_ipi').asstring + ' - ' + DmNcm.querytb_ipi.FieldByName('descricao').asstring);
   DmNcm.querytb_ipi.next;
 end;


 DmNcm.Querytb_cst.Open;
 while not (DmNcm.Querytb_cst.Eof) do
 begin
   DbCbCst.Items.Add(DmNcm.Querytb_cst.FieldByName('cst').AsString + ' - ' + DmNcm.Querytb_cst.FieldByName('descricao').AsString);
   DmNcm.Querytb_cst.Next;
 end;

 for I := 0 to High(Estados) do
 begin
   DbCbUf.Items.Add(Estados[i]);
 end;



end;

end.
