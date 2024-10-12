unit ViewLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, uUsuarioDao, ViewMenu, SessionManager;

type
  TFrmLogin = class(TForm)
    EdtUsuario: TEdit;
    EdtSenha: TEdit;
    LblUsuario: TLabel;
    LblSenha: TLabel;
    BtnAcessar: TBitBtn;
    Panel1: TPanel;
    Image1: TImage;
    BtnSair: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure EdtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAcessarClick(Sender: TObject);
    procedure BtnAcessarKeyPress(Sender: TObject; var Key: Char);
    procedure Acessar;
    procedure BtnSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}



procedure TFrmLogin.BtnAcessarClick(Sender: TObject);
begin
Acessar;
end;

procedure TFrmLogin.BtnAcessarKeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
  #13:
      Acessar;
  #27:
      EdtSenha.SetFocus;
 end;

end;

procedure TFrmLogin.BtnSairClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrmLogin.EdtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  #13:
      BtnAcessar.SetFocus;
  #27:
     EdtUsuario.SetFocus;
  end;
end;

procedure TFrmLogin.EdtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   EdtSenha.SetFocus
end;




procedure TFrmLogin.FormShow(Sender: TObject);
begin
EdtUsuario.SetFocus;
end;


procedure TFrmLogin.Acessar;
var
UsuarioDao : TUsuariosDao;
Nome  : String;
Senha :String;
Resultado : Boolean;
Session : TSessionManager;

begin

try

  UsuarioDao            := TUsuariosDao.Create;
  

  Nome  := EdtUsuario.Text;
  Senha := EdtSenha.Text;
  Resultado := UsuarioDao.Login(Nome, Senha);

  if Resultado = True then
   begin                           
    Session               := TSessionManager.GetInstance;
    Session.UsuarioLogado := Nome;
    FrmMenu.InsereUsuario(Session.UsuarioLogado);
    FrmMenu.Show;
    //FrmMenu.FormShow(nil, Nome);
    FrmLogin.Hide;
   end
  else
    ShowMessage('Usuário ou senhas incorretos');
finally

  UsuarioDao.Free;
end;

end;

end.
