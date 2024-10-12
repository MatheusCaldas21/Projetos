unit uFornecedorDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, ConexaoDao;

type
  TDmFornecedores = class(TDataModule)
    TZtb_fornecedor: TZTable;
    TZtb_fornecedorcodigo: TIntegerField;
    TZtb_fornecedornome: TWideStringField;
    TZtb_fornecedorfantasia: TWideStringField;
    TZtb_fornecedorcnpj: TWideStringField;
    TZtb_fornecedorinscricao_estadual: TWideStringField;
    TZtb_fornecedorestado: TWideStringField;
    TZtb_fornecedorcidade: TWideStringField;
    TZtb_fornecedorbairro: TWideStringField;
    TZtb_fornecedorendereco: TWideStringField;
    TZtb_fornecedornum: TWideStringField;
    TZtb_fornecedorfone: TWideStringField;
    TZtb_fornecedorfone2: TWideStringField;
    TZtb_fornecedoremail: TWideStringField;
    TZtb_fornecedorinativo: TBooleanField;
    TZtb_fornecedorcep: TWideStringField;
    Querytb_fornecedor: TZQuery;
    Querytb_fornecedorcodigo: TIntegerField;
    Querytb_fornecedornome: TWideStringField;
    Querytb_fornecedorfantasia: TWideStringField;
    Querytb_fornecedorcnpj: TWideStringField;
    Querytb_fornecedorinscricao_estadual: TWideStringField;
    Querytb_fornecedorcep: TWideStringField;
    Querytb_fornecedorestado: TWideStringField;
    Querytb_fornecedorcidade: TWideStringField;
    Querytb_fornecedorbairro: TWideStringField;
    Querytb_fornecedorendereco: TWideStringField;
    Querytb_fornecedornum: TWideStringField;
    Querytb_fornecedorfone: TWideStringField;
    Querytb_fornecedorfone2: TWideStringField;
    Querytb_fornecedoremail: TWideStringField;
    Querytb_fornecedorinativo: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmFornecedores: TDmFornecedores;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
