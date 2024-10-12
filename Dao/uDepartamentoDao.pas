unit uDepartamentoDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, ConexaoDao;

type
  TDmDepartamentos = class(TDataModule)
    TZtb_departamento: TZTable;
    TZtb_departamentocodigo: TIntegerField;
    TZtb_departamentodepartamento: TWideStringField;
    Querytb_departamento: TZQuery;
    Querytb_departamentocodigo: TIntegerField;
    Querytb_departamentodepartamento: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDepartamentos: TDmDepartamentos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
