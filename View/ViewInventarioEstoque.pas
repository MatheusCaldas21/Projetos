unit ViewInventarioEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, ppDB, ppDBPipe, ppParameter, ppBands, ppCache, ppClass,
  ppDesignLayer, ppComm, ppRelatv, ppProd, ppReport, ZAbstractRODataset,
  ZAbstractDataset, ZStoredProcedure, ConexaoDao, uProdutoDao, Datasnap.DBClient,
  ZDataset, ppCtrls, ppPrnabl;


type
  TFrmInventarioEstoque = class(TFrmBase)
    CbDepartamento: TDBComboBox;
    CbFornecedor: TDBComboBox;
    PnlTipoRelatorio: TPanel;
    DGEstoque: TDBGrid;
    BtnBuscar: TBitBtn;
    BtnImprimir: TBitBtn;
    PnlParametros: TPanel;
    RelEstoque: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppParameter1: TppParameter;
    DbppRelEstoque: TppDBPipeline;
    lblMarca: TLabel;
    lblDepartamento: TLabel;
    lblFornecedor: TLabel;
    PnlSitEstoque: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    RbNegativo: TRadioButton;
    RbPositivo: TRadioButton;
    RbZerado: TRadioButton;
    RbTodos: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    DsEstoque: TDataSource;
    ProcEstoque: TZStoredProc;
    CbMarca: TComboBox;
    SpeedButton1: TSpeedButton;
    ProcEstoqueRETURN_VALUE: TIntegerField;
    QueryProc: TZQuery;
    QueryProccodigo: TIntegerField;
    QueryProcdescricao: TWideStringField;
    QueryProcun: TWideStringField;
    QueryProcsaldo: TExtendedField;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    procedure BtnBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInventarioEstoque: TFrmInventarioEstoque;
  DmProdutos : TDmProdutos;

implementation

{$R *.dfm}

procedure TFrmInventarioEstoque.BtnBuscarClick(Sender: TObject);
begin
  inherited;


  QueryProc.SQL.Text := 'EXEC [dbo].[PROC_SALDO_POR_MARCA] :MARCA , :TIPO_SALDO';
  QueryProc.Prepare;

//  ProcEstoque.Prepare;

  if RbTodos.Checked = True then
    QueryProc.ParamByName('TIPO_SALDO').AsString := 'Todos'
  else if RbNegativo.Checked = True then
    QueryProc.ParamByName('TIPO_SALDO').AsString := 'Negativo'
  else if RbPositivo.Checked = True then
    QueryProc.ParamByName('TIPO_SALDO').AsString := 'Positivo'
  else if RbZerado.Checked = True then
    QueryProc.ParamByName('TIPO_SALDO').AsString := 'Zerado';

  QueryProc.ParamByName('MARCA').AsString := CbMarca.Text;

  QueryProc.Open;

 // ProcEstoque.ExecProc;


 // DsEstoque.DataSet.Refresh;
  //DGEstoque.DataSource.DataSet := nil;

 // DsEstoque.DataSet := ProcEstoque;
 // DGEstoque.DataSource.DataSet := ProcEstoque;

end;

procedure TFrmInventarioEstoque.BtnImprimirClick(Sender: TObject);
begin
  inherited;
 RelEstoque.Print;
end;

procedure TFrmInventarioEstoque.FormShow(Sender: TObject);
begin
  inherited;
 DmProdutos := TDmProdutos.Create(nil);

 if DmProdutos.Query_marca.Active = False then
    DmProdutos.Query_marca.Active := True;

 DmProdutos.Query_marca.Open;

 while not (DmProdutos.Query_marca.Eof) do
 begin
   CbMarca.Items.Add(DmProdutos.Query_marca.FieldByName('marca').AsString);
   DmProdutos.Query_marca.Next;
 end;

end;

end.
