inherited FrmNcm: TFrmNcm
  Caption = 'Cadastro e Consulta de NCMs'
  ClientHeight = 531
  ClientWidth = 895
  OnShow = FormShow
  ExplicitWidth = 911
  ExplicitHeight = 570
  TextHeight = 13
  inherited PnlHeader: TPanel
    Width = 895
    ExplicitWidth = 899
  end
  inherited PnlBody: TPanel
    Width = 895
    Height = 479
    ExplicitWidth = 899
    ExplicitHeight = 480
    inherited PnlBotoes: TPanel
      Width = 897
      ExplicitWidth = 897
      DesignSize = (
        893
        36)
      inherited BtnExcluir: TBitBtn
        Left = 639
        ExplicitLeft = 647
      end
      inherited BtnCancelar: TBitBtn
        Left = 722
        ExplicitLeft = 730
      end
      inherited BtnNovo: TBitBtn
        Left = 558
        ExplicitLeft = 566
      end
      inherited BtnSalvar: TBitBtn
        Left = 806
        ExplicitLeft = 814
      end
      inherited BtnAlterar: TBitBtn
        Left = 477
        ExplicitLeft = 485
      end
    end
    inherited PageControl1: TPageControl
      Width = 893
      Height = 441
      ActivePage = TsCadastro
      ExplicitWidth = 897
      ExplicitHeight = 442
      inherited TsConsulta: TTabSheet
        ExplicitWidth = 889
        ExplicitHeight = 413
        DesignSize = (
          885
          412)
        object Label19: TLabel [0]
          Left = 13
          Top = 352
          Width = 37
          Height = 14
          Caption = 'C'#243'digo'
          FocusControl = DBEdit13
        end
        object Label20: TLabel [1]
          Left = 181
          Top = 352
          Width = 24
          Height = 14
          Caption = 'NCM'
          FocusControl = DBEdit14
        end
        object Label21: TLabel [2]
          Left = 317
          Top = 352
          Width = 51
          Height = 14
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit15
        end
        object Label22: TLabel [3]
          Left = 733
          Top = 352
          Width = 42
          Height = 14
          Caption = 'Al'#237'q. IPI'
          FocusControl = DBEdit16
        end
        inherited BtnBuscar: TBitBtn
          Left = 768
          OnClick = BtnBuscarClick
          ExplicitLeft = 776
        end
        inherited DBGrid1: TDBGrid
          Width = 827
          Height = 244
          DataSource = Dstb_ncm
          Columns = <
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'codigo'
              Title.Caption = 'C'#243'digo'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ncm'
              Title.Caption = 'NCM'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Title.Caption = 'Descri'#231#227'o'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ipi'
              Title.Caption = 'IPI'
              Visible = True
            end>
        end
        inherited EdtBusca: TEdit
          Width = 707
          ExplicitWidth = 715
        end
        object DBEdit13: TDBEdit
          Left = 13
          Top = 368
          Width = 134
          Height = 22
          DataField = 'codigo'
          DataSource = Dstb_ncm
          Enabled = False
          TabOrder = 3
        end
        object DBEdit14: TDBEdit
          Left = 181
          Top = 368
          Width = 108
          Height = 22
          DataField = 'ncm'
          DataSource = Dstb_ncm
          TabOrder = 4
        end
        object DBEdit15: TDBEdit
          Left = 317
          Top = 368
          Width = 401
          Height = 22
          DataField = 'descricao'
          DataSource = Dstb_ncm
          TabOrder = 5
        end
        object DBEdit16: TDBEdit
          Left = 733
          Top = 368
          Width = 134
          Height = 22
          DataField = 'ipi'
          DataSource = Dstb_ncm
          TabOrder = 6
        end
      end
      inherited TsCadastro: TTabSheet
        ExplicitWidth = 885
        ExplicitHeight = 412
        object PnlCadastrosRegrasFiscais: TPanel
          Left = 0
          Top = 0
          Width = 889
          Height = 413
          Align = alClient
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 1
            Top = 229
            Width = 887
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitTop = 163
            ExplicitWidth = 41
          end
          object PnlRegrasFiscais: TPanel
            Left = 1
            Top = 1
            Width = 887
            Height = 228
            Align = alTop
            Color = 16248550
            ParentBackground = False
            TabOrder = 0
            object Label5: TLabel
              Left = 9
              Top = 115
              Width = 59
              Height = 14
              Caption = 'CST de IPI'
            end
            object Label6: TLabel
              Left = 7
              Top = 64
              Width = 58
              Height = 14
              Caption = 'CST de Pis'
            end
            object Label7: TLabel
              Left = 407
              Top = 64
              Width = 76
              Height = 14
              Caption = 'CST de Cofins'
            end
            object Label8: TLabel
              Left = 295
              Top = 64
              Width = 41
              Height = 14
              Caption = 'Al'#237'q. Pis'
            end
            object Label9: TLabel
              Left = 690
              Top = 64
              Width = 59
              Height = 14
              Caption = 'Al'#237'q. Cofins'
            end
            object Label10: TLabel
              Left = 9
              Top = 11
              Width = 14
              Height = 14
              Caption = 'UF'
            end
            object Label11: TLabel
              Left = 148
              Top = 11
              Width = 53
              Height = 14
              Caption = 'CST ICMS'
            end
            object Label12: TLabel
              Left = 352
              Top = 11
              Width = 57
              Height = 14
              Caption = 'ICMS Intra'
            end
            object Label13: TLabel
              Left = 431
              Top = 11
              Width = 58
              Height = 14
              Caption = 'ICMS Inter'
            end
            object Label14: TLabel
              Left = 527
              Top = 11
              Width = 20
              Height = 14
              Caption = 'IVA'
            end
            object Label15: TLabel
              Left = 608
              Top = 11
              Width = 50
              Height = 14
              Caption = 'Red Base'
            end
            object Label16: TLabel
              Left = 696
              Top = 11
              Width = 82
              Height = 14
              Caption = 'Red Base NFCe'
            end
            object Label17: TLabel
              Left = 810
              Top = 11
              Width = 69
              Height = 14
              Caption = 'Red Base ST'
            end
            object Label18: TLabel
              Left = 65
              Top = 11
              Width = 24
              Height = 14
              Caption = 'Tipo'
            end
            object DbCbUf: TDBComboBox
              Left = 7
              Top = 31
              Width = 45
              Height = 22
              DataField = 'uf'
              DataSource = Dstb_regras_fiscais
              TabOrder = 0
            end
            object DbCbCst: TDBComboBox
              Left = 148
              Top = 31
              Width = 177
              Height = 22
              DataField = 'cst'
              DataSource = Dstb_regras_fiscais
              TabOrder = 2
            end
            object DBEdit5: TDBEdit
              Left = 352
              Top = 31
              Width = 65
              Height = 22
              DataField = 'aliq_icms_intra'
              DataSource = Dstb_regras_fiscais
              TabOrder = 3
            end
            object DBEdit6: TDBEdit
              Left = 432
              Top = 31
              Width = 65
              Height = 22
              DataField = 'aliq_icms_inter'
              DataSource = Dstb_regras_fiscais
              TabOrder = 4
            end
            object DBEdit7: TDBEdit
              Left = 527
              Top = 31
              Width = 65
              Height = 22
              DataField = 'iva'
              DataSource = Dstb_regras_fiscais
              TabOrder = 5
            end
            object DBEdit8: TDBEdit
              Left = 608
              Top = 31
              Width = 65
              Height = 22
              DataField = 'reducao_base'
              DataSource = Dstb_regras_fiscais
              TabOrder = 6
            end
            object DBEdit9: TDBEdit
              Left = 696
              Top = 31
              Width = 65
              Height = 22
              DataField = 'reducao_base_nfce'
              DataSource = Dstb_regras_fiscais
              TabOrder = 7
            end
            object DbCbCstPis: TDBComboBox
              Left = 7
              Top = 84
              Width = 266
              Height = 22
              DataField = 'cst_pis'
              DataSource = Dstb_regras_fiscais
              TabOrder = 9
            end
            object DbCbCstCofins: TDBComboBox
              Left = 407
              Top = 84
              Width = 266
              Height = 22
              DataField = 'cst_cofins'
              DataSource = Dstb_regras_fiscais
              TabOrder = 11
            end
            object DBEdit10: TDBEdit
              Left = 295
              Top = 84
              Width = 42
              Height = 22
              DataField = 'aliq_pis'
              DataSource = Dstb_regras_fiscais
              TabOrder = 10
            end
            object DBEdit11: TDBEdit
              Left = 690
              Top = 84
              Width = 42
              Height = 22
              DataField = 'aliq_cofins'
              DataSource = Dstb_regras_fiscais
              TabOrder = 12
            end
            object DbCbCstIpi: TDBComboBox
              Left = 7
              Top = 135
              Width = 418
              Height = 22
              DataField = 'cst_ipi'
              DataSource = Dstb_regras_fiscais
              TabOrder = 13
            end
            object DbCheckDestacaICMS: TDBCheckBox
              Left = 7
              Top = 171
              Width = 97
              Height = 17
              Caption = 'Destaca ICMS'
              DataField = 'destaca_icms'
              DataSource = Dstb_regras_fiscais
              TabOrder = 14
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 175
              Top = 171
              Width = 97
              Height = 17
              Caption = 'Destaca IPI'
              DataField = 'destaca_ipi'
              DataSource = Dstb_regras_fiscais
              TabOrder = 15
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 312
              Top = 171
              Width = 97
              Height = 17
              Caption = 'Destaca ST'
              DataField = 'destaca_st'
              DataSource = Dstb_regras_fiscais
              TabOrder = 16
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox4: TDBCheckBox
              Left = 456
              Top = 171
              Width = 145
              Height = 17
              Caption = 'Soma ST no Total NFe'
              DataField = 'soma_st_total_nf'
              DataSource = Dstb_regras_fiscais
              TabOrder = 17
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox5: TDBCheckBox
              Left = 7
              Top = 198
              Width = 97
              Height = 17
              Caption = 'Ajustar IVA'
              DataField = 'ajusta_iva'
              DataSource = Dstb_regras_fiscais
              TabOrder = 18
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox6: TDBCheckBox
              Left = 175
              Top = 198
              Width = 108
              Height = 17
              Caption = 'Utiliza Red Base ICMS'
              DataField = 'utiliza_reducao_base'
              DataSource = Dstb_regras_fiscais
              TabOrder = 19
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox7: TDBCheckBox
              Left = 312
              Top = 198
              Width = 154
              Height = 17
              Caption = 'Utiliza Red Base ICMS ST'
              DataField = 'utiliza_reducao_base_st'
              DataSource = Dstb_regras_fiscais
              TabOrder = 20
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBEdit12: TDBEdit
              Left = 810
              Top = 31
              Width = 65
              Height = 22
              DataField = 'reducao_base_st'
              DataSource = Dstb_regras_fiscais
              TabOrder = 8
            end
            object DbCbTipo: TDBComboBox
              Left = 65
              Top = 31
              Width = 71
              Height = 22
              DataField = 'tipo'
              DataSource = Dstb_regras_fiscais
              Items.Strings = (
                'Venda'
                'Compra')
              TabOrder = 1
            end
          end
          object PnlGridRegras: TPanel
            Left = 1
            Top = 232
            Width = 883
            Height = 179
            Align = alClient
            Color = 16699068
            ParentBackground = False
            TabOrder = 1
            ExplicitWidth = 887
            ExplicitHeight = 180
            DesignSize = (
              883
              179)
            object lblRegrasNcm: TLabel
              Left = 7
              Top = 10
              Width = 81
              Height = 14
              Caption = 'Regras da NCM'
            end
            object DbGridRegras: TDBGrid
              Left = 7
              Top = 30
              Width = 846
              Height = 144
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = Dstb_regras_fiscais
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'uf'
                  Title.Caption = 'UF'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cst'
                  Title.Caption = 'CST'
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'destaca_icms'
                  Title.Caption = 'Destaca ICMS'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'destaca_ipi'
                  Title.Caption = 'Destaca IPI'
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object Dstb_ncm: TDataSource
    DataSet = DmNcm.Querytb_ncms
    OnDataChange = Dstb_ncmDataChange
    Left = 296
    Top = 52
  end
  object Dstb_regras_fiscais: TDataSource
    DataSet = DmNcm.Querytb_regrasfiscais
    OnDataChange = Dstb_regras_fiscaisDataChange
    Left = 176
    Top = 52
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 408
    Top = 52
  end
  object Dstb_regras: TDataSource
    DataSet = QueryRegras
    Left = 40
    Top = 52
  end
  object QueryRegras: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_regras_fiscais where codigo_ncm = :codigo_ncm')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codigo_ncm'
        ParamType = ptUnknown
      end>
    Left = 568
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo_ncm'
        ParamType = ptUnknown
      end>
    object QueryRegrascodigo: TIntegerField
      FieldName = 'codigo'
    end
    object QueryRegrastipo: TWideStringField
      FieldName = 'tipo'
      ReadOnly = True
      Size = 1
    end
    object QueryRegrascst: TWideStringField
      FieldName = 'cst'
      Size = 4
    end
    object QueryRegrasuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object QueryRegrasaliq_icms_inter: TExtendedField
      FieldName = 'aliq_icms_inter'
      Precision = 19
    end
    object QueryRegrasaliq_icms_intra: TExtendedField
      FieldName = 'aliq_icms_intra'
      Precision = 19
    end
    object QueryRegrasdestaca_icms: TWideStringField
      FieldName = 'destaca_icms'
      Size = 1
    end
    object QueryRegrasdestaca_ipi: TWideStringField
      FieldName = 'destaca_ipi'
      Size = 1
    end
    object QueryRegrasdestaca_st: TWideStringField
      FieldName = 'destaca_st'
      Size = 1
    end
    object QueryRegrassoma_st_total_nf: TWideStringField
      FieldName = 'soma_st_total_nf'
      Size = 1
    end
    object QueryRegrascst_pis: TWideStringField
      FieldName = 'cst_pis'
      Size = 2
    end
    object QueryRegrascst_cofins: TWideStringField
      FieldName = 'cst_cofins'
      Size = 2
    end
    object QueryRegrascst_ipi: TWideStringField
      FieldName = 'cst_ipi'
      Size = 2
    end
    object QueryRegrasaliq_pis: TExtendedField
      FieldName = 'aliq_pis'
      Precision = 19
    end
    object QueryRegrasaliq_cofins: TExtendedField
      FieldName = 'aliq_cofins'
      Precision = 19
    end
    object QueryRegrasiva: TExtendedField
      FieldName = 'iva'
      Precision = 19
    end
    object QueryRegrasreducao_base: TExtendedField
      FieldName = 'reducao_base'
      Precision = 19
    end
    object QueryRegrasreducao_base_nfce: TExtendedField
      FieldName = 'reducao_base_nfce'
      Precision = 19
    end
    object QueryRegrasreducao_base_st: TExtendedField
      FieldName = 'reducao_base_st'
      Precision = 19
    end
    object QueryRegrasajusta_iva: TWideStringField
      FieldName = 'ajusta_iva'
      Size = 1
    end
    object QueryRegrasutiliza_reducao_base: TWideStringField
      FieldName = 'utiliza_reducao_base'
      Size = 1
    end
    object QueryRegrasutiliza_reducao_base_st: TWideStringField
      FieldName = 'utiliza_reducao_base_st'
      Size = 1
    end
    object QueryRegrascodigo_ncm: TIntegerField
      FieldName = 'codigo_ncm'
      ReadOnly = True
    end
  end
end
