unit uPlanoContasDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,ConexaoDao;

type
  TDmPlanoContas = class(TDataModule)
    Querytb_planocontas: TZQuery;
    Querytb_planocontascodigo: TIntegerField;
    Querytb_planocontasconta: TWideStringField;
    Querytb_planocontasdescricao: TWideStringField;
    Querytb_planocontasconta_superior: TIntegerField;
    Querytb_planocontasnome_conta_superior: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmPlanoContas: TDmPlanoContas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
