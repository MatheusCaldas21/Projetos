unit uVendedorDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ConexaoDao;

type
  TDmVendedores = class(TDataModule)
    Querytb_vendedor: TZQuery;
    Querytb_vendedorcodigo: TIntegerField;
    Querytb_vendedornome: TWideStringField;
    Querytb_vendedorativo: TWideStringField;
    Querytb_vendedorcomissao: TExtendedField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmVendedores: TDmVendedores;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
