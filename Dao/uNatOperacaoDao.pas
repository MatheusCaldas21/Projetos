unit uNatOperacaoDao;

interface

uses
  System.SysUtils, System.Classes, ConexaoDao, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TDmNaturezaOperacao = class(TDataModule)
    Querytb_natureza_operacao: TZQuery;
    Querytb_natureza_operacaocodigo: TIntegerField;
    Querytb_natureza_operacaodescricao: TWideStringField;
    Querytb_natureza_operacaocodigo_tipo_movimento: TIntegerField;
    Querytb_natureza_operacaoordem: TIntegerField;
    Querytb_natureza_operacaocodigo_empresa: TIntegerField;
    Querytb_regras_natureza: TZQuery;
    Querytb_regras_naturezacodigo: TIntegerField;
    Querytb_regras_naturezacodigo_natureza_operacao: TIntegerField;
    Querytb_regras_naturezacodigo_cst_icms: TIntegerField;
    Querytb_regras_naturezacodigo_cst_ipi: TIntegerField;
    Querytb_regras_naturezacodigo_cst_pis: TIntegerField;
    Querytb_regras_naturezacodigo_cst_cofins: TIntegerField;
    Querytb_regras_naturezaaliq_pis: TExtendedField;
    Querytb_regras_naturezaaliq_cofins: TExtendedField;
    Querytb_regras_naturezadestaca_icms: TWideStringField;
    Querytb_regras_naturezadestaca_st: TWideStringField;
    Querytb_regras_naturezasoma_st_total_nf: TWideStringField;
    Querytb_regras_naturezadestaca_ipi: TWideStringField;
    Querytb_regras_naturezacfop: TWideStringField;
    Querytb_regras_naturezacfop_inter: TWideStringField;
    Querytb_regras_naturezacfop_ext: TWideStringField;
    Querytb_regras_naturezacst_fixa: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmNaturezaOperacao: TDmNaturezaOperacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
