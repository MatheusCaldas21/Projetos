unit ViewHistoricoProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset, ConexaoDao,
  uEstoqueDao, Vcl.Mask, Vcl.DBCtrls, ACBrBase, ACBrEnterTab;

type
  TFrmHistoricoProdutos = class(TFrmBase)
    PgControlHistorico: TPageControl;
    TsProdutos: TTabSheet;
    TsHistorico: TTabSheet;
    DbGridProdutos: TDBGrid;
    Panel1: TPanel;
    EdtProduto: TEdit;
    BtnBuscar: TBitBtn;
    QueryProdutos: TZQuery;
    QueryProdutoscodigo: TIntegerField;
    QueryProdutosdescricao: TWideStringField;
    QueryProdutosunidade: TWideStringField;
    QueryProdutossaldo: TExtendedField;
    QueryProdutoscusto_unit: TExtendedField;
    QueryProdutospreco_venda: TExtendedField;
    QueryProdutosmarca: TWideStringField;
    QueryProdutosean: TWideStringField;
    QueryProdutosmarkup: TExtendedField;
    QueryProdutosindice: TExtendedField;
    QueryProdutosdisponivel: TExtendedField;
    DsProdutos: TDataSource;
    DbGridHistoricoProd: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DsHistoricoProd: TDataSource;
    DbEdtSaldo: TDBEdit;
    DbEdtDisponivel: TDBEdit;
    ACBrEnterTab1: TACBrEnterTab;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure BtnBuscarClick(Sender: TObject);
    procedure DbGridProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DbGridProdutosEnter(Sender: TObject);
    procedure DbGridProdutosExit(Sender: TObject);
  private
    { Private declarations }
    DmEstoque : TDmEstoque;
  public
    { Public declarations }
  end;

var
  FrmHistoricoProdutos: TFrmHistoricoProdutos;

implementation

{$R *.dfm}

procedure TFrmHistoricoProdutos.BtnBuscarClick(Sender: TObject);
begin
  inherited;

 {  }
 QueryProdutos.Close;
 QueryProdutos.SQL.Clear;
 QueryProdutos.SQL.Text := 'select * from tb_produto with (nolock) where codigo = :codigo';
 QueryProdutos.ParamByName('codigo').AsInteger := StrToInt(EdtProduto.Text);
 QueryProdutos.Open;

 if QueryProdutos.IsEmpty then
 begin
  QueryProdutos.Close;
  QueryProdutos.SQL.Clear;
  QueryProdutos.SQL.Text := 'select * from tb_produto with (nolock) where descricao like :descricao';
  QueryProdutos.ParamByName('descricao').AsString := EdtProduto.Text + '%';
  QueryProdutos.Open;
 end;

 DbGridProdutos.SetFocus;

end;

procedure TFrmHistoricoProdutos.DbGridProdutosEnter(Sender: TObject);
begin
  inherited;
 ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmHistoricoProdutos.DbGridProdutosExit(Sender: TObject);
begin
  inherited;
ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmHistoricoProdutos.DbGridProdutosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    try
      DmEstoque.Querytb_estoque.Close;
      DmEstoque.Querytb_estoque.SQL.Clear;
      DmEstoque.Querytb_estoque.SQL.Text := 'select * from tb_estoque with (nolock) where cod_produto = :cod_prod';
      DmEstoque.Querytb_estoque.ParamByName('cod_prod').AsInteger := DsProdutos.DataSet.FieldByName('codigo').AsInteger;
      DmEstoque.Querytb_estoque.Open;

      PgControlHistorico.ActivePageIndex := TsHistorico.TabIndex;
      DbGridHistoricoProd.DataSource.DataSet := DmEstoque.Querytb_estoque;
    finally
    // FreeAndNil(DmEstoque);
    end;
  end;

end;



procedure TFrmHistoricoProdutos.FormShow(Sender: TObject);
begin
  inherited;
 if DmEstoque = nil then
    DmEstoque := TDmEstoque.Create(Self);
end;

end.
