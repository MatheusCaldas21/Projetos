inherited FrmConfigNfe: TFrmConfigNfe
  Caption = 'Configura'#231#245'es NFe'
  ClientHeight = 476
  ClientWidth = 878
  ExplicitTop = -15
  ExplicitWidth = 890
  TextHeight = 13
  inherited PnlHeader: TPanel
    Width = 878
    ExplicitWidth = 874
  end
  inherited PnlBody: TPanel
    Width = 878
    Height = 424
    ExplicitWidth = 878
    ExplicitHeight = 424
    inherited PnlBotoes: TPanel
      Width = 876
      ExplicitWidth = 872
      inherited BtnExcluir: TBitBtn
        Left = 610
        ExplicitLeft = 606
      end
      inherited BtnCancelar: TBitBtn
        Left = 693
        ExplicitLeft = 689
      end
      inherited BtnNovo: TBitBtn
        Left = 529
        ExplicitLeft = 525
      end
      inherited BtnSalvar: TBitBtn
        Left = 777
        ExplicitLeft = 773
      end
      inherited BtnAlterar: TBitBtn
        Left = 446
        ExplicitLeft = 442
      end
    end
    inherited PageControl1: TPageControl
      Width = 876
      Height = 386
      ActivePage = TsCadastro
      ExplicitWidth = 876
      ExplicitHeight = 386
      inherited TsConsulta: TTabSheet
        ExplicitWidth = 868
        ExplicitHeight = 357
        inherited BtnBuscar: TBitBtn
          Left = 739
          ExplicitLeft = 739
        end
        inherited DBGrid1: TDBGrid
          Width = 798
          Height = 233
        end
        inherited EdtBusca: TEdit
          Width = 678
          ExplicitWidth = 678
        end
      end
      inherited TsCadastro: TTabSheet
        ExplicitWidth = 868
        ExplicitHeight = 357
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 868
          Height = 357
          ActivePage = Pastas
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 864
          ExplicitHeight = 356
          object TabSheet1: TTabSheet
            Caption = 'Geral'
            DesignSize = (
              860
              328)
            object Label6: TLabel
              Left = 136
              Top = 65
              Width = 59
              Height = 14
              Caption = 'UF Destino'
            end
            object Label7: TLabel
              Left = 256
              Top = 65
              Width = 53
              Height = 14
              Caption = 'Ambiente'
            end
            object Label8: TLabel
              Left = 256
              Top = 7
              Width = 57
              Height = 14
              Caption = 'Certificado'
            end
            object Label9: TLabel
              Left = 3
              Top = 7
              Width = 46
              Height = 14
              Caption = 'Empresa'
            end
            object CbEmpresa: TComboBox
              Left = 3
              Top = 27
              Width = 206
              Height = 22
              TabOrder = 0
            end
            object DbAtivo: TDBCheckBox
              Left = 3
              Top = 85
              Width = 69
              Height = 17
              Caption = 'Ativo'
              TabOrder = 1
            end
            object DBComboBox2: TDBComboBox
              Left = 136
              Top = 85
              Width = 73
              Height = 22
              TabOrder = 2
            end
            object CbTipoEmissao: TComboBox
              Left = 256
              Top = 85
              Width = 145
              Height = 22
              ItemIndex = 0
              TabOrder = 3
              Text = 'Produ'#231#227'o'
              Items.Strings = (
                'Produ'#231#227'o'
                'Homologa'#231#227'o')
            end
            object GroupBox1: TGroupBox
              Left = 3
              Top = 220
              Width = 853
              Height = 105
              Anchors = [akLeft, akRight, akBottom]
              Caption = 'Bibliotecas'
              TabOrder = 4
              ExplicitWidth = 849
              object Label1: TLabel
                Left = 16
                Top = 36
                Width = 20
                Height = 14
                Caption = 'SSL'
              end
              object Label2: TLabel
                Left = 357
                Top = 36
                Width = 55
                Height = 14
                Caption = 'SSL HTTP'
              end
              object Label3: TLabel
                Left = 750
                Top = 36
                Width = 55
                Height = 14
                Caption = 'Vers'#227'o DF'
              end
              object Label4: TLabel
                Left = 553
                Top = 36
                Width = 73
                Height = 14
                Caption = 'SSL XML Sign'
              end
              object Label5: TLabel
                Left = 189
                Top = 36
                Width = 53
                Height = 14
                Caption = 'SSL Crypt'
              end
              object DbSSL: TDBComboBox
                Left = 16
                Top = 56
                Width = 145
                Height = 22
                Items.Strings = (
                  'libNone'
                  'libOpenSSL'
                  'libCapicom'
                  'libCapicomDelphiSoap'
                  'libWinCrypt'
                  'libCustom')
                TabOrder = 0
              end
              object DbSSLHTTP: TDBComboBox
                Left = 357
                Top = 56
                Width = 145
                Height = 22
                Items.Strings = (
                  'httpNone'
                  'httpWinINet'
                  'httpWinHttp'
                  'httpOpenSSL'
                  'httpIndy')
                TabOrder = 1
              end
              object DbXmlSign: TDBComboBox
                Left = 553
                Top = 56
                Width = 145
                Height = 22
                Items.Strings = (
                  'xsNone'
                  'xsXmlSec'
                  'xsMsXml'
                  'xsMsXmlCapicom'
                  'xsLibXml2')
                TabOrder = 2
              end
              object DbVersaoDf: TDBComboBox
                Left = 750
                Top = 56
                Width = 145
                Height = 22
                Items.Strings = (
                  've200'
                  've300'
                  've400'
                  've310'
                  've400')
                TabOrder = 3
              end
              object DbSSLCrypt: TDBComboBox
                Left = 189
                Top = 56
                Width = 145
                Height = 22
                Items.Strings = (
                  'cryNone'
                  'cryOpenSSL'
                  'cryCapicom'
                  'cryWinCrypt')
                TabOrder = 4
              end
            end
            object DbCertificado: TDBEdit
              Left = 256
              Top = 27
              Width = 209
              Height = 22
              Enabled = False
              TabOrder = 5
            end
          end
          object Impressão: TTabSheet
            Caption = 'Impress'#227'o'
            ImageIndex = 1
            object Label14: TLabel
              Left = 3
              Top = 94
              Width = 79
              Height = 14
              Caption = 'Casas Decimais'
            end
            object DBRgTipoImpressao: TDBRadioGroup
              Left = 3
              Top = 3
              Width = 286
              Height = 74
              Caption = 'Tipo de Impress'#227'o'
              DataField = 'formato_impressao'
              DataSource = Dstb_configNfe
              TabOrder = 0
            end
            object RbPaisagem: TRadioButton
              Left = 16
              Top = 26
              Width = 113
              Height = 17
              Caption = 'Paisagem'
              TabOrder = 1
            end
            object RbRetrato: TRadioButton
              Left = 152
              Top = 26
              Width = 113
              Height = 17
              Caption = 'Retrato'
              TabOrder = 2
            end
            object GroupBox2: TGroupBox
              Left = 312
              Top = 3
              Width = 365
              Height = 70
              Caption = 'Margens'
              TabOrder = 3
              object Label10: TLabel
                Left = 8
                Top = 23
                Width = 45
                Height = 14
                Caption = 'Superior'
              end
              object Label11: TLabel
                Left = 96
                Top = 23
                Width = 39
                Height = 14
                Caption = 'Inferior'
              end
              object Label12: TLabel
                Left = 188
                Top = 23
                Width = 34
                Height = 14
                Caption = 'Direita'
              end
              object Label13: TLabel
                Left = 279
                Top = 23
                Width = 50
                Height = 14
                Caption = 'Esquerda'
              end
              object DBEdit1: TDBEdit
                Left = 8
                Top = 43
                Width = 65
                Height = 22
                DataField = 'margem_superior'
                DataSource = Dstb_configNfe
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 98
                Top = 43
                Width = 65
                Height = 22
                DataField = 'margem_inferior'
                DataSource = Dstb_configNfe
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 188
                Top = 43
                Width = 65
                Height = 22
                DataField = 'margem_direita'
                DataSource = Dstb_configNfe
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 279
                Top = 43
                Width = 65
                Height = 22
                DataField = 'margem_esquerda'
                DataSource = Dstb_configNfe
                TabOrder = 3
              end
            end
            object DBEdit5: TDBEdit
              Left = 3
              Top = 114
              Width = 79
              Height = 22
              TabOrder = 4
            end
          end
          object Pastas: TTabSheet
            Caption = 'Pastas'
            ImageIndex = 2
            object Label15: TLabel
              Left = 16
              Top = 13
              Width = 88
              Height = 14
              Caption = 'Pasta XML - NFe'
            end
            object Label16: TLabel
              Left = 16
              Top = 64
              Width = 126
              Height = 14
              Caption = 'Pasta XML - Canceladas'
            end
            object Label17: TLabel
              Left = 16
              Top = 127
              Width = 88
              Height = 14
              Caption = 'Pasta XML DPEC'
            end
            object Label18: TLabel
              Left = 392
              Top = 13
              Width = 91
              Height = 14
              Caption = 'Pasta Inutilizadas'
            end
            object Label19: TLabel
              Left = 392
              Top = 64
              Width = 80
              Height = 14
              Caption = 'Pasta XML CCe'
            end
            object DBEdit6: TDBEdit
              Left = 16
              Top = 33
              Width = 305
              Height = 22
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 16
              Top = 86
              Width = 305
              Height = 22
              TabOrder = 1
            end
            object DBEdit8: TDBEdit
              Left = 392
              Top = 33
              Width = 305
              Height = 22
              TabOrder = 2
            end
            object DBEdit9: TDBEdit
              Left = 392
              Top = 86
              Width = 305
              Height = 22
              TabOrder = 3
            end
            object DBEdit10: TDBEdit
              Left = 16
              Top = 147
              Width = 305
              Height = 22
              TabOrder = 4
            end
          end
        end
      end
    end
  end
  object Dstb_configNfe: TDataSource
    DataSet = DmConfigNfe.Querytb_config_nfe
    Left = 513
    Top = 65531
  end
end
