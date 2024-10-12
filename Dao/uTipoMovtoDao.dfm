object DmTipoMovimento: TDmTipoMovimento
  OldCreateOrder = False
  Height = 309
  Width = 446
  object Querytb_tipo_movimento: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_tipo_movimento where 0 = 1 ')
    Params = <>
    Left = 192
    Top = 56
    object Querytb_tipo_movimentocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object Querytb_tipo_movimentodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object Querytb_tipo_movimentofinalidade_nfe: TIntegerField
      FieldName = 'finalidade_nfe'
    end
  end
end
