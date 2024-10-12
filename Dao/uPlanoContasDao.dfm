object DmPlanoContas: TDmPlanoContas
  OldCreateOrder = False
  Height = 383
  Width = 553
  object Querytb_planocontas: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_plano_contabil where 0 = 1')
    Params = <>
    Left = 280
    Top = 232
    object Querytb_planocontascodigo: TIntegerField
      FieldName = 'codigo'
    end
    object Querytb_planocontasconta: TWideStringField
      FieldName = 'conta'
    end
    object Querytb_planocontasdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 45
    end
    object Querytb_planocontasconta_superior: TIntegerField
      FieldName = 'conta_superior'
    end
    object Querytb_planocontasnome_conta_superior: TWideStringField
      FieldName = 'nome_conta_superior'
      Size = 30
    end
  end
end
