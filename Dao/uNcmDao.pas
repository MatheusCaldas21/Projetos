unit uNcmDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ConexaoDao;

type
  TDmNcm = class(TDataModule)
    Querytb_ncms: TZQuery;
    Querytb_ncmscodigo: TIntegerField;
    Querytb_ncmsncm: TWideStringField;
    Querytb_ncmsdescricao: TWideStringField;
    Querytb_ncmsipi: TExtendedField;
    Querytb_regrasfiscais: TZQuery;
    Querytb_pis: TZQuery;
    Querytb_cofins: TZQuery;
    Querytb_cst: TZQuery;
    Querytb_cstcodigo: TIntegerField;
    Querytb_cstcst: TWideStringField;
    Querytb_cstdescricao: TWideStringField;
    Querytb_ipi: TZQuery;
    Querytb_regrasfiscaiscodigo: TIntegerField;
    Querytb_regrasfiscaiscst: TWideStringField;
    Querytb_regrasfiscaisuf: TWideStringField;
    Querytb_regrasfiscaisaliq_icms_inter: TExtendedField;
    Querytb_regrasfiscaisaliq_icms_intra: TExtendedField;
    Querytb_regrasfiscaisdestaca_icms: TWideStringField;
    Querytb_regrasfiscaisdestaca_ipi: TWideStringField;
    Querytb_regrasfiscaisdestaca_st: TWideStringField;
    Querytb_regrasfiscaissoma_st_total_nf: TWideStringField;
    Querytb_regrasfiscaiscst_pis: TWideStringField;
    Querytb_regrasfiscaiscst_cofins: TWideStringField;
    Querytb_regrasfiscaiscst_ipi: TWideStringField;
    Querytb_regrasfiscaisaliq_pis: TExtendedField;
    Querytb_regrasfiscaisaliq_cofins: TExtendedField;
    Querytb_regrasfiscaisiva: TExtendedField;
    Querytb_regrasfiscaisreducao_base: TExtendedField;
    Querytb_regrasfiscaisreducao_base_nfce: TExtendedField;
    Querytb_regrasfiscaisreducao_base_st: TExtendedField;
    Querytb_regrasfiscaisajusta_iva: TWideStringField;
    Querytb_regrasfiscaisutiliza_reducao_base: TWideStringField;
    Querytb_regrasfiscaisutiliza_reducao_base_st: TWideStringField;
    Querytb_regrasfiscaiscodigo_ncm: TIntegerField;
    Querytb_regrasfiscaistipo: TWideStringField;
    Querytb_cofinscodigo: TIntegerField;
    Querytb_cofinscst_cofins: TWideStringField;
    Querytb_cofinsdescricao: TWideStringField;
    Querytb_piscodigo: TIntegerField;
    Querytb_piscst_pis: TWideStringField;
    Querytb_pisdescricao: TWideStringField;
    Querytb_ipicodigo: TIntegerField;
    Querytb_ipicst_ipi: TWideStringField;
    Querytb_ipidescricao: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmNcm: TDmNcm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
