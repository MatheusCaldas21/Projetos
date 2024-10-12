object DmUsuarios: TDmUsuarios
  Height = 296
  Width = 615
  object Querytb_usuario: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_usuario where 0 = 1')
    Params = <>
    Left = 288
    Top = 120
    object Querytb_usuariocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_usuarionome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object Querytb_usuariosenha: TWideStringField
      FieldName = 'senha'
      Size = 50
    end
    object Querytb_usuariocodigo_vendedor: TIntegerField
      FieldName = 'codigo_vendedor'
    end
  end
end
