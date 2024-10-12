unit uCstDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ConexaoDao;

type
  TDmCst = class(TDataModule)
    Querytb_cst: TZQuery;
    Querytb_cstcodigo: TIntegerField;
    Querytb_cstcst: TWideStringField;
    Querytb_cstdescricao: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCst: TDmCst;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
