unit uPedidoDao;

interface

uses
  System.SysUtils, System.Classes, ConexaoDao, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset;

type
  TDmPedidos = class(TDataModule)
    Query_produtos: TZQuery;
    Query_produtoscodigo: TIntegerField;
    Query_produtosdescricao: TWideStringField;
    Query_produtosunidade: TWideStringField;
    Query_produtospreco_venda: TExtendedField;
    Query_produtossaldo: TExtendedField;
    Query_BuscaProdutos: TZQuery;
    Query_produtosmarca: TWideStringField;
    Querytb_movpedidos: TZQuery;
    Querytb_movpedidoscodigo: TIntegerField;
    Querytb_movpedidoscod_prod: TIntegerField;
    Querytb_movpedidosdescricao: TWideStringField;
    Querytb_movpedidoscod_ped: TIntegerField;
    Querytb_movpedidoscusto_unit: TExtendedField;
    Querytb_movpedidoscusto_total: TExtendedField;
    Querytb_movpedidosvalor_venda: TExtendedField;
    Querytb_movpedidosqtd: TExtendedField;
    Querytb_movpedidosdesconto: TExtendedField;
    Querytb_movpedidosdesconto_perc: TExtendedField;
    Querytb_movpedidosun: TWideStringField;
    Querytb_movpedidosvalor_venda_or: TExtendedField;
    Querytb_movpedidostotal_liquido: TExtendedField;
    Querytb_movpedidostotal_bruto: TExtendedField;
    Querytb_movpedidosmarca: TStringField;
    Querytb_movpedidossaldo: TFloatField;
    Querytb_pedidos: TZQuery;
    Querytb_pedidoscodigo: TIntegerField;
    Querytb_pedidossituacao: TWideStringField;
    Querytb_pedidoscod_cli: TIntegerField;
    Querytb_pedidosnome_cli: TWideStringField;
    Querytb_pedidosuf_entrega: TWideStringField;
    Querytb_pedidoscep_entrega: TWideStringField;
    Querytb_pedidoscidade: TWideStringField;
    Querytb_pedidosbairro: TWideStringField;
    Querytb_pedidosendereco: TWideStringField;
    Querytb_pedidosnum_entrega: TWideStringField;
    Querytb_pedidostotal_bruto: TExtendedField;
    Querytb_pedidosdesconto: TExtendedField;
    Querytb_pedidostotal_liquido: TExtendedField;
    Querytb_pedidosdata_ped: TDateTimeField;
    Querytb_pedidosdata_fat: TDateTimeField;
    Querytb_pedidosusuario: TWideStringField;
    Querytb_pedidosobservacao: TWideMemoField;
    Querytb_pedidosfrete: TExtendedField;
    Querytb_pedidosdata_criacao: TDateTimeField;
    Query_BuscaProdutoscodigo: TIntegerField;
    Query_BuscaProdutosdescricao: TWideStringField;
    Query_BuscaProdutosunidade: TWideStringField;
    Query_BuscaProdutospreco_venda: TExtendedField;
    Query_BuscaProdutossaldo: TExtendedField;
    Query_BuscaProdutosmarca: TWideStringField;
    Query_BuscaProdutoscusto_unit: TExtendedField;
    Query_BuscaProdutosqtd: TExtendedField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmPedidos: TDmPedidos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
