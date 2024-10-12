unit ViewCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, ACBrBase, ACBrDFe, ACBrNFe, Data.DB, Vcl.Grids, Vcl.DBGrids, ConexaoDao,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppDesignLayer, ppParameter, raCodMod, ppModule,
  ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFEClass, ACBrNFeDANFeFPDF,
  ppStrtch, ppMemo, ViewOpcoesDoc, ppVar;

type
  TFrmCaixa = class(TFrmBase)
    Nfe: TACBrNFe;
    PnlPagamentos: TPanel;
    PnlProdutos: TPanel;
    Splitter1: TSplitter;
    PnlPedidos: TPanel;
    Splitter2: TSplitter;
    PnlCondPagto: TPanel;
    Splitter3: TSplitter;
    PnlTitulos: TPanel;
    DbGridPedidos: TDBGrid;
    DbGridProdutos: TDBGrid;
    DbGridCondPagto: TDBGrid;
    DbGridTitulos: TDBGrid;
    DsPedidos: TDataSource;
    DsProdutos: TDataSource;
    DsCondPagtoPdv: TDataSource;
    QueryPedidos: TZQuery;
    QueryProdutos: TZQuery;
    QueryCondPagtoPed: TZQuery;
    QueryPedidoscodigo: TIntegerField;
    QueryPedidossituacao: TWideStringField;
    QueryPedidoscod_cli: TIntegerField;
    QueryPedidosnome_cli: TWideStringField;
    QueryPedidosuf_entrega: TWideStringField;
    QueryPedidoscep_entrega: TWideStringField;
    QueryPedidoscidade: TWideStringField;
    QueryPedidosbairro: TWideStringField;
    QueryPedidosendereco: TWideStringField;
    QueryPedidosnum_entrega: TWideStringField;
    QueryPedidostotal_bruto: TExtendedField;
    QueryPedidosdesconto: TExtendedField;
    QueryPedidostotal_liquido: TExtendedField;
    QueryPedidosdata_ped: TDateTimeField;
    QueryPedidosdata_fat: TDateTimeField;
    QueryPedidosusuario: TWideStringField;
    QueryPedidosobservacao: TWideMemoField;
    QueryPedidosfrete: TExtendedField;
    QueryPedidosdata_criacao: TDateTimeField;
    QueryProdutoscodigo: TIntegerField;
    QueryProdutoscod_prod: TIntegerField;
    QueryProdutosdescricao: TWideStringField;
    QueryProdutoscod_ped: TIntegerField;
    QueryProdutoscusto_unit: TExtendedField;
    QueryProdutoscusto_total: TExtendedField;
    QueryProdutosvalor_venda: TExtendedField;
    QueryProdutosvalor_venda_or: TExtendedField;
    QueryProdutosqtd: TExtendedField;
    QueryProdutosdesconto: TExtendedField;
    QueryProdutosdesconto_perc: TExtendedField;
    QueryProdutosun: TWideStringField;
    QueryProdutostotal_liquido: TExtendedField;
    QueryProdutostotal_bruto: TExtendedField;
    QueryCondPagtoPedcodigo: TIntegerField;
    QueryCondPagtoPedcod_pedido: TIntegerField;
    QueryCondPagtoPedcod_cond_pagto: TIntegerField;
    QueryCondPagtoPeddescricao: TWideStringField;
    QueryCondPagtoPedvalor: TExtendedField;
    QueryCondPagtoPedparcelas: TIntegerField;
    QueryCondPagtoPedentrada: TIntegerField;
    QueryCondPagtoPedprazo: TIntegerField;
    BtnBaixarPedido: TBitBtn;
    RelPagamentoPdv: TppReport;
    DppPagamentoPdv: TppDBPipeline;
    ppParameterList1: TppParameterList;
    DppEmpresa: TppDBPipeline;
    QueryEmpresa: TZQuery;
    DsEmpresa: TDataSource;
    QueryEmpresacodigo: TIntegerField;
    QueryEmpresarazao_social: TWideStringField;
    QueryEmpresafantasia: TWideStringField;
    QueryEmpresacnpj: TWideStringField;
    QueryEmpresaie: TWideStringField;
    QueryEmpresacep: TWideStringField;
    QueryEmpresaestado: TWideStringField;
    QueryEmpresacidade: TWideStringField;
    QueryEmpresabairro: TWideStringField;
    QueryEmpresaendereco: TWideStringField;
    QueryEmpresanumero: TWideStringField;
    QueryEmpresatelefone: TWideStringField;
    QueryEmpresaemail: TWideStringField;
    QueryEmpresasite: TWideStringField;
    QueryEmpresalogo: TWideStringField;
    DanfeNFePDF: TACBrNFeDANFeFPDF;
    BtnEmitirNfe: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    MemoDadosEndereco: TppMemo;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    raCodeModule1: TraCodeModule;
    raProgramInfo2: TraProgramInfo;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBText6: TppDBText;
    DppPedido: TppDBPipeline;
    ppLabel4: TppLabel;
    VarNomeCli: TppVariable;
    raProgramInfo1: TraProgramInfo;
    procedure DsPedidosDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure BtnBaixarPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixa: TFrmCaixa;

implementation

{$R *.dfm}

procedure TFrmCaixa.BtnBaixarPedidoClick(Sender: TObject);
var
LTotalPedido, LTotalPagamento : Double;
resposta : integer;
begin
  inherited;

 if Application.MessageBox('Confirma o Faturamento do pedido ?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
 begin
   LTotalPagamento := 0;
   DsCondPagtoPdv.DataSet.First;
   while not (DsCondPagtoPdv.DataSet.Eof) do
   begin
    LTotalPagamento := LTotalPagamento + DsCondPagtoPdv.DataSet.FieldByName('valor').AsFloat;
    DsCondPagtoPdv.DataSet.Next;
   end;

   LTotalPedido := DsPedidos.DataSet.FieldByName('total_liquido').AsFloat;

   if LTotalPagamento <> LTotalPedido then
    MessageDlg('O total do pedido é diferente do total informado no pagamento. Revise Total Pedido '  + FloatToStr(LTotalPedido) + ' Total Pagamento ' + FloatToStr(LTotalPagamento)
      , mtInformation, mbOKCancel, 0)
   else
   begin
    QueryPedidos.Edit;
    QueryPedidos.FieldByName('situacao').AsString := 'FAT';
    QueryPedidos.FieldByName('data_fat').AsDateTime := Now;
    QueryPedidos.Post;
    QueryPedidos.Connection.Commit;
    MessageDlg('Pedido Faturado com sucesso', mtConfirmation, mbOKCancel,0);


    //resposta := MessageDlg('Deseja imprimir o comprovante do pagamento ?', TMsgDlgType.mtInformation, mbOKCancel, 0);

    if Application.MessageBox('Deseja imprimir o comprovante do pagamento ?', 'Comprovante de Pagamento', MB_YESNO+MB_ICONQUESTION) = mrOk then
     begin
      RelPagamentoPdv.Print;


      if  MessageDlg('Deseja emitir a Nota Fiscal ou Cupom ?', TMsgDlgType.mtInformation, mbYesNo, 0) = mrYes then
         if FrmOpcoesDoc = nil then
            Application.CreateForm(TFrmOpcoesDoc, FrmOpcoesDoc);
      FrmOpcoesDoc.Show;
     end
    else
     begin

       if  MessageDlg('Deseja emitir a Nota Fiscal ou Cupom ?', TMsgDlgType.mtInformation, mbYesNo, 0) = mrYes then
          if FrmOpcoesDoc = nil then
             Application.CreateForm(TFrmOpcoesDoc, FrmOpcoesDoc);
       FrmOpcoesDoc.Show;
     end;

     DbGridPedidos.DataSource.DataSet.Refresh;
     DbGridProdutos.Refresh;

   end;
 end
 else
 Exit;


end;

procedure TFrmCaixa.DsPedidosDataChange(Sender: TObject; Field: TField);
var
CodPedido : integer;
begin
  inherited;
  CodPedido := DsPedidos.DataSet.FieldByName('codigo').AsInteger;
  QueryProdutos.Close;
  QueryProdutos.ParamByName('cod_ped').AsInteger := CodPedido;
  QueryProdutos.Open;

  QueryCondPagtoPed.Close;
  QueryCondPagtoPed.ParamByName('cod_ped').AsInteger := CodPedido;
  QueryCondPagtoPed.Open;
end;






procedure TFrmCaixa.FormShow(Sender: TObject);
begin
  inherited;
QueryPedidos.open;
end;

end.
