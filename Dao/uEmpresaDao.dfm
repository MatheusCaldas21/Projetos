object DmEmpresas: TDmEmpresas
  OldCreateOrder = False
  Height = 366
  Width = 518
  object Querytb_empresa: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_empresa where 0 = 1')
    Params = <>
    Left = 240
    Top = 152
    object Querytb_empresacodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_empresarazao_social: TWideStringField
      FieldName = 'razao_social'
      Size = 60
    end
    object Querytb_empresafantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object Querytb_empresacnpj: TWideStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object Querytb_empresaie: TWideStringField
      FieldName = 'ie'
      Size = 10
    end
    object Querytb_empresacep: TWideStringField
      FieldName = 'cep'
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object Querytb_empresaestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object Querytb_empresacidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object Querytb_empresabairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object Querytb_empresaendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object Querytb_empresanumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object Querytb_empresatelefone: TWideStringField
      FieldName = 'telefone'
      Size = 11
    end
    object Querytb_empresaemail: TWideStringField
      FieldName = 'email'
      Size = 50
    end
    object Querytb_empresasite: TWideStringField
      FieldName = 'site'
      Size = 50
    end
    object Querytb_empresalogo: TWideStringField
      FieldName = 'logo'
      Size = 50
    end
  end
end
