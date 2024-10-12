object DmVendedores: TDmVendedores
  Height = 294
  Width = 519
  object Querytb_vendedor: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_vendedor where 0 = 1')
    Params = <>
    Left = 192
    Top = 160
    object Querytb_vendedorcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_vendedornome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object Querytb_vendedorativo: TWideStringField
      FieldName = 'ativo'
      Size = 1
    end
    object Querytb_vendedorcomissao: TExtendedField
      FieldName = 'comissao'
      Precision = 19
    end
  end
end
