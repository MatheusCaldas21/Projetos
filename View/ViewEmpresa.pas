unit ViewEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmPadraoCads, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrmPadraoCadastros2 = class(TFrmPadraoCadastros)
    lblRazao_social: TLabel;
    lblFantasia: TLabel;
    lblCnpj: TLabel;
    lblie: TLabel;
    lblCep: TLabel;
    lblEstado: TLabel;
    lblCidade: TLabel;
    lblBairro: TLabel;
    lblEndereco: TLabel;
    lblNum: TLabel;
    lbblTelefone: TLabel;
    lblEmail: TLabel;
    lblSite: TLabel;
    lblLogo: TLabel;
    DbCnpj: TDBEdit;
    DbRazao_social: TDBEdit;
    DbFantasia: TDBEdit;
    DbCidade: TDBEdit;
    Image1: TImage;
    DbIe: TDBEdit;
    DbCep: TDBEdit;
    DbBairro: TDBEdit;
    DbEndereco: TDBEdit;
    DbNum: TDBEdit;
    DbTelefone: TDBEdit;
    DbEmail: TDBEdit;
    DbSite: TDBEdit;
    DbLogo: TDBEdit;
    CbEstado: TDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadraoCadastros2: TFrmPadraoCadastros2;

implementation

{$R *.dfm}

end.
