object DmEstoque: TDmEstoque
  OldCreateOrder = False
  Height = 366
  Width = 581
  object Querytb_estoque: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'Select * from tb_estoque where 0 = 1')
    Params = <>
    Left = 248
    Top = 144
    object Querytb_estoquecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_estoquecod_produto: TIntegerField
      FieldName = 'cod_produto'
      Required = True
    end
    object Querytb_estoquedescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object Querytb_estoqueqtd: TExtendedField
      FieldName = 'qtd'
      Required = True
      Precision = 19
    end
    object Querytb_estoquevalor_unitario: TExtendedField
      FieldName = 'valor_unitario'
      Precision = 19
    end
    object Querytb_estoquemovimento: TWideStringField
      FieldName = 'movimento'
      Required = True
      Size = 1
    end
    object Querytb_estoquetipo: TWideStringField
      FieldName = 'tipo'
      Required = True
      Size = 10
    end
    object Querytb_estoquecod_pedido: TIntegerField
      FieldName = 'cod_pedido'
    end
    object Querytb_estoquecod_pedido_compra: TIntegerField
      FieldName = 'cod_pedido_compra'
    end
    object Querytb_estoquenum_nfe: TIntegerField
      FieldName = 'num_nfe'
    end
    object Querytb_estoquenum_nfce: TIntegerField
      FieldName = 'num_nfce'
    end
  end
end
