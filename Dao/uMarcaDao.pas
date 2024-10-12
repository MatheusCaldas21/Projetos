unit uMarcaDao;

interface

uses
  System.SysUtils, System.Classes, ConexaoDao, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset;

type
  TDmMarcas = class(TDataModule)
    TZtb_marca: TZTable;
    TZtb_marcacodigo: TIntegerField;
    TZtb_marcadescricao: TWideStringField;
    Querytb_marca: TZQuery;
    Querytb_marcacodigo: TIntegerField;
    Querytb_marcadescricao: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMarcas: TDmMarcas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
