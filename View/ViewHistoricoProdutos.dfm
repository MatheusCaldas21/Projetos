inherited FrmHistoricoProdutos: TFrmHistoricoProdutos
  Caption = 'Hist'#243'rico dos Produtos'
  ClientHeight = 470
  ClientWidth = 822
  Position = poDesigned
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 834
  ExplicitHeight = 508
  TextHeight = 13
  inherited PnlBody: TPanel
    Width = 822
    Height = 418
    ExplicitWidth = 818
    ExplicitHeight = 417
    object PgControlHistorico: TPageControl
      Left = 1
      Top = 1
      Width = 820
      Height = 416
      ActivePage = TsProdutos
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 816
      ExplicitHeight = 415
      object TsProdutos: TTabSheet
        Caption = 'Produtos'
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 812
          Height = 388
          Align = alClient
          Caption = 'Panel1'
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 808
          ExplicitHeight = 387
          DesignSize = (
            812
            388)
          object DbGridProdutos: TDBGrid
            Left = 18
            Top = 80
            Width = 769
            Height = 299
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = DsProdutos
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEnter = DbGridProdutosEnter
            OnExit = DbGridProdutosExit
            OnKeyPress = DbGridProdutosKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'Descri'#231#227'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'custo_unit'
                Title.Caption = 'Custo Unit.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'preco_venda'
                Title.Caption = 'Valor Venda'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'saldo'
                Title.Caption = 'Saldo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'disponivel'
                Title.Caption = 'Dispon'#237'vel'
                Visible = True
              end>
          end
          object EdtProduto: TEdit
            Left = 18
            Top = 32
            Width = 618
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            ExplicitWidth = 614
          end
          object BtnBuscar: TBitBtn
            Left = 712
            Top = 28
            Width = 75
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
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
            TabOrder = 1
            OnClick = BtnBuscarClick
            ExplicitLeft = 708
          end
        end
      end
      object TsHistorico: TTabSheet
        Caption = 'Hist'#243'rico '
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 812
          Height = 388
          Align = alClient
          Caption = 'Panel2'
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 0
          DesignSize = (
            812
            388)
          object Panel3: TPanel
            Left = 3
            Top = 48
            Width = 806
            Height = 258
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = 'Panel3'
            TabOrder = 0
            DesignSize = (
              806
              258)
            object DbGridHistoricoProd: TDBGrid
              Left = 16
              Top = 16
              Width = 764
              Height = 217
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = DsHistoricoProd
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cod_pedido'
                  Title.Caption = 'Pedido Venda'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_pedido_compra'
                  Title.Caption = 'Pedido Compra'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'valor_unitario'
                  Title.Caption = 'Valor Unit'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtd'
                  Title.Caption = 'QTD'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'num_nfe'
                  Title.Caption = 'NFe'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'num_nfce'
                  Title.Caption = 'NFCe'
                  Visible = True
                end>
            end
          end
          object Panel4: TPanel
            Left = 1
            Top = 312
            Width = 810
            Height = 75
            Align = alBottom
            TabOrder = 1
            object Label1: TLabel
              Left = 18
              Top = 21
              Width = 32
              Height = 16
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 176
              Top = 21
              Width = 57
              Height = 16
              Caption = 'Dispon'#237'vel'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DbEdtSaldo: TDBEdit
              Left = 18
              Top = 43
              Width = 121
              Height = 21
              DataField = 'saldo'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 0
            end
            object DbEdtDisponivel: TDBEdit
              Left = 176
              Top = 43
              Width = 121
              Height = 21
              DataField = 'disponivel'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 1
            end
          end
          object DBEdit1: TDBEdit
            Left = 19
            Top = 16
            Width = 654
            Height = 26
            BorderStyle = bsNone
            Color = clInactiveCaption
            DataField = 'descricao'
            DataSource = DsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
    end
  end
  inherited PnlHeader: TPanel
    Width = 822
    ExplicitWidth = 818
  end
  object QueryProdutos: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_produto with (nolock)')
    Params = <>
    Left = 213
    Top = 5
    object QueryProdutoscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QueryProdutosdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object QueryProdutosunidade: TWideStringField
      FieldName = 'unidade'
      Size = 3
    end
    object QueryProdutossaldo: TExtendedField
      FieldName = 'saldo'
      Precision = 19
    end
    object QueryProdutoscusto_unit: TExtendedField
      FieldName = 'custo_unit'
      Precision = 19
    end
    object QueryProdutospreco_venda: TExtendedField
      FieldName = 'preco_venda'
      Precision = 19
    end
    object QueryProdutosmarca: TWideStringField
      FieldName = 'marca'
      Size = 50
    end
    object QueryProdutosean: TWideStringField
      FieldName = 'ean'
      Size = 13
    end
    object QueryProdutosmarkup: TExtendedField
      FieldName = 'markup'
      Precision = 19
    end
    object QueryProdutosindice: TExtendedField
      FieldName = 'indice'
      Precision = 19
    end
    object QueryProdutosdisponivel: TExtendedField
      FieldName = 'disponivel'
      Precision = 19
    end
  end
  object DsProdutos: TDataSource
    DataSet = QueryProdutos
    Left = 133
    Top = 5
  end
  object DsHistoricoProd: TDataSource
    DataSet = DmEstoque.Querytb_estoque
    Left = 493
    Top = 37
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 568
    Top = 181
  end
end
