unit ViewMarcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmPadraoCads, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uMarcaDao;

type
  TFrmMarcas = class(TFrmPadraoCadastros)
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Dstb_marca: TDataSource;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);

  private
    { Private declarations }
    DmMarcas : TDmMarcas;
  public
    { Public declarations }
  end;

var
  FrmMarcas: TFrmMarcas;

implementation

{$R *.dfm}

procedure TFrmMarcas.BtnAlterarClick(Sender: TObject);
begin
  inherited;
DmMarcas.Querytb_marca.Edit;
end;

procedure TFrmMarcas.BtnBuscarClick(Sender: TObject);
begin
  inherited;
if Dstb_marca.Enabled = False then
 Dstb_marca.Enabled := True;

 DmMarcas.Querytb_marca.close;
 DmMarcas.Querytb_marca.sql.clear;

 DmMarcas.Querytb_marca.sql.text := 'select * from tb_marca where descricao like :descricao';

 DmMarcas.Querytb_marca.parambyname('descricao').asstring := '%' + Edtbusca.text + '%';

 DmMarcas.Querytb_marca.open;

end;

procedure TFrmMarcas.BtnCancelarClick(Sender: TObject);
begin
  inherited;

DmMarcas.Querytb_marca.Cancel;
end;

procedure TFrmMarcas.BtnExcluirClick(Sender: TObject);
begin
  inherited;
 try

  if  MessageDlg('Deseja realmente excluir essa Marca ?',mtConfirmation, mbYesNo, 0) = mryes then
  DmMarcas.Querytb_marca.Delete;

 finally
  ShowMessage('Marca excluída com sucesso');
 end;
end;

procedure TFrmMarcas.BtnNovoClick(Sender: TObject);
begin
  inherited;
if Dstb_marca.Enabled = False then
   Dstb_marca.Enabled := True;

DmMarcas.Querytb_marca.Insert;
end;

procedure TFrmMarcas.BtnSalvarClick(Sender: TObject);
begin
  inherited;

DmMarcas.Querytb_marca.Post;
end;



procedure TFrmMarcas.FormCreate(Sender: TObject);
begin
  inherited;
 DmMarcas := TDmMarcas.Create(nil);


end;

end.
