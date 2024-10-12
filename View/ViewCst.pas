unit ViewCst;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ViewBase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, uNcmDao;

type
  TFrmCst = class(TFrmBase)
    PnlBotoes: TPanel;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnAlterar: TBitBtn;
    Panel1: TPanel;
    DbGridCst: TDBGrid;
    Label1: TLabel;
    DbEdtCst: TDBEdit;
    Dstb_cst: TDataSource;
    Label2: TLabel;
    DbEdtDescricao: TDBEdit;
    Panel2: TPanel;
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCst: TFrmCst;

implementation

{$R *.dfm}




procedure TFrmCst.BtnAlterarClick(Sender: TObject);
begin
inherited;
 try
   Dstb_cst.DataSet.Edit;
 finally
   DbEdtCst.Enabled        := True;
   DbEdtDescricao.Enabled  := True;
   BtnNovo.Enabled         := False;
   BtnSalvar.Enabled       := True;
   BtnCancelar.Enabled     := True;
   BtnAlterar.Enabled      := False;
   BtnExcluir.Enabled      := False;
 end;

end;

procedure TFrmCst.BtnCancelarClick(Sender: TObject);
begin
  inherited;

Dstb_cst.DataSet.Cancel;
DmNcm.Querytb_cst.Connection.Rollback;

DbEdtCst.Enabled        := False;
DbEdtDescricao.Enabled  := False;
BtnNovo.Enabled     := True;
BtnSalvar.Enabled   := False;
BtnCancelar.Enabled := False;
BtnAlterar.Enabled  := True;
BtnExcluir.Enabled  := True;
end;

procedure TFrmCst.BtnExcluirClick(Sender: TObject);
begin
  inherited;

  try
    Dstb_cst.DataSet.Delete;
    DmNcm.Querytb_cst.Connection.Commit;
  finally
    BtnNovo.Enabled         := True;
    BtnSalvar.Enabled       := False;
    BtnCancelar.Enabled     := False;
    BtnAlterar.Enabled      := True;
    BtnExcluir.Enabled      := True;
  end;
end;


procedure TFrmCst.BtnNovoClick(Sender: TObject);
begin
  inherited;
  try
    Dstb_cst.DataSet.Insert;
  finally
    DbEdtCst.Enabled        := True;
    DbEdtDescricao.Enabled  := True;
    DbEdtCst.Enabled        := True;
    DbEdtDescricao.Enabled  := True;
    BtnNovo.Enabled         := False;
    BtnSalvar.Enabled       := True;
    BtnCancelar.Enabled     := True;
    BtnAlterar.Enabled      := False;
    BtnExcluir.Enabled      := False;
  end;



end;

procedure TFrmCst.BtnSalvarClick(Sender: TObject);
begin
  inherited;

  try
   Dstb_cst.DataSet.Post;
   DmNcm.Querytb_cst.Connection.Commit;
  finally
   DbEdtCst.Enabled        := True;
   DbEdtDescricao.Enabled  := True;
   BtnNovo.Enabled         := True;
   BtnSalvar.Enabled       := False;
   BtnCancelar.Enabled     := False;
   BtnAlterar.Enabled      := True;
   BtnExcluir.Enabled      := True;
  end;
end;






procedure TFrmCst.FormShow(Sender: TObject);
begin
  inherited;

 if DmNcm = nil then
    DmNcm := TDmNcm.Create(Self);

 DmNcm.Querytb_cst.Close;
 DmNcm.Querytb_cst.SQL.Clear;
 DmNcm.Querytb_cst.SQL.Text := 'Select * from tb_cst';
 DmNcm.Querytb_cst.Open;
end;

end.
