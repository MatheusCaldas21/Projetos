inherited FrmDepartamentos: TFrmDepartamentos
  Caption = 'Departamentos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlBody: TPanel
    inherited PageControl1: TPageControl
      inherited TsConsulta: TTabSheet
        inherited BtnBuscar: TBitBtn
          OnClick = BtnBuscarClick
        end
        inherited DBGrid1: TDBGrid
          DataSource = Dstb_departamento
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'departamento'
              Title.Caption = 'Departamento'
              Width = 200
              Visible = True
            end>
        end
      end
      inherited TsCadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 823
        ExplicitHeight = 357
        object Label1: TLabel
          Left = 48
          Top = 36
          Width = 37
          Height = 14
          Caption = 'C'#243'digo'
          FocusControl = DBEdit2
        end
        object Label2: TLabel
          Left = 48
          Top = 114
          Width = 79
          Height = 14
          Caption = 'Departamento'
          FocusControl = DBEdit3
        end
        object DBEdit2: TDBEdit
          Left = 48
          Top = 56
          Width = 105
          Height = 22
          DataField = 'codigo'
          DataSource = Dstb_departamento
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 48
          Top = 139
          Width = 361
          Height = 22
          DataField = 'departamento'
          DataSource = Dstb_departamento
          TabOrder = 1
        end
      end
    end
  end
  object Dstb_departamento: TDataSource
    DataSet = DmDepartamentos.Querytb_departamento
    Enabled = False
    Left = 544
    Top = 24
  end
end
