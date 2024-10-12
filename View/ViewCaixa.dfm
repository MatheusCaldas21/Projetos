inherited FrmCaixa: TFrmCaixa
  Caption = 'Caixa'
  ClientHeight = 441
  ClientWidth = 778
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 790
  ExplicitHeight = 479
  TextHeight = 13
  inherited PnlBody: TPanel
    Width = 778
    Height = 389
    ExplicitWidth = 774
    ExplicitHeight = 388
    object Splitter1: TSplitter
      Left = 1
      Top = 261
      Width = 776
      Height = 5
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 279
      ExplicitWidth = 746
    end
    object Splitter2: TSplitter
      Left = 713
      Top = 1
      Width = 4
      Height = 260
      ExplicitLeft = 337
    end
    object PnlPagamentos: TPanel
      Left = 717
      Top = 1
      Width = 60
      Height = 260
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 56
      ExplicitHeight = 259
      object Splitter3: TSplitter
        Left = 1
        Top = 185
        Width = 58
        Height = 5
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 105
        ExplicitWidth = 492
      end
      object PnlCondPagto: TPanel
        Left = 1
        Top = 1
        Width = 58
        Height = 184
        Align = alTop
        Color = 16445933
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 54
        DesignSize = (
          58
          184)
        object DbGridCondPagto: TDBGrid
          Left = 5
          Top = 40
          Width = 45
          Height = 138
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DsCondPagtoPdv
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = 16745222
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI Semibold'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'valor'
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Title.Caption = 'Descri'#231#227'o'
              Width = 200
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
            end>
        end
        object BtnBaixarPedido: TBitBtn
          Left = -28
          Top = 4
          Width = 78
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Baixar Pedido'
          TabOrder = 1
          OnClick = BtnBaixarPedidoClick
          ExplicitLeft = -32
        end
        object BtnEmitirNfe: TBitBtn
          Left = -124
          Top = 4
          Width = 78
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Emitir NFe'
          TabOrder = 2
          OnClick = BtnBaixarPedidoClick
          ExplicitLeft = -128
        end
      end
      object PnlTitulos: TPanel
        Left = 1
        Top = 190
        Width = 58
        Height = 69
        Align = alClient
        Color = clActiveBorder
        ParentBackground = False
        TabOrder = 1
        ExplicitWidth = 54
        ExplicitHeight = 68
        DesignSize = (
          58
          69)
        object DbGridTitulos: TDBGrid
          Left = 5
          Top = 6
          Width = 44
          Height = 53
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object PnlProdutos: TPanel
      Left = 1
      Top = 266
      Width = 776
      Height = 122
      Align = alBottom
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 265
      ExplicitWidth = 772
      DesignSize = (
        776
        122)
      object DbGridProdutos: TDBGrid
        Left = 8
        Top = 7
        Width = 751
        Height = 104
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
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = 16745222
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI Semibold'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_prod'
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
            FieldName = 'valor_venda'
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
            FieldName = 'total_liquido'
            Title.Caption = 'Total L'#237'quido'
            Visible = True
          end>
      end
    end
    object PnlPedidos: TPanel
      Left = 1
      Top = 1
      Width = 712
      Height = 260
      Align = alLeft
      TabOrder = 2
      ExplicitHeight = 259
      DesignSize = (
        712
        260)
      object DbGridPedidos: TDBGrid
        Left = 8
        Top = 5
        Width = 784
        Height = 242
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DsPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = 16745222
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI Semibold'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'PDV'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_cli'
            Title.Caption = 'C'#243'd. Cli'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_cli'
            Title.Caption = 'Cliente'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_bruto'
            Title.Caption = 'Total Bruto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'desconto'
            Title.Caption = 'Desc'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_liquido'
            Title.Caption = 'Total L'#237'quido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_criacao'
            Title.Caption = 'Data'
            Visible = True
          end>
      end
    end
  end
  inherited PnlHeader: TPanel
    Width = 778
    ExplicitWidth = 774
  end
  object Nfe: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = DanfeNFePDF
    Left = 648
    Top = 4
  end
  object DsPedidos: TDataSource
    DataSet = QueryPedidos
    OnDataChange = DsPedidosDataChange
    Left = 81
    Top = 77
  end
  object DsProdutos: TDataSource
    DataSet = QueryProdutos
    Left = 113
    Top = 352
  end
  object DsCondPagtoPdv: TDataSource
    DataSet = QueryCondPagtoPed
    Left = 518
    Top = 6
  end
  object QueryPedidos: TZQuery
    Connection = DmConexao.ZConnection
    Active = True
    SQL.Strings = (
      'select * from tb_pedido where situacao like '#39'PRE'#39)
    Params = <>
    Left = 161
    Top = 77
    object QueryPedidoscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QueryPedidossituacao: TWideStringField
      FieldName = 'situacao'
      Size = 3
    end
    object QueryPedidoscod_cli: TIntegerField
      FieldName = 'cod_cli'
    end
    object QueryPedidosnome_cli: TWideStringField
      FieldName = 'nome_cli'
      Size = 60
    end
    object QueryPedidosuf_entrega: TWideStringField
      FieldName = 'uf_entrega'
      Size = 2
    end
    object QueryPedidoscep_entrega: TWideStringField
      FieldName = 'cep_entrega'
      Size = 8
    end
    object QueryPedidoscidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object QueryPedidosbairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object QueryPedidosendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object QueryPedidosnum_entrega: TWideStringField
      FieldName = 'num_entrega'
      Size = 10
    end
    object QueryPedidostotal_bruto: TExtendedField
      FieldName = 'total_bruto'
      Precision = 19
    end
    object QueryPedidosdesconto: TExtendedField
      FieldName = 'desconto'
      Precision = 19
    end
    object QueryPedidostotal_liquido: TExtendedField
      FieldName = 'total_liquido'
      Precision = 19
    end
    object QueryPedidosdata_ped: TDateTimeField
      FieldName = 'data_ped'
    end
    object QueryPedidosdata_fat: TDateTimeField
      FieldName = 'data_fat'
    end
    object QueryPedidosusuario: TWideStringField
      FieldName = 'usuario'
      Size = 50
    end
    object QueryPedidosobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object QueryPedidosfrete: TExtendedField
      FieldName = 'frete'
      Precision = 19
    end
    object QueryPedidosdata_criacao: TDateTimeField
      FieldName = 'data_criacao'
    end
  end
  object QueryProdutos: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'Select * from tb_movpedido where cod_ped = :cod_ped')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cod_ped'
        ParamType = ptUnknown
      end>
    Left = 225
    Top = 349
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_ped'
        ParamType = ptUnknown
      end>
    object QueryProdutoscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QueryProdutoscod_prod: TIntegerField
      FieldName = 'cod_prod'
    end
    object QueryProdutosdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object QueryProdutoscod_ped: TIntegerField
      FieldName = 'cod_ped'
    end
    object QueryProdutoscusto_unit: TExtendedField
      FieldName = 'custo_unit'
      Precision = 19
    end
    object QueryProdutoscusto_total: TExtendedField
      FieldName = 'custo_total'
      Precision = 19
    end
    object QueryProdutosvalor_venda: TExtendedField
      FieldName = 'valor_venda'
      Precision = 19
    end
    object QueryProdutosvalor_venda_or: TExtendedField
      FieldName = 'valor_venda_or'
      Precision = 19
    end
    object QueryProdutosqtd: TExtendedField
      FieldName = 'qtd'
      Precision = 19
    end
    object QueryProdutosdesconto: TExtendedField
      FieldName = 'desconto'
      Precision = 19
    end
    object QueryProdutosdesconto_perc: TExtendedField
      FieldName = 'desconto_perc'
      Precision = 19
    end
    object QueryProdutosun: TWideStringField
      FieldName = 'un'
      Size = 2
    end
    object QueryProdutostotal_liquido: TExtendedField
      FieldName = 'total_liquido'
      Precision = 19
    end
    object QueryProdutostotal_bruto: TExtendedField
      FieldName = 'total_bruto'
      Precision = 19
    end
  end
  object QueryCondPagtoPed: TZQuery
    Connection = DmConexao.ZConnection
    Active = True
    SQL.Strings = (
      'Select * from tb_pagamentos_pdv where cod_pedido = :cod_ped')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cod_ped'
        ParamType = ptUnknown
      end>
    Left = 585
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_ped'
        ParamType = ptUnknown
      end>
    object QueryCondPagtoPedcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QueryCondPagtoPedcod_pedido: TIntegerField
      FieldName = 'cod_pedido'
    end
    object QueryCondPagtoPedcod_cond_pagto: TIntegerField
      FieldName = 'cod_cond_pagto'
    end
    object QueryCondPagtoPeddescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object QueryCondPagtoPedvalor: TExtendedField
      FieldName = 'valor'
      Precision = 19
    end
    object QueryCondPagtoPedparcelas: TIntegerField
      FieldName = 'parcelas'
    end
    object QueryCondPagtoPedentrada: TIntegerField
      FieldName = 'entrada'
    end
    object QueryCondPagtoPedprazo: TIntegerField
      FieldName = 'prazo'
    end
  end
  object RelPagamentoPdv: TppReport
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
    Left = 225
    Top = 61
    Version = '22.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 44715
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
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
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2903
        mmLeft = 0
        mmTop = 23283
        mmWidth = 92340
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
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
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
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
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 39688
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
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
        LayerName = Foreground
      end
      object MemoDadosEndereco: TppMemo
        DesignLayer = ppDesignLayer1
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
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
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
        mmHeight = 4233
        mmLeft = 20108
        mmTop = 39688
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
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
        mmHeight = 4233
        mmLeft = 50006
        mmTop = 39688
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'cod_pedido'
        DataPipeline = DppPagamentoPdv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DppPagamentoPdv'
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 27517
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cliente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 33073
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object VarNomeCli: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'VarNomeCli'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 15081
        mmTop = 33073
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
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
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
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
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
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
        mmHeight = 3969
        mmLeft = 50006
        mmTop = 2117
        mmWidth = 14111
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 2646
      mmPrintPosition = 0
    end
    object raCodeModule1: TraCodeModule
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
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'VarNomeCliOnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure VarNomeCliOnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Valu' +
          'e :=  IntToStr(DppPedido['#39'cod_cli'#39'] + '#39' - '#39' + DppPedido['#39'nome_cl' +
          'i'#39']);'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'VarNomeCli'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
        raProgram.CaretPos = (
          75
          4)
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
  object DppPagamentoPdv: TppDBPipeline
    DataSource = DsCondPagtoPdv
    UserName = 'DppPagamentoPdv'
    Left = 209
    Top = 13
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
  end
  object DppEmpresa: TppDBPipeline
    DataSource = DsEmpresa
    UserName = 'DppEmpresa'
    Left = 150
    Top = 14
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
  object QueryEmpresa: TZQuery
    Connection = DmConexao.ZConnection
    SQL.Strings = (
      'select * from tb_empresa')
    Params = <>
    Left = 310
    Top = 65534
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
  object DsEmpresa: TDataSource
    DataSet = QueryEmpresa
    Left = 376
  end
  object DanfeNFePDF: TACBrNFeDANFeFPDF
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ACBrNFe = Nfe
    Left = 694
    Top = 6
  end
  object DppPedido: TppDBPipeline
    DataSource = DsPedidos
    UserName = 'DppPedido'
    Left = 297
    Top = 77
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
end
