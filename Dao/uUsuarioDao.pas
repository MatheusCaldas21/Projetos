unit uUsuarioDao;

interface
 uses
   uUsuarios, ConexaoDao, ZConnection, ZAbstractDataSet, ZDataSet, Vcl.Dialogs, Data.DB;

 type
  TUsuariosDao = Class

   private

   public
    function Login(nome : String; senha : String): Boolean;
  End;


implementation

function TUsuariosDao.Login(nome: String; senha: String) : Boolean;
var
DmConexao : TDmConexao;
Query     : TZQuery;

begin

DmConexao := TDmConexao.Create(nil);
Query := TZQuery.Create(nil);

 try
   Query.Connection := DmConexao.ZConnection;
   Query.SQL.Text   := 'Select * from tb_usuario where nome = :nome_usuario and senha = :senha_usuario';
   Query.ParamByName('nome_usuario').AsString := nome;
   Query.ParamByName('senha_usuario').AsString := senha;
   Query.Open;


    if Query.IsEmpty then
     begin
      Result := False;
     end
    else
      Result := True;

 finally
    if Assigned(Query) then
    Query.Free;
    DmConexao.Free;

 end;




end;

end.
