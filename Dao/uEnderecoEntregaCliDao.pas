unit uEnderecoEntregaCliDao;

interface

uses
  System.SysUtils, System.Classes, ConexaoDao, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TDmEnderecosCli = class(TDataModule)
    Querytb_endereco_entrega_cli: TZQuery;
    Querytb_endereco_entrega_clicodigo: TIntegerField;
    Querytb_endereco_entrega_clicodigo_cli: TIntegerField;
    Querytb_endereco_entrega_cliuf: TWideStringField;
    Querytb_endereco_entrega_clicep: TWideStringField;
    Querytb_endereco_entrega_clicidade: TWideStringField;
    Querytb_endereco_entrega_clibairro: TWideStringField;
    Querytb_endereco_entrega_cliendereco: TWideStringField;
    Querytb_endereco_entrega_clinum: TWideStringField;
    Querytb_endereco_entrega_clireferencia: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmEnderecosCli: TDmEnderecosCli;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
