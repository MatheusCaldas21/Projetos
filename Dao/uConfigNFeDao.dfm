object DmConfigNfe: TDmConfigNfe
  Height = 317
  Width = 633
  object Querytb_config_nfe: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_config_nfe where 0 = 1')
    Params = <>
    Left = 264
    Top = 128
    object Querytb_config_nfecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object Querytb_config_nfeempresa: TIntegerField
      FieldName = 'empresa'
      Required = True
    end
    object Querytb_config_nfeemail: TWideStringField
      FieldName = 'email'
      Size = 60
    end
    object Querytb_config_nfesenha_email: TWideStringField
      FieldName = 'senha_email'
      Size = 60
    end
    object Querytb_config_nfen_serie_certificado: TWideStringField
      FieldName = 'n_serie_certificado'
      Size = 18
    end
    object Querytb_config_nfesenha_certificado: TWideStringField
      FieldName = 'senha_certificado'
      Size = 10
    end
    object Querytb_config_nfeativo: TWideStringField
      FieldName = 'ativo'
      Size = 1
    end
    object Querytb_config_nfeuf_destino: TWideStringField
      FieldName = 'uf_destino'
      Size = 2
    end
    object Querytb_config_nfetipo_emissao: TWideStringField
      FieldName = 'tipo_emissao'
      Size = 1
    end
    object Querytb_config_nfemargem_direita: TExtendedField
      FieldName = 'margem_direita'
      Precision = 19
    end
    object Querytb_config_nfemargem_esquerda: TExtendedField
      FieldName = 'margem_esquerda'
      Precision = 19
    end
    object Querytb_config_nfemargem_superior: TExtendedField
      FieldName = 'margem_superior'
      Precision = 19
    end
    object Querytb_config_nfemargem_inferior: TExtendedField
      FieldName = 'margem_inferior'
      Precision = 19
    end
    object Querytb_config_nfecasas_decimais: TIntegerField
      FieldName = 'casas_decimais'
    end
    object Querytb_config_nfepasta_schemas: TWideStringField
      FieldName = 'pasta_schemas'
      Size = 100
    end
    object Querytb_config_nfepasta_Nfe: TWideStringField
      FieldName = 'pasta_Nfe'
      Size = 100
    end
    object Querytb_config_nfepasta_inutilizadas: TWideStringField
      FieldName = 'pasta_inutilizadas'
      Size = 100
    end
    object Querytb_config_nfelib_ssl_crypt: TWideStringField
      FieldName = 'lib_ssl_crypt'
    end
    object Querytb_config_nfelib_ssl_http: TWideStringField
      FieldName = 'lib_ssl_http'
    end
    object Querytb_config_nfelib_ssl_xml_sign: TWideStringField
      FieldName = 'lib_ssl_xml_sign'
    end
    object Querytb_config_nfeversao_df: TWideStringField
      FieldName = 'versao_df'
      Size = 10
    end
    object Querytb_config_nfeformato_impressao: TWideStringField
      FieldName = 'formato_impressao'
      Size = 1
    end
    object Querytb_config_nfepasta_canceladas: TWideStringField
      FieldName = 'pasta_canceladas'
      Size = 100
    end
    object Querytb_config_nfepasta_Xml_cce: TWideStringField
      FieldName = 'pasta_Xml_cce'
      Size = 100
    end
    object Querytb_config_nfepasta_Xml_Dpec: TWideStringField
      FieldName = 'pasta_Xml_Dpec'
      Size = 100
    end
    object Querytb_config_nfelib_ssl: TWideStringField
      FieldName = 'lib_ssl'
    end
  end
end
