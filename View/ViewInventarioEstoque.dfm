inherited FrmInventarioEstoque: TFrmInventarioEstoque
  Caption = 'Invent'#225'rio de Estoque'
  ClientHeight = 486
  ClientWidth = 885
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 897
  ExplicitHeight = 524
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 232
    Top = 40
    Width = 23
    Height = 22
  end
  inherited PnlBody: TPanel
    Width = 885
    Height = 434
    ExplicitWidth = 881
    ExplicitHeight = 433
    object PnlTipoRelatorio: TPanel
      Left = 16
      Top = 43
      Width = 857
      Height = 35
      Anchors = [akLeft, akTop, akRight]
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 853
      object RadioButton5: TRadioButton
        Left = 16
        Top = 8
        Width = 106
        Height = 17
        Caption = 'Saldo P/Marcas'
        Color = clGradientActiveCaption
        ParentColor = False
        TabOrder = 0
      end
      object RadioButton6: TRadioButton
        Left = 166
        Top = 8
        Width = 115
        Height = 17
        Caption = 'Saldo P/Fornecedor'
        Color = clGradientActiveCaption
        ParentColor = False
        TabOrder = 1
      end
      object RadioButton7: TRadioButton
        Left = 316
        Top = 8
        Width = 124
        Height = 17
        Caption = 'Sem Custo/Vlr Venda'
        Color = clGradientActiveCaption
        ParentColor = False
        TabOrder = 2
      end
      object RadioButton9: TRadioButton
        Left = 616
        Top = 8
        Width = 80
        Height = 17
        Caption = 'Confer'#234'ncia'
        Color = clGradientActiveCaption
        ParentColor = False
        TabOrder = 3
      end
      object RadioButton8: TRadioButton
        Left = 475
        Top = 9
        Width = 104
        Height = 17
        Caption = 'Listagem Simples'
        Color = clGradientActiveCaption
        ParentColor = False
        TabOrder = 4
      end
    end
    object DGEstoque: TDBGrid
      Left = 16
      Top = 216
      Width = 857
      Height = 205
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DsEstoque
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
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
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'un'
          Title.Caption = 'UN'
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'saldo'
          Title.Caption = 'Saldo'
          Visible = True
        end>
    end
    object BtnBuscar: TBitBtn
      Left = 16
      Top = 7
      Width = 90
      Height = 30
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
      TabOrder = 2
      OnClick = BtnBuscarClick
    end
    object BtnImprimir: TBitBtn
      Left = 783
      Top = 7
      Width = 90
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      Enabled = False
      Glyph.Data = {
        C60A0000424DC60A00000000000036000000280000001A0000001A0000000100
        200000000000900A0000B00E0000B00E00000000000000000000000000000000
        000000000000000000000000000000000047000000E5000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000E00000003A000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000D5000000CB0000
        0071000000710000007100000071000000710000007100000071000000710000
        0071000000710000007100000071000000D5000000C300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00E80000008B0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000009D000000D60000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000E80000008B0000001F000000990000009C0000009C0000
        009C0000009C0000009C0000009C0000009C0000009C000000980000001D0000
        009D000000D60000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000E80000008B00000034000000D40000
        00D7000000D7000000D7000000D7000000D7000000D7000000D7000000D70000
        00D4000000310000009D000000D6000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000E80000008B0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000009D000000D600000000000000000000
        0000000000000000000000000000000000000000000000000013000000340000
        00ED0000008B00000029000000A0000000A2000000A2000000A2000000A20000
        00A2000000A2000000A2000000A20000009D000000180000009D000000DF0000
        003400000013000000000000000000000000000000000000000C000000A20000
        00FC000000FF000000FF0000008B0000003C000000CF000000D1000000D10000
        00D1000000D1000000D1000000D1000000D1000000D1000000CC000000260000
        009D000000FF000000FF000000FC000000A20000000C00000000000000000000
        00AF000000F70000007B00000040000000EC0000008B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000009D000000E1000000400000007C000000F7000000AF0000
        00000000002C000000FF0000006B000000020000000E000000E8000000910000
        000E0000000E0000000E0000000E0000000E0000000E0000000E0000000E0000
        000E0000000E0000000E0000000E000000A2000000DA0000000E000000000000
        006B000000FF0000002B00000057000000FF0000001F0000009C000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000700000001F000000FF000000570000005B000000FF000000190000
        002C000000650000006500000065000000650000006500000065000000650000
        0065000000650000006500000065000000650000006500000065000000650000
        006500000065000000650000001B00000019000000FF0000005B0000005B0000
        00FF000000190000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000019000000FF0000
        005B0000005B000000FF00000019000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0019000000FF0000005B0000005B000000FF0000001900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000019000000FF0000005B0000005B000000FF000000190000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000019000000FF0000005B0000005B0000
        00FF0000001A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000056000000A30000009B000000100000001A000000FF0000
        005B00000048000000FF00000039000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000075000000D0000000C7000000190000
        0039000000FF000000480000000A000000E9000000C600000013000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000013000000C6000000E90000000A0000000000000047000000F50000
        00F4000000CD000000CA000000CA000000CA000000CA000000CA000000CA0000
        00CA000000CA000000CA000000CA000000CA000000CA000000CA000000CA0000
        00CA000000CA000000CD000000F5000000F50000004700000000000000000000
        00000000002200000086000000A9000000F7000000D9000000AB000000AB0000
        00AB000000AB000000AB000000AB000000AB000000AB000000AB000000AB0000
        00AB000000AB000000DF000000F2000000A90000008600000022000000000000
        00000000000000000000000000000000000000000000000000E70000008B0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000009E000000D800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00DF000000980000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000AB000000D00000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000A5000000E8000000160000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000200000
        00F2000000960000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000025000000EF000000E3000000850000
        0074000000740000007400000074000000740000007400000074000000740000
        0089000000E9000000E90000001C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000290000
        00B3000000F5000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000F3000000AD000000220000000000000000000000000000
        00000000000000000000}
      TabOrder = 3
      OnClick = BtnImprimirClick
      ExplicitLeft = 779
    end
    object PnlParametros: TPanel
      Left = 16
      Top = 79
      Width = 857
      Height = 48
      Anchors = [akLeft, akTop, akRight]
      Color = clInactiveCaption
      ParentBackground = False
      TabOrder = 4
      ExplicitWidth = 853
      object lblMarca: TLabel
        Left = 16
        Top = 2
        Width = 38
        Height = 13
        Caption = 'Marcas:'
      end
      object lblDepartamento: TLabel
        Left = 208
        Top = 2
        Width = 78
        Height = 13
        Caption = 'Departamentos:'
      end
      object lblFornecedor: TLabel
        Left = 399
        Top = 2
        Width = 70
        Height = 13
        Caption = 'Fornecedores:'
      end
      object CbDepartamento: TDBComboBox
        Left = 208
        Top = 20
        Width = 145
        Height = 21
        TabOrder = 0
      end
      object CbFornecedor: TDBComboBox
        Left = 399
        Top = 20
        Width = 145
        Height = 21
        TabOrder = 1
      end
      object CbMarca: TComboBox
        Left = 16
        Top = 20
        Width = 145
        Height = 21
        ItemIndex = 0
        TabOrder = 2
        Text = 'TODAS'
        Items.Strings = (
          'TODAS')
      end
    end
  end
  inherited PnlHeader: TPanel
    Width = 885
    ExplicitWidth = 881
  end
  object PnlSitEstoque: TPanel
    Left = 17
    Top = 180
    Width = 857
    Height = 53
    Anchors = [akLeft, akTop, akRight]
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 853
    object Panel1: TPanel
      Left = 6
      Top = 4
      Width = 323
      Height = 45
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 3
        Width = 89
        Height = 13
        Caption = 'Situa'#231#227'o do Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RbNegativo: TRadioButton
        Left = 7
        Top = 22
        Width = 64
        Height = 17
        Caption = 'Negativo'
        TabOrder = 0
      end
      object RbPositivo: TRadioButton
        Left = 102
        Top = 22
        Width = 58
        Height = 17
        Caption = 'Positivo'
        TabOrder = 1
      end
      object RbZerado: TRadioButton
        Left = 179
        Top = 22
        Width = 56
        Height = 17
        Caption = 'Zerado'
        TabOrder = 2
      end
      object RbTodos: TRadioButton
        Left = 251
        Top = 22
        Width = 51
        Height = 17
        Caption = 'Todos'
        TabOrder = 3
      end
    end
  end
  object RelEstoque: TppReport
    AutoStop = False
    DataPipeline = DbppRelEstoque
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
      'C:\Users\User\Documents\Projetos Delphi\Sistema\Relatorios\RelEs' +
      'toqSaldoMarca.rtm'
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
    Left = 488
    Top = 16
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbppRelEstoque'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 6350
        mmTop = 15610
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 31221
        mmTop = 15610
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Unid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 116681
        mmTop = 15610
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 138642
        mmTop = 15610
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'codigo'
        DataPipeline = DbppRelEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbppRelEstoque'
        mmHeight = 4498
        mmLeft = 6350
        mmTop = 1323
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'descricao'
        DataPipeline = DbppRelEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbppRelEstoque'
        mmHeight = 4498
        mmLeft = 31221
        mmTop = 1323
        mmWidth = 80963
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'un'
        DataPipeline = DbppRelEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbppRelEstoque'
        mmHeight = 4498
        mmLeft = 116681
        mmTop = 1323
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'saldo'
        DataPipeline = DbppRelEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbppRelEstoque'
        mmHeight = 4498
        mmLeft = 138642
        mmTop = 1323
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
      object ppParameter1: TppParameter
        AutoSearchSettings.LogicalPrefix = []
        AutoSearchSettings.Mandatory = True
        DataType = dtString
        LookupSettings.DisplayType = dtNameOnly
        LookupSettings.SortOrder = soName
        Value = ''
        UserName = 'marca'
      end
    end
  end
  object DbppRelEstoque: TppDBPipeline
    DataSource = DsEstoque
    UserName = 'DbppRelEstoque'
    Left = 400
    Top = 24
  end
  object DsEstoque: TDataSource
    DataSet = QueryProc
    Left = 304
    Top = 24
  end
  object ProcEstoque: TZStoredProc
    Connection = DmConexao.ZConnection
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftWideString
        Name = '@MARCA'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = '@TIPO_SALDO'
        ParamType = ptInput
      end>
    StoredProcName = 'dbo.PROC_SALDO_POR_MARCA;1'
    Left = 216
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftWideString
        Name = '@MARCA'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = '@TIPO_SALDO'
        ParamType = ptInput
      end>
    object ProcEstoqueRETURN_VALUE: TIntegerField
      FieldName = '@RETURN_VALUE'
      ReadOnly = True
    end
  end
  object QueryProc: TZQuery
    Connection = DmConexao.ZConnection
    ReadOnly = True
    SQL.Strings = (
      'EXEC [dbo].[PROC_SALDO_POR_MARCA] :MARCA , :TIPO_SALDO')
    Params = <
      item
        DataType = ftUnknown
        Name = 'MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_SALDO'
        ParamType = ptUnknown
      end>
    Left = 128
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_SALDO'
        ParamType = ptUnknown
      end>
    object QueryProccodigo: TIntegerField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object QueryProcdescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 70
    end
    object QueryProcun: TWideStringField
      FieldName = 'un'
      ReadOnly = True
      Size = 2
    end
    object QueryProcsaldo: TExtendedField
      FieldName = 'saldo'
      ReadOnly = True
      Precision = 19
    end
  end
end
