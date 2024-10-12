object DmNcm: TDmNcm
  Height = 319
  Width = 572
  object Querytb_ncms: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_ncm where 0 = 1')
    Params = <>
    Left = 208
    Top = 184
    object Querytb_ncmscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_ncmsncm: TWideStringField
      FieldName = 'ncm'
      Size = 8
    end
    object Querytb_ncmsdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object Querytb_ncmsipi: TExtendedField
      FieldName = 'ipi'
      Precision = 19
    end
  end
  object Querytb_regrasfiscais: TZQuery
    Connection = DmConexao.ZConnection
    Active = True
    SQL.Strings = (
      'select * from tb_regras_fiscais where 0 = 1')
    Params = <>
    Left = 416
    Top = 200
    object Querytb_regrasfiscaiscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object Querytb_regrasfiscaistipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object Querytb_regrasfiscaiscst: TWideStringField
      FieldName = 'cst'
      Size = 4
    end
    object Querytb_regrasfiscaisuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object Querytb_regrasfiscaisaliq_icms_inter: TExtendedField
      FieldName = 'aliq_icms_inter'
      Precision = 19
    end
    object Querytb_regrasfiscaisaliq_icms_intra: TExtendedField
      FieldName = 'aliq_icms_intra'
      Precision = 19
    end
    object Querytb_regrasfiscaisdestaca_icms: TWideStringField
      FieldName = 'destaca_icms'
      Size = 1
    end
    object Querytb_regrasfiscaisdestaca_ipi: TWideStringField
      DefaultExpression = 'N'
      FieldName = 'destaca_ipi'
      Size = 1
    end
    object Querytb_regrasfiscaissoma_st_total_nf: TWideStringField
      FieldName = 'soma_st_total_nf'
      Size = 1
    end
    object Querytb_regrasfiscaiscst_cofins: TWideStringField
      FieldName = 'cst_cofins'
      Size = 2
    end
    object Querytb_regrasfiscaisdestaca_st: TWideStringField
      FieldName = 'destaca_st'
      Size = 1
    end
    object Querytb_regrasfiscaiscst_pis: TWideStringField
      FieldName = 'cst_pis'
      Size = 2
    end
    object Querytb_regrasfiscaiscst_ipi: TWideStringField
      FieldName = 'cst_ipi'
      Size = 2
    end
    object Querytb_regrasfiscaisaliq_pis: TExtendedField
      FieldName = 'aliq_pis'
      Precision = 19
    end
    object Querytb_regrasfiscaisaliq_cofins: TExtendedField
      FieldName = 'aliq_cofins'
      Precision = 19
    end
    object Querytb_regrasfiscaisiva: TExtendedField
      FieldName = 'iva'
      Precision = 19
    end
    object Querytb_regrasfiscaisreducao_base: TExtendedField
      FieldName = 'reducao_base'
      Precision = 19
    end
    object Querytb_regrasfiscaisreducao_base_nfce: TExtendedField
      FieldName = 'reducao_base_nfce'
      Precision = 19
    end
    object Querytb_regrasfiscaisreducao_base_st: TExtendedField
      FieldName = 'reducao_base_st'
      Precision = 19
    end
    object Querytb_regrasfiscaisajusta_iva: TWideStringField
      FieldName = 'ajusta_iva'
      Size = 1
    end
    object Querytb_regrasfiscaisutiliza_reducao_base: TWideStringField
      FieldName = 'utiliza_reducao_base'
      Size = 1
    end
    object Querytb_regrasfiscaiscodigo_ncm: TIntegerField
      FieldName = 'codigo_ncm'
    end
    object Querytb_regrasfiscaisutiliza_reducao_base_st: TWideStringField
      FieldName = 'utiliza_reducao_base_st'
      Size = 1
    end
  end
  object Querytb_pis: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_pis')
    Params = <>
    Left = 168
    Top = 48
    object Querytb_piscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_piscst_pis: TWideStringField
      FieldName = 'cst_pis'
      Size = 2
    end
    object Querytb_pisdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
  end
  object Querytb_cofins: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_cofins')
    Params = <>
    Left = 320
    Top = 48
    object Querytb_cofinscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_cofinscst_cofins: TWideStringField
      FieldName = 'cst_cofins'
      Size = 2
    end
    object Querytb_cofinsdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
  end
  object Querytb_cst: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_cst')
    Params = <>
    Left = 480
    Top = 48
    object Querytb_cstcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object Querytb_cstcst: TWideStringField
      FieldName = 'cst'
      Size = 4
    end
    object Querytb_cstdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 80
    end
  end
  object Querytb_ipi: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_ipi')
    Params = <>
    Left = 32
    Top = 48
    object Querytb_ipicodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_ipicst_ipi: TWideStringField
      FieldName = 'cst_ipi'
      Size = 2
    end
    object Querytb_ipidescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
  end
end
