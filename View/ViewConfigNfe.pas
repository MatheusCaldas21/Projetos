unit ViewConfigNfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmPadraoCads, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uConfigNFeDao, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmConfigNfe = class(TFrmPadraoCadastros)
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Impressão: TTabSheet;
    Pastas: TTabSheet;
    Dstb_configNfe: TDataSource;
    CbEmpresa: TComboBox;
    DbAtivo: TDBCheckBox;
    DBComboBox2: TDBComboBox;
    CbTipoEmissao: TComboBox;
    GroupBox1: TGroupBox;
    DbSSL: TDBComboBox;
    DbSSLHTTP: TDBComboBox;
    DbXmlSign: TDBComboBox;
    DbVersaoDf: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DbSSLCrypt: TDBComboBox;
    Label6: TLabel;
    DbCertificado: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBRgTipoImpressao: TDBRadioGroup;
    RbPaisagem: TRadioButton;
    RbRetrato: TRadioButton;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigNfe: TFrmConfigNfe;

implementation

{$R *.dfm}

end.
