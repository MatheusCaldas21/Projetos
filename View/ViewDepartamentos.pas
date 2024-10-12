unit ViewDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmPadraoCads, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uDepartamentoDao;

type
  TFrmDepartamentos = class(TFrmPadraoCadastros)
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Dstb_departamento: TDataSource;
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
   DmDepartamentos : TDmDepartamentos;
  public
    { Public declarations }
  end;

var
  FrmDepartamentos: TFrmDepartamentos;

implementation

{$R *.dfm}

procedure TFrmDepartamentos.BtnAlterarClick(Sender: TObject);
begin
  inherited;
DmDepartamentos.Querytb_departamento.Edit;
end;

procedure TFrmDepartamentos.BtnBuscarClick(Sender: TObject);
begin
  inherited;
 if Dstb_departamento.Enabled = False then
    Dstb_departamento.Enabled := True;

 DmDepartamentos.Querytb_departamento.close;
 DmDepartamentos.Querytb_departamento.sql.clear;


 DmDepartamentos.Querytb_departamento.sql.text := 'select * from tb_departamento where departamento' +
 ' like :departamento';

 DmDepartamentos.Querytb_departamento.parambyname('departamento').asstring := '%'+ EdtBusca.Text + '%';

 DmDepartamentos.Querytb_departamento.open;

 end;

procedure TFrmDepartamentos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
DmDepartamentos.Querytb_departamento.Cancel;
end;

procedure TFrmDepartamentos.BtnExcluirClick(Sender: TObject);
begin
  inherited;

  try
 
   if MessageDlg('Deseja realmente excluir esse departamento ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    DmDepartamentos.Querytb_departamento.Delete;

  finally
   ShowMessage('Departamento excluído com sucesso');
  end;

end;

procedure TFrmDepartamentos.BtnNovoClick(Sender: TObject);
begin
  inherited;

if Dstb_departamento.Enabled = False then
  Dstb_departamento.Enabled := True;

DmDepartamentos.Querytb_departamento.Insert;
end;

procedure TFrmDepartamentos.BtnSalvarClick(Sender: TObject);
begin
  inherited;

   DmDepartamentos.Querytb_departamento.Post;

end;


procedure TFrmDepartamentos.FormCreate(Sender: TObject);
begin
  inherited;
   DmDepartamentos := TDmDepartamentos.Create(Self);
end;

end.
