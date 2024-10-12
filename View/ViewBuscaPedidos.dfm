object FrmBuscaPedidos: TFrmBuscaPedidos
  Left = 0
  Top = 0
  Caption = 'Busca de Pedidos'
  ClientHeight = 493
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 13
  object PnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 832
    Height = 493
    Align = alClient
    Color = clAppWorkSpace
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 828
    ExplicitHeight = 492
    object Splitter1: TSplitter
      Left = 1
      Top = 225
      Width = 830
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitWidth = 267
    end
    object PnlBusca: TPanel
      Left = 1
      Top = 1
      Width = 830
      Height = 45
      Align = alTop
      Color = clScrollBar
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 826
      DesignSize = (
        830
        45)
      object BtnBuscaPed: TBitBtn
        Left = 675
        Top = 6
        Width = 100
        Height = 30
        Anchors = [akTop, akRight]
        Caption = 'Pesquisar'
        Glyph.Data = {
          C60A0000424DC60A00000000000036000000280000001A0000001A0000000100
          200000000000900A0000EF130000EF1300000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000006D000000F2000000D30000002E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000072000000FD000000420000
          0078000000EB0000002E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000073000000EA0000
          00C9000000B3000000070000007A000000CD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000730000
          00EA0000002E0000000D000000C5000000B300000052000000E6000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0073000000EA0000002E00000000000000000000000D000000CD000000FC0000
          005C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000073000000EA0000002E0000000000000000000000000000003C0000
          00F0000000600000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000073000000EA0000002E0000000000000000000000000000
          003C000000F00000006000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000006E000000EA0000002E00000000000000000000
          00000000003C000000F000000060000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002000000F50000003A000000000000
          0000000000000000003C000000F0000000600000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000D90000
          007100000000000000000000003C000000F00000006000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0025000000620000007C000000750000004D0000000C00000000000000000000
          00000000007B000000FE000000740000004A000000F000000060000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0034000000C1000000F5000000BB0000009C000000A4000000D3000000F30000
          008B0000000C00000055000000F20000006E000000D3000000EA0000005C0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000065000000F20000007B0000003E00000082000000A4000000280000
          00000000002F000000BC000000DE000000F20000004500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000052000000EF00000042000000A4000000F10000009F0000
          00720000001500000000000000000000000200000091000000DC0000000D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000F000000EA00000053000000BD000000BA0000
          0016000000000000000000000000000000000000000000000000000000010000
          00B90000008F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000071000000BE0000006D0000
          00D2000000090000000000000000000000000000000000000000000000000000
          0000000000000000002A000000F5000000100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000BF0000
          0061000000D80000005100000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000CC00000055000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000E900000041000000FE0000000C0000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000009B0000
          007E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000F100000042000000FC00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000910000008700000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000D800000049000000F50000
          0027000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000AF0000006E0000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000009C0000
          008A000000A90000008D00000000000000000000000000000000000000000000
          000000000000000000000000000000000007000000EE00000032000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003B000000ED0000003B000000F20000004900000000000000000000
          000000000000000000000000000000000000000000000000006B000000CF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000AB000000AF00000053000000F20000
          00880000002000000000000000000000000000000000000000000000002A0000
          00F0000000420000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000011000000D10000
          00AD0000003C000000AF000000F9000000F30000003A00000000000000000000
          0040000000E80000007700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000011000000AF000000EA000000840000004500000041000000280000
          0055000000AF000000F100000062000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000041000000A3000000E10000
          00FB000000F4000000CB0000007F000000170000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000}
        TabOrder = 0
        ExplicitLeft = 671
      end
      object CbTipoPed: TComboBox
        Left = 8
        Top = 12
        Width = 89
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'TODOS'
        Items.Strings = (
          'TODOS'
          'OR'#199'AMENTOS'
          'PRE PEDIDO'
          'FATURADOS'
          'ORC CANC'
          'PED CANC')
      end
      object EdtBuscaPedidos: TEdit
        Left = 121
        Top = 15
        Width = 541
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        ExplicitWidth = 537
      end
    end
    object PnlFundoTop: TPanel
      Left = 1
      Top = 46
      Width = 830
      Height = 179
      Align = alTop
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 826
      DesignSize = (
        830
        179)
      object PnlPedidos: TPanel
        Left = 3
        Top = 6
        Width = 815
        Height = 167
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clMenu
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          815
          167)
        object DbGridPedidos: TDBGrid
          Left = 5
          Top = 6
          Width = 801
          Height = 153
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clBackground
          DataSource = DsPedidos
          FixedColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopUpMenuPedidos
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = 16751157
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnKeyPress = DbGridPedidosKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo'
              Title.Caption = 'C'#243'digo'
              Title.Color = clBtnFace
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Microsoft Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'situacao'
              Title.Caption = 'Sit.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Microsoft Sans Serif'
              Title.Font.Style = []
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_cli'
              Title.Caption = 'C'#243'd. Cliente'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Microsoft Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_cli'
              Title.Caption = 'Cliente'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Microsoft Sans Serif'
              Title.Font.Style = []
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_criacao'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Data'
              Font.Style = []
              Title.Caption = 'Data Ped'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Microsoft Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'total_bruto'
              Title.Caption = 'Total Bruto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Microsoft Sans Serif'
              Title.Font.Style = []
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'desconto'
              Title.Caption = 'Desconto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Microsoft Sans Serif'
              Title.Font.Style = []
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'total_liquido'
              Title.Caption = 'Total L'#237'quido'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Microsoft Sans Serif'
              Title.Font.Style = []
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usuario'
              Title.Caption = 'Operador'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Microsoft Sans Serif'
              Title.Font.Style = []
              Visible = True
            end>
        end
      end
    end
    object PnlProdutos: TPanel
      Left = 1
      Top = 228
      Width = 830
      Height = 264
      Align = alClient
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      ExplicitWidth = 826
      ExplicitHeight = 263
      DesignSize = (
        830
        264)
      object DbGridProdutos: TDBGrid
        Left = 8
        Top = 6
        Width = 815
        Height = 252
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clMenuHighlight
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_prod'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Title.Caption = 'Quant.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'un'
            Title.Caption = 'UN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_venda'
            Title.Caption = 'Valor Unit.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_liquido'
            Title.Caption = 'Valor Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end>
      end
    end
  end
  object DsPedidos: TDataSource
    DataSet = DmPedidos.Querytb_pedidos
    OnDataChange = DsPedidosDataChange
    Left = 440
    Top = 96
  end
  object DsProdutos: TDataSource
    DataSet = DmPedidos.Querytb_movpedidos
    Left = 568
    Top = 96
  end
  object DppPedido: TppDBPipeline
    DataSource = DsPedidos
    UserName = 'DppPedido'
    Left = 673
    Top = 324
    object DppPedidoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'codigo'
      FieldName = 'codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object DppPedidoppField2: TppField
      FieldAlias = 'situacao'
      FieldName = 'situacao'
      FieldLength = 3
      DisplayWidth = 3
      Position = 1
    end
    object DppPedidoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_cli'
      FieldName = 'cod_cli'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object DppPedidoppField4: TppField
      FieldAlias = 'nome_cli'
      FieldName = 'nome_cli'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object DppPedidoppField5: TppField
      FieldAlias = 'uf_entrega'
      FieldName = 'uf_entrega'
      FieldLength = 2
      DisplayWidth = 2
      Position = 4
    end
    object DppPedidoppField6: TppField
      FieldAlias = 'cep_entrega'
      FieldName = 'cep_entrega'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object DppPedidoppField7: TppField
      FieldAlias = 'cidade'
      FieldName = 'cidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object DppPedidoppField8: TppField
      FieldAlias = 'bairro'
      FieldName = 'bairro'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object DppPedidoppField9: TppField
      FieldAlias = 'endereco'
      FieldName = 'endereco'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object DppPedidoppField10: TppField
      FieldAlias = 'num_entrega'
      FieldName = 'num_entrega'
      FieldLength = 10
      DisplayWidth = 10
      Position = 9
    end
    object DppPedidoppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'total_bruto'
      FieldName = 'total_bruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object DppPedidoppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'desconto'
      FieldName = 'desconto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object DppPedidoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'total_liquido'
      FieldName = 'total_liquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object DppPedidoppField14: TppField
      FieldAlias = 'data_ped'
      FieldName = 'data_ped'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object DppPedidoppField15: TppField
      FieldAlias = 'data_fat'
      FieldName = 'data_fat'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object DppPedidoppField16: TppField
      FieldAlias = 'usuario'
      FieldName = 'usuario'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object DppPedidoppField17: TppField
      FieldAlias = 'observacao'
      FieldName = 'observacao'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 16
      Searchable = False
      Sortable = False
    end
    object DppPedidoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'frete'
      FieldName = 'frete'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object DppPedidoppField19: TppField
      FieldAlias = 'data_criacao'
      FieldName = 'data_criacao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 18
    end
  end
  object DppProdutosPed: TppDBPipeline
    DataSource = DsProdutos
    RefreshAfterPost = True
    UserName = 'DppProdutosPed'
    Left = 657
    Top = 268
    object DppProdutosPedppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'codigo'
      FieldName = 'codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object DppProdutosPedppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_prod'
      FieldName = 'cod_prod'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object DppProdutosPedppField3: TppField
      FieldAlias = 'descricao'
      FieldName = 'descricao'
      FieldLength = 70
      DisplayWidth = 70
      Position = 2
    end
    object DppProdutosPedppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_ped'
      FieldName = 'cod_ped'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object DppProdutosPedppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'custo_unit'
      FieldName = 'custo_unit'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object DppProdutosPedppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'custo_total'
      FieldName = 'custo_total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object DppProdutosPedppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'valor_venda'
      FieldName = 'valor_venda'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object DppProdutosPedppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'qtd'
      FieldName = 'qtd'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object DppProdutosPedppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'desconto'
      FieldName = 'desconto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object DppProdutosPedppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'desconto_perc'
      FieldName = 'desconto_perc'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object DppProdutosPedppField11: TppField
      FieldAlias = 'un'
      FieldName = 'un'
      FieldLength = 2
      DisplayWidth = 2
      Position = 10
    end
    object DppProdutosPedppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'valor_venda_or'
      FieldName = 'valor_venda_or'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object DppProdutosPedppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'total_liquido'
      FieldName = 'total_liquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object DppProdutosPedppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'total_bruto'
      FieldName = 'total_bruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object DppProdutosPedppField15: TppField
      FieldAlias = 'marca'
      FieldName = 'marca'
      FieldLength = 60
      DisplayWidth = 60
      Position = 14
    end
    object DppProdutosPedppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'saldo'
      FieldName = 'saldo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
  end
  object RPedido: TppReport
    AutoStop = False
    DataPipeline = DppProdutosPed
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Users\User\Documents\Projetos Delphi\Sistema\Relatorios\RelPe' +
      'dido.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 593
    Top = 260
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'DppProdutosPed'
    object ppTitleBand1: TppTitleBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 2381
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 29369
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 2646
        mmTop = 21960
        mmWidth = 193411
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 2646
        mmTop = 27252
        mmWidth = 193411
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cod.Prod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4498
        mmLeft = 2910
        mmTop = 22799
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4498
        mmLeft = 34396
        mmTop = 22799
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'QTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4498
        mmLeft = 144198
        mmTop = 22799
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 2646
        mmTop = 794
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'codigo'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 5821
        mmLeft = 22754
        mmTop = 794
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#243'd. Cli'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 2381
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'cod_cli'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4233
        mmLeft = 72496
        mmTop = 2381
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 2381
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'nome_cli'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4233
        mmLeft = 112448
        mmTop = 2381
        mmWidth = 84402
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 8996
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'cep_entrega'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4233
        mmLeft = 14288
        mmTop = 8996
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 42069
        mmTop = 8996
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'cidade'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4233
        mmLeft = 56886
        mmTop = 8996
        mmWidth = 51594
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 8996
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'bairro'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4233
        mmLeft = 123031
        mmTop = 8996
        mmWidth = 70644
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 16669
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'endereco'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4233
        mmLeft = 21960
        mmTop = 16669
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 118798
        mmTop = 16669
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'num_entrega'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4233
        mmLeft = 127000
        mmTop = 16669
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6604
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 210080
        mmTop = 1588
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'codigo'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4763
        mmLeft = 224896
        mmTop = 1588
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'cod_prod'
        DataPipeline = DppProdutosPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppProdutosPed'
        mmHeight = 4234
        mmLeft = 2646
        mmTop = 1700
        mmWidth = 20078
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'descricao'
        DataPipeline = DppProdutosPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppProdutosPed'
        mmHeight = 4234
        mmLeft = 34131
        mmTop = 1700
        mmWidth = 106627
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'qtd'
        DataPipeline = DppProdutosPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppProdutosPed'
        mmHeight = 4234
        mmLeft = 144198
        mmTop = 1700
        mmWidth = 16450
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Total Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 136790
        mmTop = 2910
        mmWidth = 20373
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'total_bruto'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4763
        mmLeft = 158221
        mmTop = 2910
        mmWidth = 32808
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Desc '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 139171
        mmTop = 8731
        mmWidth = 17992
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'desconto'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4763
        mmLeft = 158221
        mmTop = 8733
        mmWidth = 32808
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Total L'#237'quido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 133086
        mmTop = 14819
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'total_liquido'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 4763
        mmLeft = 158221
        mmTop = 14819
        mmWidth = 32808
        BandType = 8
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DetailBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 'procedure DetailBeforePrint;'#13#10'begin'#13#10' '#13#10'end;'#13#10
        raProgram.ComponentName = 'Detail'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
        raProgram.CaretPos = (
          2
          3)
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object PopUpMenuPedidos: TPopupMenu
    Left = 185
    Top = 148
    object Imprimir: TMenuItem
      Caption = 'Imprimir'
      OnClick = ImprimirClick
    end
    object I1: TMenuItem
      Caption = 'Imprimir Comprovante de Pagamento'
      OnClick = I1Click
    end
  end
  object RelPagamentoPdv: TppReport
    AutoStop = False
    DataPipeline = DppPagamentoPdv
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 80000
    PrinterSetup.PaperSize = 256
    Template.FileName = 
      'C:\Users\User\Documents\Projetos Delphi\Sistema\Relatorios\Compr' +
      'ovantePagCaixa.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 281
    Top = 333
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'DppPagamentoPdv'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 47625
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'fantasia'
        DataPipeline = DppEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppEmpresa'
        mmHeight = 3969
        mmLeft = 14288
        mmTop = 1323
        mmWidth = 44715
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1914
        mmLeft = 1323
        mmTop = 21960
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pedido :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 27517
        mmWidth = 13613
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 42863
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'cnpj'
        DataPipeline = DppEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppEmpresa'
        mmHeight = 3704
        mmLeft = 22225
        mmTop = 6085
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground1
      end
      object MemoDadosEndereco: TppMemo
        DesignLayer = ppDesignLayer2
        UserName = 'MemoDadosEndereco'
        Border.mmPadding = 0
        Caption = 'MemoDadosEndereco'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 7803
        mmLeft = 9790
        mmTop = 10848
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Condi'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 42863
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 50006
        mmTop = 42863
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#243'd Cli :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 32248
        mmWidth = 13281
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'cod_cli'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 32248
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Nome :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 37275
        mmWidth = 11455
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'nome_cli'
        DataPipeline = DppPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPedido'
        mmHeight = 3969
        mmLeft = 14288
        mmTop = 37306
        mmWidth = 51329
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'valor'
        DataPipeline = DppPagamentoPdv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPagamentoPdv'
        mmHeight = 3968
        mmLeft = 1323
        mmTop = 2117
        mmWidth = 16103
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'descricao'
        DataPipeline = DppPagamentoPdv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPagamentoPdv'
        mmHeight = 3968
        mmLeft = 20108
        mmTop = 2117
        mmWidth = 28840
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'parcelas'
        DataPipeline = DppPagamentoPdv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPagamentoPdv'
        mmHeight = 3969
        mmLeft = 50006
        mmTop = 2117
        mmWidth = 14111
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 2646
      mmPrintPosition = 0
    end
    object raCodeModule2: TraCodeModule
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'HeaderBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure HeaderBeforePrint;'#13#10'begin'#13#10'  MemoDadosEndereco.Text :=' +
          ' DppEmpresa['#39'estado'#39'] + '#39' - '#39' + DppEmpresa['#39'cidade'#39'] + '#39' - '#39' + D' +
          'ppEmpresa['#39'endereco'#39'] + '#39' , '#39' +'#13#10'   DppEmpresa['#39'numero'#39'];'#13#10'end;'#13 +
          #10
        raProgram.ComponentName = 'Header'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
        raProgram.CaretPos = (
          90
          3)
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object DppPagamentoPdv: TppDBPipeline
    DataSource = DsPagamentos
    UserName = 'DppPagamentoPdv'
    Left = 161
    Top = 333
    object DppPagamentoPdvppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'codigo'
      FieldName = 'codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object DppPagamentoPdvppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_pedido'
      FieldName = 'cod_pedido'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object DppPagamentoPdvppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_cond_pagto'
      FieldName = 'cod_cond_pagto'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object DppPagamentoPdvppField4: TppField
      FieldAlias = 'descricao'
      FieldName = 'descricao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object DppPagamentoPdvppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'valor'
      FieldName = 'valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object DppPagamentoPdvppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'parcelas'
      FieldName = 'parcelas'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object DppPagamentoPdvppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'entrada'
      FieldName = 'entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object DppPagamentoPdvppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'prazo'
      FieldName = 'prazo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object DppPagamentoPdvppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'cod_cli'
      FieldName = 'cod_cli'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object DppPagamentoPdvppField10: TppField
      FieldAlias = 'nome_cli'
      FieldName = 'nome_cli'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
  end
  object DppEmpresa: TppDBPipeline
    DataSource = DsEmpresa
    UserName = 'DppEmpresa'
    Left = 54
    Top = 334
    object DppEmpresappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'codigo'
      FieldName = 'codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object DppEmpresappField2: TppField
      FieldAlias = 'razao_social'
      FieldName = 'razao_social'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object DppEmpresappField3: TppField
      FieldAlias = 'fantasia'
      FieldName = 'fantasia'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object DppEmpresappField4: TppField
      FieldAlias = 'cnpj'
      FieldName = 'cnpj'
      FieldLength = 14
      DisplayWidth = 14
      Position = 3
    end
    object DppEmpresappField5: TppField
      FieldAlias = 'ie'
      FieldName = 'ie'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object DppEmpresappField6: TppField
      FieldAlias = 'cep'
      FieldName = 'cep'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object DppEmpresappField7: TppField
      FieldAlias = 'estado'
      FieldName = 'estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 6
    end
    object DppEmpresappField8: TppField
      FieldAlias = 'cidade'
      FieldName = 'cidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object DppEmpresappField9: TppField
      FieldAlias = 'bairro'
      FieldName = 'bairro'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object DppEmpresappField10: TppField
      FieldAlias = 'endereco'
      FieldName = 'endereco'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object DppEmpresappField11: TppField
      FieldAlias = 'numero'
      FieldName = 'numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 10
    end
    object DppEmpresappField12: TppField
      FieldAlias = 'telefone'
      FieldName = 'telefone'
      FieldLength = 11
      DisplayWidth = 11
      Position = 11
    end
    object DppEmpresappField13: TppField
      FieldAlias = 'email'
      FieldName = 'email'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object DppEmpresappField14: TppField
      FieldAlias = 'site'
      FieldName = 'site'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object DppEmpresappField15: TppField
      FieldAlias = 'logo'
      FieldName = 'logo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
  end
  object QueryPagamento: TZQuery
    Connection = DmConexao.ZConnection
    Active = True
    SQL.Strings = (
      'select pdv.*, p.cod_cli, p.nome_cli '
      'from tb_pagamentos_pdv pdv '
      'inner join tb_pedido p on p.codigo = pdv.cod_pedido '
      'where cod_pedido = :cod_pedido')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cod_pedido'
        ParamType = ptUnknown
      end>
    Left = 145
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_pedido'
        ParamType = ptUnknown
      end>
    object QueryPagamentocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QueryPagamentocod_pedido: TIntegerField
      FieldName = 'cod_pedido'
    end
    object QueryPagamentocod_cond_pagto: TIntegerField
      FieldName = 'cod_cond_pagto'
    end
    object QueryPagamentodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object QueryPagamentovalor: TExtendedField
      FieldName = 'valor'
      Precision = 19
    end
    object QueryPagamentoparcelas: TIntegerField
      FieldName = 'parcelas'
    end
    object QueryPagamentoentrada: TIntegerField
      FieldName = 'entrada'
    end
    object QueryPagamentoprazo: TIntegerField
      FieldName = 'prazo'
    end
    object QueryPagamentocod_cli: TIntegerField
      FieldName = 'cod_cli'
    end
    object QueryPagamentonome_cli: TWideStringField
      FieldName = 'nome_cli'
      Size = 60
    end
  end
  object QueryEmpresa: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select top(1) * from tb_empresa')
    Params = <>
    Left = 249
    Top = 276
    object QueryEmpresacodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QueryEmpresarazao_social: TWideStringField
      FieldName = 'razao_social'
      Size = 60
    end
    object QueryEmpresafantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object QueryEmpresacnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object QueryEmpresaie: TWideStringField
      FieldName = 'ie'
      Size = 10
    end
    object QueryEmpresacep: TWideStringField
      FieldName = 'cep'
      Size = 8
    end
    object QueryEmpresaestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object QueryEmpresacidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object QueryEmpresabairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object QueryEmpresaendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object QueryEmpresanumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object QueryEmpresatelefone: TWideStringField
      FieldName = 'telefone'
      Size = 11
    end
    object QueryEmpresaemail: TWideStringField
      FieldName = 'email'
      Size = 50
    end
    object QueryEmpresasite: TWideStringField
      FieldName = 'site'
      Size = 50
    end
    object QueryEmpresalogo: TWideStringField
      FieldName = 'logo'
      Size = 50
    end
  end
  object DsPagamentos: TDataSource
    DataSet = QueryPagamento
    Left = 105
    Top = 412
  end
  object DsEmpresa: TDataSource
    DataSet = QueryEmpresa
    Left = 225
    Top = 412
  end
end
