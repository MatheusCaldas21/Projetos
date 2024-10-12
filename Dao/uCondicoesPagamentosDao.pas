unit uCondicoesPagamentosDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ConexaoDao;

type
  TDmCondicoesPagamentos = class(TDataModule)
    Querytb_condicoes_padrao: TZQuery;
    Querytb_condicoes_padraocodigo: TIntegerField;
    Querytb_condicoes_padraodescricao: TWideStringField;
    Querytb_condicoes_padraosequencia: TIntegerField;
    Querytb_condicoes_pagamento: TZQuery;
    Querytb_condicoes_pagamentocodigo: TIntegerField;
    Querytb_condicoes_pagamentodescricao: TWideStringField;
    Querytb_condicoes_pagamentocod_cond_padrao: TIntegerField;
    Querytb_condicoes_pagamentoaceita_promocao: TWideStringField;
    Querytb_condicoes_pagamentotipo: TWideStringField;
    Querytb_condicoes_pagamentoentrada: TIntegerField;
    Querytb_condicoes_pagamentoprazo: TIntegerField;
    Querytb_condicoes_pagamentotaxa: TExtendedField;
    Querytb_condicoes_pagamentoativo: TWideStringField;
    Querytb_condicoes_pagamentobanco: TIntegerField;
    Querytb_condicoes_pagamentoconta_corrente: TIntegerField;
    Querytb_condicoes_pagamentoparcelas: TIntegerField;
    Querytb_condicoes_pagamentonome_banco: TWideStringField;
    Querytb_condicoes_pagamentonome_conta_corrente: TWideStringField;
    Querytb_pagamentos_pdv: TZQuery;
    Querytb_pagamentos_pdvcodigo: TIntegerField;
    Querytb_pagamentos_pdvcod_pedido: TIntegerField;
    Querytb_pagamentos_pdvcod_cond_pagto: TIntegerField;
    Querytb_pagamentos_pdvdescricao: TWideStringField;
    Querytb_pagamentos_pdvvalor: TExtendedField;
    Querytb_pagamentos_pdvparcelas: TIntegerField;
    Querytb_pagamentos_pdventrada: TIntegerField;
    Querytb_pagamentos_pdvprazo: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCondicoesPagamentos: TDmCondicoesPagamentos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
