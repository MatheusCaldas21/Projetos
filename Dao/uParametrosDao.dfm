object DmParametros: TDmParametros
  OldCreateOrder = False
  Height = 389
  Width = 441
  object Querytb_parametros: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_parametros')
    Params = <>
    Left = 256
    Top = 216
    object Querytb_parametrosCaixas: TIntegerField
      FieldName = 'Caixas'
    end
    object Querytb_parametrosBancos: TIntegerField
      FieldName = 'Bancos'
    end
    object Querytb_parametrosClientes: TIntegerField
      FieldName = 'Clientes'
    end
  end
end
