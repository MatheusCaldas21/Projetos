object DmMarcas: TDmMarcas
  OldCreateOrder = False
  Height = 290
  Width = 440
  object TZtb_marca: TZTable
    Connection = DmConexao.ZConnection
    TableName = 'dbo.tb_marca'
    Left = 136
    Top = 112
    object TZtb_marcacodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object TZtb_marcadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object Querytb_marca: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_marca where 0 =1 ')
    Params = <>
    Left = 240
    Top = 88
    object Querytb_marcacodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_marcadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
end
