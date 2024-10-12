unit ViewBuscaPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, ConexaoDao, ZDataSet, Data.DB, Vcl.Grids, Vcl.DBGrids, uPedidoDao,
  Vcl.Menus, ppComm, ppRelatv, ppDB, ppDBPipe, ppProd, ppClass, ppReport,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppDesignLayer, ppParameter,
  Datasnap.DBClient, raCodMod, ppModule, ppStrtch, ppMemo, ZAbstractRODataset,
  ZAbstractDataset;

type
  TFrmBuscaPedidos = class(TForm)
    PnlFundo: TPanel;
    PnlBusca: TPanel;
    BtnBuscaPed: TBitBtn;
    CbTipoPed: TComboBox;
    EdtBuscaPedidos: TEdit;
    PnlFundoTop: TPanel;
    PnlPedidos: TPanel;
    DbGridPedidos: TDBGrid;
    Splitter1: TSplitter;
    PnlProdutos: TPanel;
    DbGridProdutos: TDBGrid;
    DsPedidos: TDataSource;
    DsProdutos: TDataSource;
    DppPedido: TppDBPipeline;
    DppProdutosPed: TppDBPipeline;
    RPedido: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
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
    PopUpMenuPedidos: TPopupMenu;
    Imprimir: TMenuItem;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    raCodeModule1: TraCodeModule;
    raProgramInfo1: TraProgramInfo;
    I1: TMenuItem;
    RelPagamentoPdv: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText16: TppDBText;
    ppLine3: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText17: TppDBText;
    MemoDadosEndereco: TppMemo;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand2: TppFooterBand;
    raCodeModule2: TraCodeModule;
    raProgramInfo2: TraProgramInfo;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    DppPagamentoPdv: TppDBPipeline;
    DppEmpresa: TppDBPipeline;
    DppEmpresappField1: TppField;
    DppEmpresappField2: TppField;
    DppEmpresappField3: TppField;
    DppEmpresappField4: TppField;
    DppEmpresappField5: TppField;
    DppEmpresappField6: TppField;
    DppEmpresappField7: TppField;
    DppEmpresappField8: TppField;
    DppEmpresappField9: TppField;
    DppEmpresappField10: TppField;
    DppEmpresappField11: TppField;
    DppEmpresappField12: TppField;
    DppEmpresappField13: TppField;
    DppEmpresappField14: TppField;
    DppEmpresappField15: TppField;
    QueryPagamento: TZQuery;
    QueryEmpresa: TZQuery;
    QueryPagamentocodigo: TIntegerField;
    QueryPagamentocod_pedido: TIntegerField;
    QueryPagamentocod_cond_pagto: TIntegerField;
    QueryPagamentodescricao: TWideStringField;
    QueryPagamentovalor: TExtendedField;
    QueryPagamentoparcelas: TIntegerField;
    QueryPagamentoentrada: TIntegerField;
    QueryPagamentoprazo: TIntegerField;
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
    DsPagamentos: TDataSource;
    DsEmpresa: TDataSource;
    QueryPagamentocod_cli: TIntegerField;
    QueryPagamentonome_cli: TWideStringField;
    ppLabel20: TppLabel;
    ppDBText21: TppDBText;
    ppLabel21: TppLabel;
    ppDBText22: TppDBText;
    procedure FormShow(Sender: TObject);
    procedure CarregaProdutos(Codigo : integer);
    procedure DsPedidosDataChange(Sender: TObject; Field: TField);
    procedure ImprimirClick(Sender: TObject);
    procedure DbGridPedidosKeyPress(Sender: TObject; var Key: Char);
    procedure I1Click(Sender: TObject);

  private
    { Private declarations }
    DmPed : TDmPedidos;

  public
    { Public declarations }
    CodPdv : integer; // Variável que manda o código do pedido para a tela de Pedidos.

  end;

var
  FrmBuscaPedidos: TFrmBuscaPedidos;

implementation

{$R *.dfm}

procedure TFrmBuscaPedidos.CarregaProdutos(Codigo: integer);
var
SqlProdutos : String;
begin

 SqlProdutos := 'select * from tb_movpedido mp where mp.cod_ped = :codigo';

 DmPed.Querytb_movpedidos.close;
 DmPed.Querytb_movpedidos.sql.clear;

 DmPed.Querytb_movpedidos.sql.text := SqlProdutos;
 DmPed.Querytb_movpedidos.ParamByName('codigo').AsInteger := Codigo;


 DmPed.Querytb_movpedidos.open;

 DbGridProdutos.DataSource.DataSet := DmPed.Querytb_movpedidos;
 DppProdutosPed.DataSource.DataSet := DmPed.Querytb_movpedidos;

end;



procedure TFrmBuscaPedidos.DbGridPedidosKeyPress(Sender: TObject;
  var Key: Char);
var
Resposta : integer;
begin
 if key = #13 then
 begin
  Resposta :=  MessageDlg('Deseja alterar esse pedido ?',mtConfirmation,mbYesNo,0);
   if Resposta = mrYes then
    begin
      CodPdv :=  DsPedidos.DataSet.FieldByName('codigo').AsInteger;
      FrmBuscaPedidos.Close;
    end;
 end;
end;

procedure TFrmBuscaPedidos.DsPedidosDataChange(Sender: TObject; Field: TField);
var
CodigoPedido : integer;
begin
 if FrmBuscaPedidos.Visible then
  begin
   if (DmPed.Querytb_pedidos.FieldByName('codigo').AsInteger > 0) then
    begin
     CodigoPedido := DmPed.Querytb_pedidos.FieldByName('codigo').AsInteger;
     CarregaProdutos(CodigoPedido);
    end;
  end;
end;




procedure TFrmBuscaPedidos.FormShow(Sender: TObject);
var
SqlPedidos  : String;
begin

 SqlPedidos  := 'select top(50) * from tb_pedido';

 DmPed := TDmPedidos.Create(self);

 DmPed.Querytb_pedidos.close;
 DmPed.Querytb_pedidos.sql.clear;
 DmPed.Querytb_pedidos.sql.text := SqlPedidos;

 if (Self.Visible) then
 begin
   DmPed.Querytb_pedidos.open;
   DbGridPedidos.DataSource.DataSet  := DmPed.Querytb_pedidos;
 end;

end;



procedure TFrmBuscaPedidos.I1Click(Sender: TObject);
begin
QueryPagamento.Close;
QueryPagamento.ParamByName('cod_pedido').AsInteger := DsPedidos.DataSet.FieldByName('codigo').AsInteger;
QueryPagamento.Open;

QueryEmpresa.Close;
QueryEmpresa.Open;

RelPagamentoPdv.Print;
end;

procedure TFrmBuscaPedidos.ImprimirClick(Sender: TObject);
begin
 Rpedido.Print;
end;

end.
