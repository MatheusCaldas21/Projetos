unit uClientesDao;

interface

uses
  System.SysUtils, System.Classes, ConexaoDao, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TDmClientes = class(TDataModule)
    Querytb_clientes: TZQuery;
    Querytb_clientescodigo: TIntegerField;
    Querytb_clientesnome: TWideStringField;
    Querytb_clientescpf: TWideStringField;
    Querytb_clientescep: TWideStringField;
    Querytb_clientesestado: TWideStringField;
    Querytb_clientescidade: TWideStringField;
    Querytb_clientesbairro: TWideStringField;
    Querytb_clientesendereco: TWideStringField;
    Querytb_clientesnum: TWideStringField;
    Querytb_clientesativo: TBooleanField;
    Querytb_clientesind_iedest: TIntegerField;
    Querytb_clientesind_final: TIntegerField;
    Querytb_clientesobs_nfe: TWideStringField;
    Querytb_endereco_cli: TZQuery;
    Querytb_endereco_clicodigo: TIntegerField;
    Querytb_endereco_clicodigo_cli: TIntegerField;
    Querytb_endereco_cliuf: TWideStringField;
    Querytb_endereco_clicep: TWideStringField;
    Querytb_endereco_clicidade: TWideStringField;
    Querytb_endereco_clibairro: TWideStringField;
    Querytb_endereco_cliendereco: TWideStringField;
    Querytb_endereco_clinum: TWideStringField;
    Querytb_endereco_clireferencia: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmClientes: TDmClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
