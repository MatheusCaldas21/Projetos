object DmNaturezaOperacao: TDmNaturezaOperacao
  Height = 379
  Width = 535
  object Querytb_natureza_operacao: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_natureza_operacao where 0 = 1')
    Params = <>
    Left = 160
    Top = 144
    object Querytb_natureza_operacaocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object Querytb_natureza_operacaodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object Querytb_natureza_operacaocodigo_tipo_movimento: TIntegerField
      FieldName = 'codigo_tipo_movimento'
      Required = True
    end
    object Querytb_natureza_operacaoordem: TIntegerField
      FieldName = 'ordem'
    end
    object Querytb_natureza_operacaocodigo_empresa: TIntegerField
      FieldName = 'codigo_empresa'
      Required = True
    end
  end
  object Querytb_regras_natureza: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_regras_naturezas where 0 = 1 ')
    Params = <>
    Left = 368
    Top = 160
    object Querytb_regras_naturezacodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_regras_naturezacodigo_natureza_operacao: TIntegerField
      FieldName = 'codigo_natureza_operacao'
    end
    object Querytb_regras_naturezacodigo_cst_icms: TIntegerField
      FieldName = 'codigo_cst_icms'
    end
    object Querytb_regras_naturezacodigo_cst_ipi: TIntegerField
      FieldName = 'codigo_cst_ipi'
    end
    object Querytb_regras_naturezacodigo_cst_pis: TIntegerField
      FieldName = 'codigo_cst_pis'
    end
    object Querytb_regras_naturezacodigo_cst_cofins: TIntegerField
      FieldName = 'codigo_cst_cofins'
    end
    object Querytb_regras_naturezaaliq_pis: TExtendedField
      FieldName = 'aliq_pis'
      Precision = 19
    end
    object Querytb_regras_naturezaaliq_cofins: TExtendedField
      FieldName = 'aliq_cofins'
      Precision = 19
    end
    object Querytb_regras_naturezadestaca_icms: TWideStringField
      FieldName = 'destaca_icms'
      Size = 1
    end
    object Querytb_regras_naturezadestaca_st: TWideStringField
      FieldName = 'destaca_st'
      Size = 1
    end
    object Querytb_regras_naturezasoma_st_total_nf: TWideStringField
      FieldName = 'soma_st_total_nf'
      Size = 1
    end
    object Querytb_regras_naturezadestaca_ipi: TWideStringField
      FieldName = 'destaca_ipi'
      Size = 1
    end
    object Querytb_regras_naturezacfop: TWideStringField
      FieldName = 'cfop'
      EditMask = 'a.aaa;0;_'
      Size = 4
    end
    object Querytb_regras_naturezacfop_inter: TWideStringField
      FieldName = 'cfop_inter'
      EditMask = '0.000;0;_'
      Size = 4
    end
    object Querytb_regras_naturezacfop_ext: TWideStringField
      FieldName = 'cfop_ext'
      EditMask = '0.000;0;_'
      Size = 4
    end
    object Querytb_regras_naturezacst_fixa: TIntegerField
      FieldName = 'cst_fixa'
      ReadOnly = True
    end
  end
end
