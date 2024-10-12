unit uProdutoDao;

interface

uses
  System.SysUtils, System.Classes, ConexaoDao, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset;

type
  TDmProdutos = class(TDataModule)
    Query_marca: TZQuery;
    Query_unidade: TZQuery;
    Querytb_produtos: TZQuery;
    Query_marcamarca: TWideStringField;
    Querytb_produtoscodigo: TIntegerField;
    Querytb_produtosdescricao: TWideStringField;
    Querytb_produtosunidade: TWideStringField;
    Querytb_produtossaldo: TExtendedField;
    Querytb_produtoscusto_unit: TExtendedField;
    Querytb_produtospreco_venda: TExtendedField;
    Querytb_produtosmarca: TWideStringField;
    Querytb_produtosean: TWideStringField;
    Querytb_produtosmarkup: TExtendedField;
    Querytb_produtosindice: TExtendedField;
    Querytb_produtosdisponivel: TExtendedField;
    Querytb_produtoscod_ncm: TIntegerField;
    Querytb_produtoscod_departamento: TIntegerField;
    Querytb_produtoscod_divisao: TIntegerField;
    Querytb_produtosdesconto_maximo: TExtendedField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmProdutos: TDmProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
