object DmCst: TDmCst
  OldCreateOrder = False
  Height = 261
  Width = 379
  object Querytb_cst: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_cst where 0 = 1')
    Params = <>
    Left = 184
    Top = 120
    object Querytb_cstcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object Querytb_cstcst: TWideStringField
      FieldName = 'cst'
      Size = 4
    end
    object Querytb_cstdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 80
    end
  end
end
