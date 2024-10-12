object DmCondicoesPagamentos: TDmCondicoesPagamentos
  OldCreateOrder = False
  Height = 306
  Width = 533
  object Querytb_condicoes_padrao: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_condicoes_padrao where 0 = 1 ')
    Params = <>
    Left = 184
    Top = 128
    object Querytb_condicoes_padraocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_condicoes_padraodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object Querytb_condicoes_padraosequencia: TIntegerField
      FieldName = 'sequencia'
    end
  end
  object Querytb_condicoes_pagamento: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_condicoes_pagamento where 0 = 1')
    Params = <>
    Left = 360
    Top = 160
    object Querytb_condicoes_pagamentocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_condicoes_pagamentodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object Querytb_condicoes_pagamentocod_cond_padrao: TIntegerField
      FieldName = 'cod_cond_padrao'
      Required = True
    end
    object Querytb_condicoes_pagamentoaceita_promocao: TWideStringField
      DefaultExpression = 'N'
      FieldName = 'aceita_promocao'
      Required = True
      Size = 1
    end
    object Querytb_condicoes_pagamentoentrada: TIntegerField
      FieldName = 'entrada'
    end
    object Querytb_condicoes_pagamentotipo: TWideStringField
      FieldName = 'tipo'
      Size = 30
    end
    object Querytb_condicoes_pagamentoprazo: TIntegerField
      FieldName = 'prazo'
    end
    object Querytb_condicoes_pagamentotaxa: TExtendedField
      FieldName = 'taxa'
      Precision = 19
    end
    object Querytb_condicoes_pagamentoativo: TWideStringField
      DefaultExpression = 'S'
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object Querytb_condicoes_pagamentobanco: TIntegerField
      FieldName = 'banco'
    end
    object Querytb_condicoes_pagamentoconta_corrente: TIntegerField
      FieldName = 'conta_corrente'
    end
    object Querytb_condicoes_pagamentoparcelas: TIntegerField
      FieldName = 'parcelas'
    end
    object Querytb_condicoes_pagamentonome_banco: TWideStringField
      FieldName = 'nome_banco'
      Size = 50
    end
    object Querytb_condicoes_pagamentonome_conta_corrente: TWideStringField
      FieldName = 'nome_conta_corrente'
      Size = 50
    end
  end
  object Querytb_pagamentos_pdv: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_pagamentos_pdv where 0 =1')
    Params = <>
    Left = 288
    Top = 104
    object Querytb_pagamentos_pdvcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_pagamentos_pdvcod_pedido: TIntegerField
      FieldName = 'cod_pedido'
    end
    object Querytb_pagamentos_pdvcod_cond_pagto: TIntegerField
      FieldName = 'cod_cond_pagto'
    end
    object Querytb_pagamentos_pdvdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object Querytb_pagamentos_pdvvalor: TExtendedField
      FieldName = 'valor'
      Precision = 3
    end
    object Querytb_pagamentos_pdvparcelas: TIntegerField
      FieldName = 'parcelas'
    end
    object Querytb_pagamentos_pdventrada: TIntegerField
      FieldName = 'entrada'
    end
    object Querytb_pagamentos_pdvprazo: TIntegerField
      FieldName = 'prazo'
    end
  end
end
