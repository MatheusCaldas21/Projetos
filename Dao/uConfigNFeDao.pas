unit uConfigNFeDao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ConexaoDao, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TDmConfigNfe = class(TDataModule)
    Querytb_config_nfe: TZQuery;
    Querytb_config_nfecodigo: TIntegerField;
    Querytb_config_nfeempresa: TIntegerField;
    Querytb_config_nfeemail: TWideStringField;
    Querytb_config_nfesenha_email: TWideStringField;
    Querytb_config_nfen_serie_certificado: TWideStringField;
    Querytb_config_nfesenha_certificado: TWideStringField;
    Querytb_config_nfeativo: TWideStringField;
    Querytb_config_nfeuf_destino: TWideStringField;
    Querytb_config_nfetipo_emissao: TWideStringField;
    Querytb_config_nfemargem_direita: TExtendedField;
    Querytb_config_nfemargem_esquerda: TExtendedField;
    Querytb_config_nfemargem_superior: TExtendedField;
    Querytb_config_nfemargem_inferior: TExtendedField;
    Querytb_config_nfecasas_decimais: TIntegerField;
    Querytb_config_nfepasta_schemas: TWideStringField;
    Querytb_config_nfepasta_Nfe: TWideStringField;
    Querytb_config_nfepasta_inutilizadas: TWideStringField;
    Querytb_config_nfelib_ssl_crypt: TWideStringField;
    Querytb_config_nfelib_ssl_http: TWideStringField;
    Querytb_config_nfelib_ssl_xml_sign: TWideStringField;
    Querytb_config_nfeversao_df: TWideStringField;
    Querytb_config_nfeformato_impressao: TWideStringField;
    Querytb_config_nfepasta_canceladas: TWideStringField;
    Querytb_config_nfepasta_Xml_cce: TWideStringField;
    Querytb_config_nfepasta_Xml_Dpec: TWideStringField;
    Querytb_config_nfelib_ssl: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConfigNfe: TDmConfigNfe;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
