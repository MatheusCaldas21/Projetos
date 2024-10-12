object DmFornecedores: TDmFornecedores
  OldCreateOrder = False
  Height = 357
  Width = 443
  object TZtb_fornecedor: TZTable
    Connection = DmConexao.ZConnection
    TableName = 'dbo.tb_fornecedor'
    Left = 104
    Top = 184
    object TZtb_fornecedorcodigo: TIntegerField
      FieldName = 'codigo'
      KeyFields = 'codigo'
      Required = True
    end
    object TZtb_fornecedornome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object TZtb_fornecedorfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object TZtb_fornecedorcnpj: TWideStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;1;0'
      Size = 14
    end
    object TZtb_fornecedorinscricao_estadual: TWideStringField
      FieldName = 'inscricao_estadual'
      Size = 12
    end
    object TZtb_fornecedorestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object TZtb_fornecedorcidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object TZtb_fornecedorbairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object TZtb_fornecedorendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object TZtb_fornecedornum: TWideStringField
      FieldName = 'num'
      Size = 5
    end
    object TZtb_fornecedorfone: TWideStringField
      FieldName = 'fone'
      Size = 10
    end
    object TZtb_fornecedorfone2: TWideStringField
      FieldName = 'fone2'
      Size = 10
    end
    object TZtb_fornecedoremail: TWideStringField
      FieldName = 'email'
      Size = 40
    end
    object TZtb_fornecedorinativo: TBooleanField
      FieldName = 'inativo'
    end
    object TZtb_fornecedorcep: TWideStringField
      FieldName = 'cep'
      EditMask = '99999-999;'
      Size = 8
    end
  end
  object Querytb_fornecedor: TZQuery
    Connection = DmConexao.ZConnection
    Active = True
    SQL.Strings = (
      'select * from tb_fornecedor where 0 = 1 ')
    Params = <>
    Left = 256
    Top = 184
    object Querytb_fornecedorcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_fornecedornome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object Querytb_fornecedorfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object Querytb_fornecedorcnpj: TWideStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object Querytb_fornecedorinscricao_estadual: TWideStringField
      FieldName = 'inscricao_estadual'
      Size = 12
    end
    object Querytb_fornecedorcep: TWideStringField
      FieldName = 'cep'
      EditMask = '99999-99;0;_'
      Size = 8
    end
    object Querytb_fornecedorestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object Querytb_fornecedorcidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object Querytb_fornecedorbairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object Querytb_fornecedorendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object Querytb_fornecedornum: TWideStringField
      FieldName = 'num'
      Size = 5
    end
    object Querytb_fornecedorfone: TWideStringField
      FieldName = 'fone'
      Size = 10
    end
    object Querytb_fornecedorfone2: TWideStringField
      FieldName = 'fone2'
      Size = 10
    end
    object Querytb_fornecedoremail: TWideStringField
      FieldName = 'email'
      Size = 40
    end
    object Querytb_fornecedorinativo: TBooleanField
      FieldName = 'inativo'
    end
  end
end
