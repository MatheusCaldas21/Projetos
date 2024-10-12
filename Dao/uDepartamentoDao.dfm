object DmDepartamentos: TDmDepartamentos
  OldCreateOrder = False
  Height = 371
  Width = 546
  object TZtb_departamento: TZTable
    Connection = DmConexao.ZConnection
    TableName = 'dbo.tb_departamento'
    Left = 120
    Top = 120
    object TZtb_departamentocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object TZtb_departamentodepartamento: TWideStringField
      FieldName = 'departamento'
      Required = True
      Size = 50
    end
  end
  object Querytb_departamento: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_departamento where 0 =1 ')
    Params = <>
    Left = 256
    Top = 120
    object Querytb_departamentocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_departamentodepartamento: TWideStringField
      FieldName = 'departamento'
      Required = True
      Size = 50
    end
  end
end
