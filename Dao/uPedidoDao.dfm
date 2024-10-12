object DmPedidos: TDmPedidos
  Height = 362
  Width = 494
  object Query_produtos: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      
        'select codigo, descricao, unidade, preco_venda, saldo, marca fro' +
        'm tb_produto')
    Params = <>
    Left = 304
    Top = 176
    object Query_produtoscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Query_produtosdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object Query_produtosunidade: TWideStringField
      FieldName = 'unidade'
      Size = 2
    end
    object Query_produtospreco_venda: TExtendedField
      FieldName = 'preco_venda'
      Precision = 19
    end
    object Query_produtossaldo: TExtendedField
      FieldName = 'saldo'
      Precision = 19
    end
    object Query_produtosmarca: TWideStringField
      FieldName = 'marca'
      Size = 50
    end
  end
  object Query_BuscaProdutos: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      
        'select codigo, descricao, unidade, preco_venda, saldo, marca, cu' +
        'sto_unit, CAST('#39'0.00'#39' AS numeric(15,2)) as qtd from tb_produto'
      'where descricao like :descricao order by descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end>
    object Query_BuscaProdutoscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Query_BuscaProdutosdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object Query_BuscaProdutosunidade: TWideStringField
      FieldName = 'unidade'
      Size = 3
    end
    object Query_BuscaProdutospreco_venda: TExtendedField
      FieldName = 'preco_venda'
      Precision = 19
    end
    object Query_BuscaProdutossaldo: TExtendedField
      FieldName = 'saldo'
      Precision = 19
    end
    object Query_BuscaProdutosmarca: TWideStringField
      FieldName = 'marca'
      Size = 50
    end
    object Query_BuscaProdutoscusto_unit: TExtendedField
      FieldName = 'custo_unit'
      Precision = 19
    end
    object Query_BuscaProdutosqtd: TExtendedField
      FieldName = 'qtd'
      Precision = 19
    end
  end
  object Querytb_movpedidos: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_movpedido  with (nolock) where 0 = 1'
      '')
    Params = <>
    Left = 112
    Top = 48
    object Querytb_movpedidoscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_movpedidoscod_prod: TIntegerField
      FieldName = 'cod_prod'
    end
    object Querytb_movpedidosdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object Querytb_movpedidoscod_ped: TIntegerField
      FieldName = 'cod_ped'
    end
    object Querytb_movpedidoscusto_unit: TExtendedField
      FieldName = 'custo_unit'
      DisplayFormat = '###,##0.000'
      Precision = 3
    end
    object Querytb_movpedidoscusto_total: TExtendedField
      FieldName = 'custo_total'
      DisplayFormat = '###,##0.000'
      Precision = 3
    end
    object Querytb_movpedidosvalor_venda: TExtendedField
      FieldName = 'valor_venda'
      DisplayFormat = '###,##0.000'
      Precision = 3
    end
    object Querytb_movpedidosqtd: TExtendedField
      FieldName = 'qtd'
      Precision = 19
    end
    object Querytb_movpedidostotal_liquido: TExtendedField
      FieldName = 'total_liquido'
      DisplayFormat = '###,##0.000'
      Precision = 3
    end
    object Querytb_movpedidostotal_bruto: TExtendedField
      FieldName = 'total_bruto'
      DisplayFormat = '###,##0.000'
      Precision = 3
    end
    object Querytb_movpedidosdesconto: TExtendedField
      FieldName = 'desconto'
      DisplayFormat = '###,##0.00'
      Precision = 2
    end
    object Querytb_movpedidosdesconto_perc: TExtendedField
      FieldName = 'desconto_perc'
      DisplayFormat = '###,##0.00'
      Precision = 2
    end
    object Querytb_movpedidosun: TWideStringField
      FieldName = 'un'
      Size = 2
    end
    object Querytb_movpedidosvalor_venda_or: TExtendedField
      FieldName = 'valor_venda_or'
      DisplayFormat = '###,##0.000'
      Precision = 3
    end
    object Querytb_movpedidosmarca: TStringField
      FieldKind = fkCalculated
      FieldName = 'marca'
      Size = 60
      Calculated = True
    end
    object Querytb_movpedidossaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo'
      Calculated = True
    end
  end
  object Querytb_pedidos: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_pedido with (nolock) where 0 = 1'
      '')
    Params = <>
    Left = 112
    Top = 168
    object Querytb_pedidoscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_pedidossituacao: TWideStringField
      FieldName = 'situacao'
      Size = 3
    end
    object Querytb_pedidoscod_cli: TIntegerField
      FieldName = 'cod_cli'
    end
    object Querytb_pedidosnome_cli: TWideStringField
      FieldName = 'nome_cli'
      Size = 60
    end
    object Querytb_pedidosuf_entrega: TWideStringField
      FieldName = 'uf_entrega'
      Size = 2
    end
    object Querytb_pedidoscep_entrega: TWideStringField
      FieldName = 'cep_entrega'
      Size = 8
    end
    object Querytb_pedidoscidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object Querytb_pedidosbairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object Querytb_pedidosendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object Querytb_pedidosnum_entrega: TWideStringField
      FieldName = 'num_entrega'
      Size = 10
    end
    object Querytb_pedidostotal_bruto: TExtendedField
      FieldName = 'total_bruto'
      Precision = 19
    end
    object Querytb_pedidosdesconto: TExtendedField
      FieldName = 'desconto'
      DisplayFormat = '###,##0.00'
      Precision = 19
    end
    object Querytb_pedidostotal_liquido: TExtendedField
      FieldName = 'total_liquido'
      Precision = 19
    end
    object Querytb_pedidosdata_ped: TDateTimeField
      FieldName = 'data_ped'
    end
    object Querytb_pedidosdata_fat: TDateTimeField
      FieldName = 'data_fat'
    end
    object Querytb_pedidosusuario: TWideStringField
      FieldName = 'usuario'
      Size = 50
    end
    object Querytb_pedidosobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object Querytb_pedidosfrete: TExtendedField
      FieldName = 'frete'
      Precision = 2
    end
    object Querytb_pedidosdata_criacao: TDateTimeField
      FieldName = 'data_criacao'
    end
  end
end
