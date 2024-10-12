unit ViewCondPagtoPdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, ZDataSet, ZAbstractRODataset,
  ZAbstractDataset, ConexaoDao, Vcl.StdCtrls, Vcl.Buttons, uCondicoesPagamentosDao;

type
  TFrmCondPagtoPdv = class(TFrmBase)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    DbGridCondPadrao: TDBGrid;
    DbGridCondPagto: TDBGrid;
    DsCondPadrao: TDataSource;
    DsCondPagto: TDataSource;
    QueryCondPadrao: TZQuery;
    QueryCondPagto: TZQuery;
    QueryCondPadraocodigo: TIntegerField;
    QueryCondPadraodescricao: TWideStringField;
    QueryCondPadraosequencia: TIntegerField;
    QueryCondPagtocodigo: TIntegerField;
    QueryCondPagtodescricao: TWideStringField;
    QueryCondPagtocod_cond_padrao: TIntegerField;
    QueryCondPagtoaceita_promocao: TWideStringField;
    QueryCondPagtotipo: TWideStringField;
    QueryCondPagtoentrada: TIntegerField;
    QueryCondPagtoprazo: TIntegerField;
    QueryCondPagtotaxa: TExtendedField;
    QueryCondPagtoativo: TWideStringField;
    QueryCondPagtobanco: TIntegerField;
    QueryCondPagtoconta_corrente: TIntegerField;
    QueryCondPagtoparcelas: TIntegerField;
    EdtValor: TEdit;
    BtnInserir: TBitBtn;
    DbGridCondPdv: TDBGrid;
    Dstb_pagamentos_pdv: TDataSource;
    BtnExcluir: TBitBtn;
    procedure DsCondPadraoDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure DbGridCondPadraoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValorKeyPress(Sender: TObject; var Key: Char);
    procedure BtnInserirClick(Sender: TObject);
    procedure DbGridCondPagtoKeyPress(Sender: TObject; var Key: Char);
    constructor ConstroiCondPagto(CodPed : integer; Total : Double);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnExcluirClick(Sender: TObject); // Recebe o código do pedido e o total a receber.
  private
    { Private declarations }
    CodPedido : integer;
    TotalPedido, TotalReceber : Double;  //O total a receber é o valor que ainda está a receber. O Total Recebido é o que o usuário recebeu nas opções.

  public
    { Public declarations }
    TotalRecebido : Double;
  end;

var
  FrmCondPagtoPdv: TFrmCondPagtoPdv;

implementation

{$R *.dfm}

procedure TFrmCondPagtoPdv.BtnExcluirClick(Sender: TObject);
begin
  inherited;
 Dstb_pagamentos_pdv.DataSet.Delete;
 DmConexao.ZConnection.Commit;

 TotalRecebido := 0;
 while not (Dstb_pagamentos_pdv.DataSet.eof) do
 begin
   TotalRecebido := TotalRecebido + Dstb_pagamentos_pdv.DataSet.FieldByName('valor').AsFloat;
   Dstb_pagamentos_pdv.DataSet.Next;
 end;

 TotalReceber  := TotalPedido - TotalRecebido;
 EdtValor.Text := FloatToStr(TotalReceber);
end;

procedure TFrmCondPagtoPdv.BtnInserirClick(Sender: TObject);
begin
  inherited;
 try
   Dstb_pagamentos_pdv.DataSet.Append;
   Dstb_pagamentos_pdv.DataSet.FieldByName('cod_pedido').AsInteger     := CodPedido;
   Dstb_pagamentos_pdv.DataSet.FieldByName('cod_cond_pagto').AsInteger := DsCondPagto.DataSet.FieldByName('codigo').AsInteger;
   Dstb_pagamentos_pdv.DataSet.FieldByName('descricao').AsString       := DsCondPagto.DataSet.FieldByName('descricao').AsString;
   Dstb_pagamentos_pdv.DataSet.FieldByName('valor').AsFloat            := StrToFloat(EdtValor.Text);
   Dstb_pagamentos_pdv.DataSet.FieldByName('parcelas').AsInteger       := DsCondPagto.DataSet.FieldByName('parcelas').AsInteger;
   Dstb_pagamentos_pdv.DataSet.FieldByName('entrada').AsInteger        := DsCondPagto.DataSet.FieldByName('entrada').AsInteger;
   Dstb_pagamentos_pdv.DataSet.FieldByName('prazo').AsInteger          := DsCondPagto.DataSet.FieldByName('prazo').AsInteger;
   Dstb_pagamentos_pdv.DataSet.Post;
   DmConexao.ZConnection.Commit;
 finally
   TotalRecebido := TotalRecebido +  Dstb_pagamentos_pdv.DataSet.FieldByName('valor').AsFloat;
   TotalReceber  := TotalReceber  -  Dstb_pagamentos_pdv.DataSet.FieldByName('valor').AsFloat;

   if TotalReceber > 0 then
      EdtValor.Text := FloatToStr(TotalReceber)
   else
      EdtValor.Text := FloatToStr(0);

   DbGridCondPadrao.SetFocus;
 end;

end;

constructor TFrmCondPagtoPdv.ConstroiCondPagto(CodPed: integer; Total: Double);
begin
 Create(nil);
 CodPedido     := CodPed;
 TotalReceber  := Total;
 TotalPedido   := Total;

end;

procedure TFrmCondPagtoPdv.DbGridCondPadraoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if key = #13 then
 begin
 DbGridCondPagto.SetFocus;
 end;
end;

procedure TFrmCondPagtoPdv.DbGridCondPagtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if Key = #13 then
  EdtValor.SetFocus;
end;

procedure TFrmCondPagtoPdv.DsCondPadraoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
 QueryCondPagto.Close;
 QueryCondPagto.ParamByName('cod_cond_padrao').AsInteger := DsCondPadrao.DataSet.FieldByName('codigo').AsInteger;
 QueryCondPagto.Open;
 DsCondPagto.DataSet := QueryCondPagto;
end;

procedure TFrmCondPagtoPdv.EdtValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key = #13 then
 begin
  BtnInserir.SetFocus;
 end;
end;

procedure TFrmCondPagtoPdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
{ if (TotalPedido <> TotalRecebido) then
 begin
   MessageDlg('É necessário receber todo o valor',mtInformation, mbOKCancel, 0);
   Abort;
 end;
        }
end;

procedure TFrmCondPagtoPdv.FormShow(Sender: TObject);
begin
  inherited;
 QueryCondPadrao.Open;

 if DmCondicoesPagamentos = nil then
    DmCondicoesPagamentos := TDmCondicoesPagamentos.Create(self);
    DmCondicoesPagamentos.querytb_pagamentos_pdv.open;

 DmCondicoesPagamentos.Querytb_pagamentos_pdv.Close;
 DmCondicoesPagamentos.Querytb_pagamentos_pdv.SQL.Clear;
 DmCondicoesPagamentos.Querytb_pagamentos_pdv.SQL.Text := 'select * from tb_pagamentos_pdv where cod_pedido = :cod_ped';
 DmCondicoesPagamentos.Querytb_pagamentos_pdv.ParamByName('cod_ped').AsInteger := CodPedido;
 DmCondicoesPagamentos.Querytb_pagamentos_pdv.Open;

 Dstb_pagamentos_pdv.DataSet := DmCondicoesPagamentos.Querytb_pagamentos_pdv;

  if (DmCondicoesPagamentos.Querytb_pagamentos_pdv.IsEmpty) then
      EdtValor.Text :=  FloatToStr(TotalReceber)
  else
     begin
       TotalRecebido := 0;
       while not (Dstb_pagamentos_pdv.DataSet.Eof) do
       begin
         TotalRecebido := TotalRecebido + Dstb_pagamentos_pdv.DataSet.FieldByName('valor').AsFloat;
         Dstb_pagamentos_pdv.DataSet.Next;
       end;

       EdtValor.Text := FloatToStr(TotalReceber - TotalRecebido);

     end;

 DbGridCondPadrao.SetFocus;
end;

end.
