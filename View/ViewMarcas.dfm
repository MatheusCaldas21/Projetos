inherited FrmMarcas: TFrmMarcas
  Caption = 'Marcas'
  ClientHeight = 483
  ClientWidth = 811
  OnCreate = FormCreate
  ExplicitWidth = 827
  ExplicitHeight = 522
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlHeader: TPanel
    Width = 811
    ExplicitWidth = 811
  end
  inherited PnlBody: TPanel
    Width = 811
    Height = 431
    ExplicitWidth = 811
    ExplicitHeight = 431
    inherited PnlBotoes: TPanel
      Width = 809
      ExplicitWidth = 809
      inherited BtnExcluir: TBitBtn
        Left = 559
        ExplicitLeft = 559
      end
      inherited BtnCancelar: TBitBtn
        Left = 642
        ExplicitLeft = 642
      end
      inherited BtnNovo: TBitBtn
        Left = 478
        ExplicitLeft = 478
      end
      inherited BtnSalvar: TBitBtn
        Left = 726
        ExplicitLeft = 726
      end
      inherited BtnAlterar: TBitBtn
        Left = 395
        ExplicitLeft = 395
      end
    end
    inherited PageControl1: TPageControl
      Width = 809
      Height = 393
      ExplicitWidth = 809
      ExplicitHeight = 393
      inherited TsConsulta: TTabSheet
        ExplicitWidth = 801
        ExplicitHeight = 364
        inherited BtnBuscar: TBitBtn
          Left = 695
          Top = 30
          Height = 25
          OnClick = BtnBuscarClick
          ExplicitLeft = 695
          ExplicitTop = 30
          ExplicitHeight = 25
        end
        inherited DBGrid1: TDBGrid
          Width = 754
          Height = 229
          DataSource = Dstb_marca
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
              Width = 200
              Visible = True
            end>
        end
      end
      inherited TsCadastro: TTabSheet
        ExplicitWidth = 801
        ExplicitHeight = 364
        object Label1: TLabel
          Left = 80
          Top = 104
          Width = 51
          Height = 14
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Label2: TLabel
          Left = 80
          Top = 48
          Width = 37
          Height = 14
          Caption = 'C'#243'digo'
          FocusControl = DBEdit3
        end
        object DBEdit2: TDBEdit
          Left = 80
          Top = 124
          Width = 305
          Height = 22
          DataField = 'descricao'
          DataSource = Dstb_marca
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 80
          Top = 68
          Width = 134
          Height = 22
          DataField = 'codigo'
          DataSource = Dstb_marca
          TabOrder = 1
        end
      end
    end
  end
  object Dstb_marca: TDataSource
    DataSet = DmMarcas.Querytb_marca
    Enabled = False
    Left = 488
  end
end
