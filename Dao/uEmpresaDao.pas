unit uEmpresaDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, ConexaoDao;

type
  TDmEmpresas = class(TDataModule)
    Querytb_empresa: TZQuery;
    Querytb_empresacodigo: TIntegerField;
    Querytb_empresarazao_social: TWideStringField;
    Querytb_empresafantasia: TWideStringField;
    Querytb_empresacnpj: TWideStringField;
    Querytb_empresaie: TWideStringField;
    Querytb_empresacep: TWideStringField;
    Querytb_empresaestado: TWideStringField;
    Querytb_empresacidade: TWideStringField;
    Querytb_empresabairro: TWideStringField;
    Querytb_empresaendereco: TWideStringField;
    Querytb_empresanumero: TWideStringField;
    Querytb_empresatelefone: TWideStringField;
    Querytb_empresaemail: TWideStringField;
    Querytb_empresasite: TWideStringField;
    Querytb_empresalogo: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmEmpresas: TDmEmpresas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
