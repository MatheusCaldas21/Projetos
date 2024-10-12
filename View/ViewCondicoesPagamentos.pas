unit ViewCondicoesPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, uCondicoesPagamentosDao,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, ZDataSet, ConexaoDao,
  ACBrBase, ACBrEnterTab;

type
  TFrmCondPagamentos = class(TFrmBase)
    PnlBotoes: TPanel;
    PgControlCondicoes: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Dstb_condicoes_padrao: TDataSource;
    Dstb_condicoes_pagamento: TDataSource;
    BtnAlterar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    lblSequencia: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    DbCbContaCorrente: TDBComboBox;
    ACBrEnterTab1: TACBrEnterTab;
    DbCbTipo: TDBComboBox;
    DbcbBancos: TDBComboBox;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Novo();
    procedure Alterar();
    procedure Excluir();
    procedure Salvar();
    procedure Cancelar();
    procedure FormShow(Sender: TObject);
    procedure Dstb_condicoes_padraoDataChange(Sender: TObject; Field: TField);
    procedure DesabilitaBotoes();
    procedure HabilitaBotoes();
    procedure DbCbContaCorrenteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
   // DmCondPagto : TDmCondicoesPagamentos;
  public
    { Public declarations }
  end;

var
  FrmCondPagamentos: TFrmCondPagamentos;

implementation


{$R *.dfm}

procedure TFrmCondPagamentos.BtnAlterarClick(Sender: TObject);
begin
  inherited;
 if PgControlCondicoes.ActivePageIndex = 0 then
    Dstb_condicoes_padrao.DataSet.Edit;
 if PgControlCondicoes.ActivePageIndex = 1 then
 begin
    HabilitaBotoes();
    Dstb_condicoes_pagamento.DataSet.Edit;
 end;

 Alterar();
end;

procedure TFrmCondPagamentos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
 if PgControlCondicoes.ActivePageIndex = 0 then
    Dstb_condicoes_padrao.DataSet.Cancel;
 if PgControlCondicoes.ActivePageIndex = 1 then
 begin
    DesabilitaBotoes();
    Dstb_condicoes_pagamento.DataSet.Cancel;
 end;
 Cancelar();
end;

procedure TFrmCondPagamentos.BtnExcluirClick(Sender: TObject);
begin
  inherited;
 if PgControlCondicoes.ActivePageIndex = 0 then
    Dstb_condicoes_padrao.DataSet.Delete;
 if PgControlCondicoes.ActivePageIndex = 1 then
  begin
    DesabilitaBotoes;
    Dstb_condicoes_pagamento.DataSet.Delete;
  end;
 Excluir();
end;

procedure TFrmCondPagamentos.BtnNovoClick(Sender: TObject);
begin
  inherited;
 if PgControlCondicoes.ActivePageIndex = 0 then
   begin
    Dstb_condicoes_padrao.DataSet.Insert;
    DBEdit1.SetFocus;
   end;
 if PgControlCondicoes.ActivePageIndex = 1 then
   begin
    HabilitaBotoes();
    Dstb_condicoes_pagamento.DataSet.Insert;
    DmCondicoesPagamentos.Querytb_condicoes_pagamento.FieldByName('cod_cond_padrao').AsInteger :=  DmCondicoesPagamentos.Querytb_condicoes_padrao.FieldByName('codigo').AsInteger;
   end;
 Novo();
end;

procedure TFrmCondPagamentos.BtnSalvarClick(Sender: TObject);
begin
  inherited;
 if PgControlCondicoes.ActivePageIndex = 0 then
    Dstb_condicoes_padrao.DataSet.Post;
 if PgControlCondicoes.ActivePageIndex = 1 then
 begin
    DesabilitaBotoes();
    Dstb_condicoes_pagamento.DataSet.Post;

 end;
     Salvar();
end;


procedure TFrmCondPagamentos.Alterar();
begin

BtnNovo.Enabled     := False;
BtnSalvar.Enabled   := True;
BtnCancelar.Enabled := True;
BtnAlterar.Enabled  := False;
BtnExcluir.Enabled  := False;
end;


procedure TFrmCondPagamentos.Cancelar();
begin

BtnNovo.Enabled     := True;
BtnSalvar.Enabled   := False;
BtnCancelar.Enabled := False;
BtnAlterar.Enabled  := True;
BtnExcluir.Enabled  := True;
end;

procedure TFrmCondPagamentos.DbCbContaCorrenteExit(Sender: TObject);
begin
  inherited;
  //Dstb_condicoes_pagamento.DataSet.FieldByName('cod_conta_corrente').AsInteger := // QueryCon
end;

procedure TFrmCondPagamentos.DesabilitaBotoes;
begin
 DBEdit4.Enabled           := False;
 DBEdit8.Enabled           := False;
 DBEdit9.Enabled           := False;
 DBEdit10.Enabled          := False;
 DBEdit14.Enabled          := False;
 DbCbContaCorrente.Enabled := False;
 DbCbBancos.Enabled        := False;
 DbCbTipo.Enabled          := False;
end;

procedure TFrmCondPagamentos.Dstb_condicoes_padraoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
 if  DmCondicoesPagamentos.Querytb_condicoes_pagamento.Active then
     DmCondicoesPagamentos.Querytb_condicoes_pagamento.Close;

 DmCondicoesPagamentos.Querytb_condicoes_pagamento.SQL.Clear;
 DmCondicoesPagamentos.Querytb_condicoes_pagamento.SQL.Text := 'select * from tb_condicoes_pagamento where cod_cond_padrao = :cod_cond_padrao';
 DmCondicoesPagamentos.Querytb_condicoes_pagamento.ParamByName('cod_cond_padrao').AsInteger := Dstb_condicoes_padrao.DataSet.FieldByName('codigo').AsInteger;
 DmCondicoesPagamentos.Querytb_condicoes_pagamento.Open;

 Dstb_condicoes_pagamento.DataSet := DmCondicoesPagamentos.Querytb_condicoes_pagamento;

end;

procedure TFrmCondPagamentos.Excluir();
begin

BtnNovo.Enabled     := True;
BtnSalvar.Enabled   := False;
BtnCancelar.Enabled := False;
BtnAlterar.Enabled  := True;
BtnExcluir.Enabled  := True;
end;



procedure TFrmCondPagamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 FreeAndNil(FrmCondPagamentos);
end;

procedure TFrmCondPagamentos.FormShow(Sender: TObject);
var
QueryContas, QueryBancos, QueryParamContas, QueryParamBancos : TZQuery;
SqlContas, SqlBancos, SqlParamContas, SqlParamBancos         : String;
CodigoContas, CodigoBancos : Integer;

begin
  inherited;
 if DmCondicoesPagamentos = nil then
    DmCondicoesPagamentos := TDmCondicoesPagamentos.Create(self);

 DmCondicoesPagamentos.Querytb_condicoes_padrao.Close;
 DmCondicoesPagamentos.Querytb_condicoes_padrao.SQL.Clear;
 DmCondicoesPagamentos.Querytb_condicoes_padrao.SQL.Text := 'select * from tb_condicoes_padrao';

 DmCondicoesPagamentos.Querytb_condicoes_padrao.Open;
 DmCondicoesPagamentos.Querytb_condicoes_pagamento.Open;

 SqlParamContas := 'select Clientes from tb_parametros';
 SqlParamBancos := 'select Bancos from tb_parametros';

 SqlContas      := 'select codigo, descricao from tb_plano_contabil where conta_superior = :codigo_contas';
 SqlBancos      := 'select codigo, descricao from tb_plano_contabil where conta_superior = :codigo_bancos';

 try
   QueryContas      := TZQuery.Create(Self);
   QueryBancos      := TZQuery.Create(Self);
   QueryParamContas := TZQuery.Create(Self);
   QueryParamBancos := TZQuery.Create(Self);

   QueryContas.Connection      := DmConexao.ZConnection;
   QueryBancos.Connection      := DmConexao.ZConnection;
   QueryParamContas.Connection := DmConexao.ZConnection;
   QueryParamBancos.Connection := DmConexao.ZConnection;


   QueryContas.Close;
   QueryBancos.Close;
   QueryParamContas.Close;
   QueryParamBancos.Close;

   QueryContas.SQL.Clear;
   QueryBancos.SQL.Clear;
   QueryParamContas.SQL.Clear;
   QueryParamBancos.SQL.Clear;


   QueryContas.SQL.Text      := SqlContas;
   QueryBancos.SQL.Text      := SqlBancos;
   QueryParamContas.SQL.Text := SqlParamContas;
   QueryParamBancos.SQL.Text := SqlParamBancos;

   QueryParamContas.Open;
   QueryParamBancos.Open;


   CodigoContas := QueryParamContas.FieldByName('Clientes').AsInteger;
   CodigoBancos := QueryParamBancos.FieldByName('Bancos').AsInteger;
   
   if not((CodigoContas = 0) or (CodigoBancos = 0))then
   begin
     QueryContas.ParamByName('codigo_contas').AsInteger := CodigoContas;
     QueryBancos.ParamByName('codigo_bancos').AsInteger := CodigoBancos;

     QueryContas.Open;
     QueryBancos.Open;

    while not (QueryContas.Eof) do
     begin
       DbCbContaCorrente.Items.Add(QueryContas.FieldByName('descricao').AsString);
       QueryContas.Next;
     end;

     while not (QueryBancos.Eof) do
     begin
       DbCbBancos.Items.Add(QueryBancos.FieldByName('descricao').AsString);
       QueryBancos.Next;
     end;


   end;


 finally
   QueryContas.Close;
   QueryBancos.Close;
   QueryParamContas.Close;
   QueryParamBancos.Close;

   FreeAndNil(QueryContas);
   FreeAndNil(QueryBancos);
   FreeAndNil(QueryParamContas);
   FreeAndNil(QueryParamBancos);


 end;




end;



procedure TFrmCondPagamentos.HabilitaBotoes;
begin
 DBEdit4.Enabled           := True;
 DBEdit8.Enabled           := True;
 DBEdit9.Enabled           := True;
 DBEdit10.Enabled          := True;
 DBEdit14.Enabled          := True;
 DbCbContaCorrente.Enabled := True;
 DbCbBancos.Enabled        := True;
 DbCbTipo.Enabled          := True;
end;

procedure TFrmCondPagamentos.Novo();
begin

BtnNovo.Enabled     := False;
BtnSalvar.Enabled   := True;
BtnCancelar.Enabled := True;
BtnAlterar.Enabled  := False;
BtnExcluir.Enabled  := False;
end;

procedure TFrmCondPagamentos.Salvar();
begin

BtnNovo.Enabled     := True;
BtnSalvar.Enabled   := False;
BtnCancelar.Enabled := False;
BtnAlterar.Enabled  := True;
BtnExcluir.Enabled  := True;
end;










end.
