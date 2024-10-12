unit FrmPadraoCads;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmPadraoCadastros = class(TFrmBase)
    PnlBotoes: TPanel;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnAlterar: TBitBtn;
    PageControl1: TPageControl;
    TsConsulta: TTabSheet;
    TsCadastro: TTabSheet;
    DBGrid1: TDBGrid;
    BtnBuscar: TBitBtn;
    EdtBusca: TEdit;
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure EdtBuscaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadraoCadastros: TFrmPadraoCadastros;

implementation

{$R *.dfm}

procedure TFrmPadraoCadastros.BtnAlterarClick(Sender: TObject);
begin
  inherited;
if PageControl1.ActivePage = TsConsulta then
   PageControl1.ActivePage := TSCadastro;

TsCadastro.Enabled  := True;
BtnNovo.Enabled     := False;
BtnSalvar.Enabled   := True;
BtnCancelar.Enabled := True;
BtnAlterar.Enabled  := False;
BtnExcluir.Enabled  := False;
end;

procedure TFrmPadraoCadastros.BtnCancelarClick(Sender: TObject);
begin
  inherited;

TsCadastro.Enabled := False;



BtnNovo.Enabled     := True;
BtnSalvar.Enabled   := False;
BtnCancelar.Enabled := False;
BtnAlterar.Enabled  := True;
BtnExcluir.Enabled  := True;
end;

procedure TFrmPadraoCadastros.BtnExcluirClick(Sender: TObject);
begin
  inherited;
BtnNovo.Enabled     := True;
BtnSalvar.Enabled   := False;
BtnCancelar.Enabled := False;
BtnAlterar.Enabled  := True;
BtnExcluir.Enabled  := True;
end;

procedure TFrmPadraoCadastros.BtnNovoClick(Sender: TObject);
begin
  inherited;

if PageControl1.ActivePage = TsConsulta then
   PageControl1.ActivePage := TSCadastro;

TsCadastro.Enabled := True;
BtnNovo.Enabled     := False;
BtnSalvar.Enabled   := True;
BtnCancelar.Enabled := True;
BtnAlterar.Enabled  := False;
BtnExcluir.Enabled  := False;
end;

procedure  TFrmPadraoCadastros.BtnSalvarClick(Sender: TObject);
begin
  inherited;

TsCadastro.Enabled := False;

BtnNovo.Enabled     := True;
BtnSalvar.Enabled   := False;
BtnCancelar.Enabled := False;
BtnAlterar.Enabled  := True;
BtnExcluir.Enabled  := True;
end;

procedure TFrmPadraoCadastros.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key = #13 then
 BtnBuscar.SetFocus;
end;

end.
