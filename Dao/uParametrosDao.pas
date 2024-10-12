unit uParametrosDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,ConexaoDao;

type
  TDmParametros = class(TDataModule)
    Querytb_parametros: TZQuery;
    Querytb_parametrosCaixas: TIntegerField;
    Querytb_parametrosBancos: TIntegerField;
    Querytb_parametrosClientes: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmParametros: TDmParametros;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
