unit uTipoMovtoDao;

interface

uses
  System.SysUtils, System.Classes, ConexaoDao, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TDmTipoMovimento = class(TDataModule)
    Querytb_tipo_movimento: TZQuery;
    Querytb_tipo_movimentocodigo: TIntegerField;
    Querytb_tipo_movimentodescricao: TWideStringField;
    Querytb_tipo_movimentofinalidade_nfe: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmTipoMovimento: TDmTipoMovimento;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
