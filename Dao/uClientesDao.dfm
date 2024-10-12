object DmClientes: TDmClientes
  Height = 480
  Width = 640
  object Querytb_clientes: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_cliente where 0 = 1')
    Params = <>
    Left = 128
    Top = 224
    object Querytb_clientescodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_clientesnome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object Querytb_clientescpf: TWideStringField
      FieldName = 'cpf'
      Size = 11
    end
    object Querytb_clientescep: TWideStringField
      FieldName = 'cep'
      Size = 8
    end
    object Querytb_clientesestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object Querytb_clientescidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object Querytb_clientesbairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object Querytb_clientesendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object Querytb_clientesnum: TWideStringField
      FieldName = 'num'
      Size = 10
    end
    object Querytb_clientesativo: TBooleanField
      FieldName = 'ativo'
    end
    object Querytb_clientesind_iedest: TIntegerField
      FieldName = 'ind_iedest'
    end
    object Querytb_clientesind_final: TIntegerField
      FieldName = 'ind_final'
    end
    object Querytb_clientesobs_nfe: TWideStringField
      FieldName = 'obs_nfe'
      Size = 355
    end
  end
  object Querytb_endereco_cli: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_endereco_cli where codigo_cli = :codigo_cli')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codigo_cli'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo_cli'
        ParamType = ptUnknown
      end>
    object Querytb_endereco_clicodigo: TIntegerField
      FieldName = 'codigo'
    end
    object Querytb_endereco_clicodigo_cli: TIntegerField
      FieldName = 'codigo_cli'
    end
    object Querytb_endereco_cliuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object Querytb_endereco_clicep: TWideStringField
      FieldName = 'cep'
      Size = 8
    end
    object Querytb_endereco_clicidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object Querytb_endereco_clibairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object Querytb_endereco_cliendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object Querytb_endereco_clinum: TWideStringField
      FieldName = 'num'
      Size = 10
    end
    object Querytb_endereco_clireferencia: TWideStringField
      FieldName = 'referencia'
      Size = 150
    end
  end
end
