unit ViewNatOperacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, JvExStdCtrls, JvCombobox, JvDBCombobox, ConexaoDao, uNatOperacaoDao,
  Vcl.ComCtrls, ACBrBase, ACBrEnterTab;

type
  TFrmNatOperacao = class(TFrmBase)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    PnlGridNatOperacoes: TPanel;
    DbGridNaturezas: TDBGrid;
    Splitter1: TSplitter;
    PnlGridRegras: TPanel;
    DbGridRegras: TDBGridEh;
    BtnAlterar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    EdtNomeNat: TDBEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    QueryTiposMovimentos: TZQuery;
    QueryEmpresas: TZQuery;
    CbTipoMovimentos: TJvDBComboBox;
    DsTiposMovimentos: TDataSource;
    QueryTiposMovimentoscodigo: TIntegerField;
    QueryTiposMovimentosdescricao: TWideStringField;
    QueryEmpresascodigo: TIntegerField;
    QueryEmpresasrazao_social: TWideStringField;
    CbEmpresas: TJvDBComboBox;
    DsEmpresas: TDataSource;
    Dstb_natureza_operacao: TDataSource;
    TabSheet: TPageControl;
    TsNaturezas: TTabSheet;
    TsRegras: TTabSheet;
    Panel3: TPanel;
    EdtNaturezaOperacao: TDBEdit;
    PnlRegrasPendentes: TPanel;
    PnlRegrasFeitas: TPanel;
    DbGridCstsPendentes: TDBGrid;
    PnlOpcoesRegras: TPanel;
    DsCstsPendentes: TDataSource;
    EdtCfop: TDBEdit;
    EdtCfopInter: TDBEdit;
    EdtCfopExt: TDBEdit;
    Splitter2: TSplitter;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CheckBoxDestacaIcms: TDBCheckBox;
    CheckBoxDestacaIpi: TDBCheckBox;
    CheckBoxDestacaSt: TDBCheckBox;
    CheckBoxSomaSt: TDBCheckBox;
    CbCstPis: TJvDBComboBox;
    CbCstCofins: TJvDBComboBox;
    EdtAliqPis: TDBEdit;
    EdtAliqCofins: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CbCstFixa: TJvDBComboBox;
    Label11: TLabel;
    BtnVincularCst: TBitBtn;
    QueryCst: TZQuery;
    QueryCstPis: TZQuery;
    QueryCstCofins: TZQuery;
    QueryCstIpi: TZQuery;
    QueryCstCST: TWideStringField;
    QueryCstcodigo: TIntegerField;
    QueryCstPisCST: TWideStringField;
    QueryCstPiscodigo: TIntegerField;
    QueryCstCofinsCST: TWideStringField;
    QueryCstCofinscodigo: TIntegerField;
    QueryCstIpiCST: TWideStringField;
    QueryCstIpicodigo: TIntegerField;
    CbCstIpi: TJvDBComboBox;
    Label12: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    QueryCstsPendentes: TZQuery;
    QueryCstsPendentescodigo: TIntegerField;
    QueryCstsPendentescst: TWideStringField;
    QueryCstsPendentesdescricao: TWideStringField;
    QueryCstVinculadas: TZQuery;
    QueryCstVinculadascodigo_cst_icms: TIntegerField;
    CheckCstFixa: TCheckBox;
    DBGridEhRegras: TDBGridEh;
    QueryRegras: TZQuery;
    DsRegras: TDataSource;
    QueryRegrascst: TWideStringField;
    QueryRegrascst_pis: TWideStringField;
    QueryRegrascst_cofins: TWideStringField;
    QueryRegrascst_ipi: TWideStringField;
    QueryRegrascodigo: TIntegerField;
    QueryRegrascodigo_natureza_operacao: TIntegerField;
    QueryRegrascodigo_cst_icms: TIntegerField;
    QueryRegrascodigo_cst_ipi: TIntegerField;
    QueryRegrascodigo_cst_pis: TIntegerField;
    QueryRegrascodigo_cst_cofins: TIntegerField;
    QueryRegrasaliq_pis: TExtendedField;
    QueryRegrasaliq_cofins: TExtendedField;
    QueryRegrasdestaca_icms: TWideStringField;
    QueryRegrasdestaca_st: TWideStringField;
    QueryRegrassoma_st_total_nf: TWideStringField;
    QueryRegrasdestaca_ipi: TWideStringField;
    QueryRegrascfop: TWideStringField;
    QueryRegrascfop_inter: TWideStringField;
    QueryRegrascfop_ext: TWideStringField;
    QueryRegrascst_fixa: TIntegerField;
    BtnAlterarRegra: TBitBtn;
    BtnSalvarRegra: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure CbTipoMovimentosChange(Sender: TObject);
    procedure BtnVincularCstClick(Sender: TObject);
    procedure DbGridCstsPendentesEnter(Sender: TObject);
    procedure DbGridCstsPendentesExit(Sender: TObject);
    procedure DbGridCstsPendentesKeyPress(Sender: TObject; var Key: Char);
    procedure CheckCstFixaClick(Sender: TObject);
    procedure Dstb_natureza_operacaoDataChange(Sender: TObject; Field: TField);
    procedure BtnSalvarRegraClick(Sender: TObject);
    procedure BtnAlterarRegraClick(Sender: TObject);
    procedure DsRegrasDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNatOperacao: TFrmNatOperacao;

implementation

{$R *.dfm}



procedure TFrmNatOperacao.BtnVincularCstClick(Sender: TObject);
var
QueryInsereRegra : TZQuery;
begin
  inherited;

  QueryInsereRegra := TZQuery.Create(Self);

  QueryInsereRegra.Connection := ConexaoDao.DmConexao.ZConnection;


  QueryInsereRegra.SQL.Text := ' INSERT INTO tb_regras_naturezas  ' +
            ' (codigo_natureza_operacao, codigo_cst_icms ,codigo_cst_ipi, codigo_cst_pis,  ' +
            ' codigo_cst_cofins, aliq_pis, aliq_cofins, destaca_icms, destaca_st,          ' +
            ' soma_st_total_nf, destaca_ipi, cfop, cfop_inter, cfop_ext, cst_fixa)         ' +
            ' VALUES ' +
            '  ( ' +
            ':codigo_natureza_operacao, ' +
            ':codigo_cst_icms, '  +
            ':codigo_cst_ipi,  '  +
            ':codigo_cst_pis,  '  +
		        ':codigo_cst_cofins, '+
            ':aliq_pis, '         +
            ':aliq_cofins, '      +
            ':destaca_icms, '     +
            ':destaca_st,   '     +
		        ':soma_st_total_nf, ' +
            ':destaca_ipi, '      +
            ':cfop, '             +
		        ':cfop_inter, '       +
            ':cfop_ext,   '       +
		        ':cst_fixa)';

  QueryInsereRegra.ParamByName('codigo_natureza_operacao').AsInteger :=  Dstb_natureza_operacao.DataSet.FieldByName('codigo').AsInteger;
  QueryInsereRegra.ParamByName('codigo_cst_icms').AsInteger := DsCstsPendentes.DataSet.FieldByName('codigo').AsInteger;
  QueryInsereRegra.ParamByName('codigo_cst_ipi').AsInteger := StrtoInt(CbCstIpi.Values[CbCstIpi.ItemIndex]);
  QueryInsereRegra.ParamByName('codigo_cst_pis').AsInteger := StrtoInt(CbCstPis.Values[CbCstPis.ItemIndex]);
  QueryInsereRegra.ParamByName('codigo_cst_cofins').AsInteger := StrtoInt(CbCstCofins.Values[CbCstCofins.ItemIndex]);

  if VarIsEmpty(EdtAliqPis.Text)  then
   QueryInsereRegra.ParamByName('aliq_pis').AsFloat := 0
  else
   QueryInsereRegra.ParamByName('aliq_pis').AsFloat := StrToFloat(EdtAliqPis.Text);

  if VarIsEmpty(EdtAliqCofins.Text) then
   QueryInsereRegra.ParamByName('aliq_cofins').AsFloat := 0
  else
   QueryInsereRegra.ParamByName('aliq_cofins').AsFloat := StrToFloat(EdtAliqCofins.Text);

  if CheckBoxDestacaIcms.Checked = True then
   QueryInsereRegra.ParamByName('destaca_icms').AsString := 'S'
  else
   QueryInsereRegra.ParamByName('destaca_icms').AsString := 'N';

  if CheckBoxDestacaSt.Checked = True then
    QueryInsereRegra.ParamByName('destaca_st').AsString := 'S'
  else
    QueryInsereRegra.ParamByName('destaca_st').AsString := 'N';

  if CheckBoxDestacaIpi.Checked = True then
    QueryInsereRegra.ParamByName('destaca_ipi').AsString := 'S'
  else
    QueryInsereRegra.ParamByName('destaca_ipi').AsString := 'N';

  if CheckBoxSomaSt.Checked = True then
    QueryInsereRegra.ParamByName('soma_st_total_nf').AsString := 'S'
  else
    QueryInsereRegra.ParamByName('soma_st_total_nf').AsString := 'N';

  QueryInsereRegra.ParamByName('cfop').AsString := EdtCfop.Text;
  QueryInsereRegra.ParamByName('cfop_inter').AsString := EdtCfopInter.Text;
  QueryInsereRegra.ParamByName('cfop_ext').AsString := EdtCfopExt.Text;

  if CheckCstFixa.Checked then
     QueryInsereRegra.ParamByName('cst_fixa').AsInteger := StrtoInt(CbCstFixa.Values[CbCstFixa.ItemIndex]);

  QueryInsereRegra.ExecSQL;
  QueryInsereRegra.Connection.Commit;

  ShowMessage('CST VINCULADA COM SUCESSO');

  QueryRegras.Refresh;
  QueryCstsPendentes.Refresh;

end;

procedure TFrmNatOperacao.BtnAlterarClick(Sender: TObject);
begin
  inherited;

Dstb_natureza_operacao.DataSet.Edit;

BtnAlterar.Enabled  := False;
BtnNovo.Enabled     := False;
BtnCancelar.Enabled := True;
BtnExcluir.Enabled  := False;
BtnSalvar.Enabled   := True;

end;

procedure TFrmNatOperacao.BtnAlterarRegraClick(Sender: TObject);
begin
  inherited;
DbGridCstsPendentes.Enabled := False;
DbGridEhRegras.Enabled := False;
BtnSalvarRegra.Enabled  := True;
BtnAlterarRegra.Enabled := False;
BtnVincularCst.Enabled  := False;
end;

procedure TFrmNatOperacao.BtnCancelarClick(Sender: TObject);
begin
  inherited;

Dstb_natureza_operacao.DataSet.Cancel;

BtnAlterar.Enabled  := True;
BtnNovo.Enabled     := True;
BtnCancelar.Enabled := False;
BtnExcluir.Enabled  := True;
BtnSalvar.Enabled   := False;

end;

procedure TFrmNatOperacao.BtnNovoClick(Sender: TObject);
begin
  inherited;

EdtNomeNat.SetFocus;
Dstb_natureza_operacao.DataSet.Insert;

BtnAlterar.Enabled  := False;
BtnNovo.Enabled     := False;
BtnCancelar.Enabled := True;
BtnExcluir.Enabled  := False;
BtnSalvar.Enabled   := True;

end;

procedure TFrmNatOperacao.BtnSalvarClick(Sender: TObject);
begin
  inherited;


Dstb_natureza_operacao.DataSet.FieldByName('codigo_tipo_movimento').AsInteger := StrtoInt(CbTipoMovimentos.Values[CbTipoMovimentos.ItemIndex]);
Dstb_natureza_operacao.DataSet.FieldByName('codigo_empresa').AsInteger := StrtoInt(CbEmpresas.Values[CbEmpresas.ItemIndex]);


Dstb_natureza_operacao.DataSet.Post;

BtnAlterar.Enabled  := True;
BtnNovo.Enabled     := True;
BtnCancelar.Enabled := False;
BtnExcluir.Enabled  := True;
BtnSalvar.Enabled   := False;

DmNaturezaOperacao.Querytb_natureza_operacao.Connection.Commit;

end;

procedure TFrmNatOperacao.BtnSalvarRegraClick(Sender: TObject);
var
QueryUpdateRegras : TZQUery;

begin
  inherited;
DbGridCstsPendentes.Enabled := True;

QueryUpdateRegras := TZQuery.Create(Self);

QueryUpdateRegras.Connection := ConexaoDao.DmConexao.ZConnection;
QueryUpdateRegras.SQL.Text := ' UPDATE tb_regras_naturezas '  +
           ' set '  +
		       ' codigo_cst_ipi = :codigo_cst_ipi,   '                   +
           ' codigo_cst_pis = :codigo_cst_pis,   '                   +
		       ' codigo_cst_cofins = :codigo_cst_cofins, '               +
           ' aliq_pis = :aliq_pis, '                                 +
           ' aliq_cofins = :aliq_cofins, '                           +
           ' destaca_icms = :destaca_icms, '                         +
           ' destaca_st = :destaca_st, '                             +
    		   ' soma_st_total_nf = :soma_st_total_nf, '                 +
           ' destaca_ipi = :destaca_ipi,'                            +
           ' cfop = :cfop,  '                                        +
		       ' cfop_inter = :cfop_inter,  '                            +
           ' cfop_ext = :cfop_ext,      '                            +
           ' cst_fixa = :cst_fixa       '                            +
		       '	where codigo = :codigo;   ';

  QueryUpdateRegras.ParamByName('codigo_cst_ipi').AsInteger := StrtoInt(CbCstIpi.Values[CbCstIpi.ItemIndex]);
  QueryUpdateRegras.ParamByName('codigo_cst_pis').AsInteger := StrtoInt(CbCstPis.Values[CbCstPis.ItemIndex]);
  QueryUpdateRegras.ParamByName('codigo_cst_cofins').AsInteger := StrtoInt(CbCstCofins.Values[CbCstCofins.ItemIndex]);
  QueryUpdateRegras.ParamByName('aliq_pis').AsFloat := StrToFloat(EdtAliqPis.Text);
  QueryUpdateRegras.ParamByName('aliq_cofins').AsFloat := StrToFloat(EdtAliqCofins.Text);

  if CheckBoxDestacaIcms.Checked = True then
   QueryUpdateRegras.ParamByName('destaca_icms').AsString := 'S'
  else
   QueryUpdateRegras.ParamByName('destaca_icms').AsString := 'N';

  if CheckBoxDestacaSt.Checked = True then
    QueryUpdateRegras.ParamByName('destaca_st').AsString := 'S'
  else
    QueryUpdateRegras.ParamByName('destaca_st').AsString := 'N';

  if CheckBoxDestacaIpi.Checked = True then
    QueryUpdateRegras.ParamByName('destaca_ipi').AsString := 'S'
  else
    QueryUpdateRegras.ParamByName('destaca_ipi').AsString := 'N';

  if CheckBoxSomaSt.Checked = True then
    QueryUpdateRegras.ParamByName('soma_st_total_nf').AsString := 'S'
  else
    QueryUpdateRegras.ParamByName('soma_st_total_nf').AsString := 'N';

  QueryUpdateRegras.ParamByName('cfop').AsString := EdtCfop.Text;
  QueryUpdateRegras.ParamByName('cfop_inter').AsString := EdtCfopInter.Text;
  QueryUpdateRegras.ParamByName('cfop_ext').AsString := EdtCfopExt.Text;

  if CheckCstFixa.Checked then
     QueryUpdateRegras.ParamByName('cst_fixa').AsInteger := StrtoInt(CbCstFixa.Values[CbCstFixa.ItemIndex]);

  QueryUpdateRegras.ParamByName('codigo').AsInteger := DsRegras.DataSet.FieldByName('codigo').AsInteger;

  QueryUpdateRegras.ExecSQL;
  QueryUpdateRegras.Connection.Commit;

  MessageDlg('REGRA ALTERADA COM SUCESSO ', TMsgDlgType.mtInformation, mbOKCancel, 0);

  BtnSalvarRegra.Enabled := False;
  BtnAlterarRegra.Enabled := True;
  QueryRegras.Close;
  QueryRegras.Open;
  DbGridEhRegras.Enabled := True;


end;

procedure TFrmNatOperacao.CbTipoMovimentosChange(Sender: TObject);
begin
  inherited;
  DmNaturezaOperacao.Querytb_natureza_operacao.Close;
  DmNaturezaOperacao.Querytb_natureza_operacao.SQL.Clear;

  DmNaturezaOperacao.Querytb_natureza_operacao.SQL.Text := 'select * from tb_natureza_operacao where codigo_tipo_movimento = :cod_tipo_movimento';
  DmNaturezaOperacao.Querytb_natureza_operacao.ParamByName('cod_tipo_movimento').AsInteger := StrToInt(CbTipoMovimentos.Values[CbTipoMovimentos.ItemIndex]);
  DmNaturezaOperacao.Querytb_natureza_operacao.Open;
end;

procedure TFrmNatOperacao.CheckCstFixaClick(Sender: TObject);
begin
  inherited;
 CbCstFixa.Enabled := CheckCstFixa.Checked;
end;

procedure TFrmNatOperacao.DbGridCstsPendentesEnter(Sender: TObject);
begin
  inherited;
 ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmNatOperacao.DbGridCstsPendentesExit(Sender: TObject);
begin
  inherited;
 ACBrEnterTab1.EnterAsTab := True;
 DmNaturezaOperacao.Querytb_regras_natureza.Open;

 // DsRegrasNaturezas.DataSet.Insert;
end;

procedure TFrmNatOperacao.DbGridCstsPendentesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if key = #13 then
  EdtCfop.SetFocus;
end;

procedure TFrmNatOperacao.DsRegrasDataChange(Sender: TObject; Field: TField);
begin
  inherited;
{EdtCfop.Text      := QueryRegras.FieldByName('cfop').AsString;
EdtCfopInter.Text := QueryRegras.FieldByName('cfop_inter').AsString;
EdtCfopExt.Text   := QueryRegras.FieldByName('cfop_ext').AsString;
CbCstPis.ItemIndex := Locate()
 }
end;

procedure TFrmNatOperacao.Dstb_natureza_operacaoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
QueryRegras.Close;
QueryRegras.ParamByName('codigo_natureza_operacao').AsInteger := Dstb_natureza_operacao.DataSet.FieldByName('codigo').AsInteger;
QueryRegras.Open;
end;

procedure TFrmNatOperacao.FormShow(Sender: TObject);
var
lCodigosCst : TArray<Integer>;
i : integer;
Sql : String;
begin
inherited;


  if DmNaturezaOperacao = nil then
     DmNaturezaOperacao := TDmNaturezaOperacao.Create(self);

  DmNaturezaOperacao.Querytb_natureza_operacao.Open;

  QueryTiposMovimentos.Close;
  QueryTiposMovimentos.Open;

  QueryTiposMovimentos.First;

  while not (QueryTiposMovimentos.Eof) do
  begin
     CbTipoMovimentos.Items.Add(QueryTiposMovimentos.FieldByName('descricao').AsString);
     CbTipoMovimentos.Values.Add(QueryTiposMovimentos.FieldByName('codigo').AsString);
     QueryTiposMovimentos.Next
  end;


  QueryEmpresas.Close;
  QueryEmpresas.Open;

  QueryEmpresas.First;

  while not(QueryEmpresas.Eof) do
  begin
     CbEmpresas.Items.Add(QueryEmpresas.FieldByName('razao_social').AsString);
     CbEmpresas.Values.Add(QueryEmpresas.FieldByName('codigo').AsString);

     QueryEmpresas.Next;
  end;

  CbTipoMovimentos.ItemIndex := 0;
  CbEmpresas.ItemIndex := 0;

  DmNaturezaOperacao.Querytb_natureza_operacao.Close;
  DmNaturezaOperacao.Querytb_natureza_operacao.SQL.Clear;

  DmNaturezaOperacao.Querytb_natureza_operacao.SQL.Text := 'select * from tb_natureza_operacao where codigo_tipo_movimento = :cod_tipo_movimento';
  DmNaturezaOperacao.Querytb_natureza_operacao.ParamByName('cod_tipo_movimento').AsInteger := StrToInt(CbTipoMovimentos.Values[CbTipoMovimentos.ItemIndex]);
  DmNaturezaOperacao.Querytb_natureza_operacao.Open;



  QueryCst.Close;
  QueryCst.Open;
  QueryCst.First;

  while not (QueryCst.Eof) do
  begin
     CbCstFixa.Items.Add(QueryCst.FieldByName('CST').AsString) ;
     CbCstFixa.Values.Add(QueryCst.FieldByName('codigo').AsString);
     QueryCst.Next;
  end;



  QueryCstPis.Close;
  QueryCstPis.Open;
  QueryCstPis.First;

  while not (QueryCstPis.Eof) do
  begin
     CbCstPis.Items.Add(QueryCstPis.FieldByName('CST').AsString) ;
     CbCstPis.Values.Add(QueryCstPis.FieldByName('codigo').AsString);
     QueryCstPis.Next;
  end;



  QueryCstCofins.Close;
  QueryCstCofins.Open;
  QueryCstCofins.First;

  while not (QueryCstCofins.Eof) do
  begin
     CbCstCofins.Items.Add(QueryCstCofins.FieldByName('CST').AsString) ;
     CbCstCofins.Values.Add(QueryCstCofins.FieldByName('codigo').AsString);
     QueryCstCofins.Next;
  end;





  QueryCstIpi.Close;
  QueryCstIpi.Open;
  QueryCstIpi.First;

  while not (QueryCstIpi.Eof) do
  begin
     CbCstIpi.Items.Add(QueryCstIpi.FieldByName('CST').AsString) ;
     CbCstIpi.Values.Add(QueryCstIpi.FieldByName('codigo').AsString);
     QueryCstIpi.Next;
  end;




  QueryCstVinculadas.Close;
  QueryCstVinculadas.Open;
  QueryCstVinculadas.First;

  if QueryCstVinculadas.IsEmpty then
  begin
    QueryCstsPendentes.Close;
    QueryCstsPendentes.SQL.Text := 'select * from tb_cst c';
    QueryCstsPendentes.Open;
  end

  else
  begin

    SetLength(lCodigosCst, QueryCstVinculadas.RecordCount);
    i := 0;
    while not (QueryCstVinculadas.Eof) do
    begin
      lCodigosCst[i] := QueryCstVinculadas.FieldByName('codigo_cst_icms').AsInteger;
      QueryCstVinculadas.Next;
      inc(i);
    end;
    Sql := 'select * from tb_cst c where c.codigo not in ( ';
    QueryCstsPendentes.Close;
    QueryCstsPendentes.SQL.Clear;

    i := 0;
    for I := 0 to High(lCodigosCst) do
    begin
      Sql := Sql + inttoStr(lCodigosCst[i]);

     if i <> High(lCodigosCst) then
     begin
       Sql := Sql + ',';
     end;

    end;

    Sql := Sql + ')';
    QueryCstsPendentes.SQL.Text := SQL;
    QueryCstsPendentes.Open;

  end;

  QueryCstsPendentes.Close;
  QueryCstsPendentes.Open;


end;

end.
