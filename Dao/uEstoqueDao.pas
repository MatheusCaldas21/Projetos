unit uEstoqueDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ConexaoDao;

type
  TDmEstoque = class(TDataModule)
    Querytb_estoque: TZQuery;
    Querytb_estoquecodigo: TIntegerField;
    Querytb_estoquecod_produto: TIntegerField;
    Querytb_estoquedescricao: TWideStringField;
    Querytb_estoqueqtd: TExtendedField;
    Querytb_estoquevalor_unitario: TExtendedField;
    Querytb_estoquemovimento: TWideStringField;
    Querytb_estoquetipo: TWideStringField;
    Querytb_estoquecod_pedido: TIntegerField;
    Querytb_estoquecod_pedido_compra: TIntegerField;
    Querytb_estoquenum_nfe: TIntegerField;
    Querytb_estoquenum_nfce: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmEstoque: TDmEstoque;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
