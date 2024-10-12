object DmProdutos: TDmProdutos
  Height = 335
  Width = 514
  object Query_marca: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'SELECT descricao as marca from tb_marca')
    Params = <>
    Left = 200
    Top = 136
    object Query_marcamarca: TWideStringField
      FieldName = 'marca'
      Size = 50
    end
  end
  object Query_unidade: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'SELECT unidade from tb_unidade')
    Params = <>
    Left = 288
    Top = 136
  end
  object Querytb_produtos: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_produto where 0 =1 ')
    Params = <>
    Left = 392
    Top = 136
    object Querytb_produtoscodigo: TIntegerField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object Querytb_produtosdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object Querytb_produtosunidade: TWideStringField
      FieldName = 'unidade'
      Size = 3
    end
    object Querytb_produtossaldo: TExtendedField
      FieldName = 'saldo'
      Precision = 19
    end
    object Querytb_produtoscusto_unit: TExtendedField
      FieldName = 'custo_unit'
      Precision = 19
    end
    object Querytb_produtospreco_venda: TExtendedField
      FieldName = 'preco_venda'
      Precision = 19
    end
    object Querytb_produtosmarca: TWideStringField
      FieldName = 'marca'
      Size = 50
    end
    object Querytb_produtosean: TWideStringField
      FieldName = 'ean'
      Size = 13
    end
    object Querytb_produtosmarkup: TExtendedField
      DefaultExpression = '0'
      FieldName = 'markup'
      Precision = 19
    end
    object Querytb_produtosindice: TExtendedField
      DefaultExpression = '0'
      FieldName = 'indice'
      Precision = 19
    end
    object Querytb_produtosdisponivel: TExtendedField
      FieldName = 'disponivel'
      Precision = 19
    end
    object Querytb_produtoscod_ncm: TIntegerField
      FieldName = 'cod_ncm'
    end
    object Querytb_produtoscod_departamento: TIntegerField
      FieldName = 'cod_departamento'
    end
    object Querytb_produtoscod_divisao: TIntegerField
      FieldName = 'cod_divisao'
      ReadOnly = True
    end
    object Querytb_produtosdesconto_maximo: TExtendedField
      FieldName = 'desconto_maximo'
      ReadOnly = True
      Precision = 19
    end
  end
end
