inherited FrmCondPagtoPdv: TFrmCondPagtoPdv
  Caption = 'Condi'#231#245'es de Pagamentos'
  ClientHeight = 486
  ClientWidth = 781
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 793
  ExplicitHeight = 524
  TextHeight = 13
  inherited PnlBody: TPanel
    Width = 781
    Height = 434
    ExplicitWidth = 777
    ExplicitHeight = 433
    object Splitter1: TSplitter
      Left = 1
      Top = 250
      Width = 779
      Height = 4
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 325
      ExplicitWidth = 711
    end
    object Splitter2: TSplitter
      Left = 394
      Top = 1
      Height = 249
      Align = alRight
      ExplicitLeft = 370
      ExplicitTop = 6
      ExplicitHeight = 264
    end
    object Panel1: TPanel
      Left = 1
      Top = 254
      Width = 779
      Height = 179
      Align = alBottom
      Color = clInactiveCaption
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 253
      ExplicitWidth = 775
      DesignSize = (
        779
        179)
      object Panel4: TPanel
        Left = 1
        Top = 41
        Width = 777
        Height = 137
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 14342874
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 773
        DesignSize = (
          777
          137)
        object DbGridCondPdv: TDBGrid
          Left = 13
          Top = 8
          Width = 752
          Height = 119
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = Dstb_pagamentos_pdv
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'valor'
              Title.Caption = 'Valor'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Title.Caption = 'Descricao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'parcelas'
              Title.Caption = 'Parcelas'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'entrada'
              Title.Caption = 'Entrada'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prazo'
              Title.Caption = 'Prazo'
              Visible = True
            end>
        end
      end
      object EdtValor: TEdit
        Left = 278
        Top = 14
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 1
        Text = '1000'
        OnKeyPress = EdtValorKeyPress
        ExplicitLeft = 274
      end
      object BtnInserir: TBitBtn
        Left = 424
        Top = 10
        Width = 74
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Inserir'
        TabOrder = 2
        OnClick = BtnInserirClick
        ExplicitLeft = 420
      end
      object BtnExcluir: TBitBtn
        Left = 632
        Top = 10
        Width = 131
        Height = 25
        Caption = 'Excluir Lan'#231'amento'
        Glyph.Data = {
          FA090000424DFA09000000000000360000002800000019000000190000000100
          200000000000C4090000A80C0000A80C00000000000000000000000000000000
          0000000000000000000000000000000000A5000000FD000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FD000000AF00000002000000000000000000000000000000000000
          00000000000000000000000000000000001C000000EC0000000C000000060000
          0006000000060000000600000006000000060000000600000006000000060000
          0006000000060000000A000000E2000000290000000000000000000000000000
          00000000000000000000000000000000000000000021000000E3000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000D70000002D00000000000000000000
          0000000000000000000000000000000000000000000000000021000000E30000
          0000000000000000000100000052000000000000000000000052000000000000
          000000000050000000030000000000000000000000D70000002D000000000000
          0000000000000000000000000000000000000000000000000000000000210000
          00E300000000000000000000000C000000F70000000000000000000000FD0000
          000700000000000000EC000000180000000000000000000000D70000002D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0021000000E300000000000000000000000C000000F800000000000000000000
          00FD0000000700000000000000EC000000180000000000000000000000D70000
          002D000000000000000000000000000000000000000000000000000000000000
          000000000021000000E300000000000000000000000C000000F8000000000000
          0000000000FD0000000700000000000000EC0000001800000000000000000000
          00D70000002D0000000000000000000000000000000000000000000000000000
          00000000000000000021000000E300000000000000000000000C000000F80000
          000000000000000000FD0000000700000000000000EC00000018000000000000
          0000000000D70000002D00000000000000000000000000000000000000000000
          0000000000000000000000000021000000E300000000000000000000000C0000
          00F80000000000000000000000FD0000000700000000000000EC000000180000
          000000000000000000D70000002D000000000000000000000000000000000000
          000000000000000000000000000000000021000000E300000000000000000000
          000C000000F80000000000000000000000FD0000000700000000000000EC0000
          00180000000000000000000000D70000002D0000000000000000000000000000
          00000000000000000000000000000000000000000021000000E3000000000000
          00000000000C000000F80000000000000000000000FD00000007000000000000
          00EC000000180000000000000000000000D70000002D00000000000000000000
          0000000000000000000000000000000000000000000000000021000000E30000
          0000000000000000000C000000F80000000000000000000000FD000000070000
          0000000000EC000000180000000000000000000000D70000002D000000000000
          0000000000000000000000000000000000000000000000000000000000210000
          00E300000000000000000000000C000000F80000000000000000000000FD0000
          000700000000000000EC000000180000000000000000000000D70000002D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0021000000E300000000000000000000000C000000F800000000000000000000
          00FD0000000700000000000000EC000000180000000000000000000000D70000
          002D000000000000000000000000000000000000000000000000000000000000
          000000000021000000E300000000000000000000000C000000F8000000000000
          0000000000FD0000000700000000000000EC0000001800000000000000000000
          00D70000002D0000000000000000000000000000000000000000000000000000
          00000000000000000021000000E3000000000000000000000006000000B20000
          000000000000000000B40000000300000000000000AB0000000C000000000000
          0000000000D70000002D00000000000000000000000000000000000000000000
          0000000000000000000000000021000000E30000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000D70000002D000000000000000000000000000000000000
          000000000000000000000000000000000021000000E300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000D70000002D0000000000000000000000000000
          000000000000000000000000000000000018000000AD000000F5000000A10000
          00A1000000A1000000A1000000A1000000A1000000A1000000A1000000A10000
          00A1000000A1000000A1000000A1000000F0000000B200000020000000000000
          00000000000000000000000000000000000000000026000000EB000000630000
          0063000000630000006300000063000000630000006300000063000000630000
          00630000006300000063000000630000006300000063000000E3000000320000
          0000000000000000000000000000000000000000000000000026000000DE0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000D20000
          00320000000000000000000000000000000000000000000000000000000E0000
          00EC000000970000009200000092000000920000009200000092000000920000
          0092000000920000009200000092000000920000009200000092000000950000
          00ED000000150000000000000000000000000000000000000000000000000000
          00000000002B00000071000000720000007200000072000000BE000000B60000
          00720000007200000072000000AF000000C50000007200000072000000720000
          0071000000300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000850000
          008C000000030000000300000003000000800000009100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          002A000000E1000000FE000000FE000000FE000000E600000032000000000000
          000000000000000000000000000000000000000000000000000000000000}
        TabOrder = 3
        OnClick = BtnExcluirClick
      end
    end
    object Panel2: TPanel
      Left = 397
      Top = 1
      Width = 383
      Height = 249
      Align = alRight
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 393
      ExplicitHeight = 248
      DesignSize = (
        383
        249)
      object DbGridCondPagto: TDBGrid
        Left = 17
        Top = 5
        Width = 350
        Height = 233
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DsCondPagto
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = DbGridCondPagtoKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'parcelas'
            Title.Caption = 'Parcelas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'entrada'
            Title.Caption = 'Entrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prazo'
            Title.Caption = 'Prazo'
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 393
      Height = 249
      Align = alClient
      TabOrder = 2
      ExplicitWidth = 389
      ExplicitHeight = 248
      DesignSize = (
        393
        249)
      object DbGridCondPadrao: TDBGrid
        Left = 14
        Top = 7
        Width = 366
        Height = 231
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DsCondPadrao
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = DbGridCondPadraoKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Condi'#231#227'o Padr'#227'o'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sequencia'
            ReadOnly = False
            Title.Caption = 'Sequ'#234'ncia'
            Visible = True
          end>
      end
    end
  end
  inherited PnlHeader: TPanel
    Width = 781
    ExplicitWidth = 777
  end
  object DsCondPadrao: TDataSource
    DataSet = QueryCondPadrao
    OnDataChange = DsCondPadraoDataChange
    Left = 161
    Top = 109
  end
  object DsCondPagto: TDataSource
    DataSet = QueryCondPagto
    Left = 502
    Top = 93
  end
  object QueryCondPadrao: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_condicoes_padrao order by sequencia')
    Params = <>
    Left = 297
    Top = 109
    object QueryCondPadraocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QueryCondPadraodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object QueryCondPadraosequencia: TIntegerField
      FieldName = 'sequencia'
    end
  end
  object QueryCondPagto: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      
        'select * from tb_condicoes_pagamento where cod_cond_padrao = :co' +
        'd_cond_padrao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cod_cond_padrao'
        ParamType = ptUnknown
      end>
    Left = 702
    Top = 93
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_cond_padrao'
        ParamType = ptUnknown
      end>
    object QueryCondPagtocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QueryCondPagtodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object QueryCondPagtocod_cond_padrao: TIntegerField
      FieldName = 'cod_cond_padrao'
      Required = True
    end
    object QueryCondPagtoaceita_promocao: TWideStringField
      FieldName = 'aceita_promocao'
      Required = True
      Size = 1
    end
    object QueryCondPagtotipo: TWideStringField
      FieldName = 'tipo'
      Size = 30
    end
    object QueryCondPagtoentrada: TIntegerField
      FieldName = 'entrada'
    end
    object QueryCondPagtoprazo: TIntegerField
      FieldName = 'prazo'
    end
    object QueryCondPagtotaxa: TExtendedField
      FieldName = 'taxa'
      Precision = 19
    end
    object QueryCondPagtoativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object QueryCondPagtobanco: TIntegerField
      FieldName = 'banco'
    end
    object QueryCondPagtoconta_corrente: TIntegerField
      FieldName = 'conta_corrente'
    end
    object QueryCondPagtoparcelas: TIntegerField
      FieldName = 'parcelas'
    end
  end
  object Dstb_pagamentos_pdv: TDataSource
    DataSet = DmCondicoesPagamentos.Querytb_pagamentos_pdv
    Left = 151
    Top = 405
  end
end
