object DmEnderecosCli: TDmEnderecosCli
  OldCreateOrder = False
  Height = 402
  Width = 584
  object Querytb_endereco_entrega_cli: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_endereco_cli where 0 = 1')
    Params = <>
    Left = 344
    Top = 208
    object Querytb_endereco_entrega_clicodigo: TIntegerField
      FieldName = 'codigo'
    end
    object Querytb_endereco_entrega_clicodigo_cli: TIntegerField
      FieldName = 'codigo_cli'
    end
    object Querytb_endereco_entrega_cliuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object Querytb_endereco_entrega_clicep: TWideStringField
      FieldName = 'cep'
      Size = 8
    end
    object Querytb_endereco_entrega_clicidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object Querytb_endereco_entrega_clibairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object Querytb_endereco_entrega_cliendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object Querytb_endereco_entrega_clinum: TWideStringField
      FieldName = 'num'
      Size = 10
    end
    object Querytb_endereco_entrega_clireferencia: TWideStringField
      FieldName = 'referencia'
      Size = 150
    end
  end
end
