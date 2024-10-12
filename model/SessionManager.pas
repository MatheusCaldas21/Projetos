unit SessionManager;

interface
 type
  TSessionManager = class

  private
   FUsuarioLogado : String;
   class var FInstance : TSessionManager;
   constructor Create;

  public

   property UsuarioLogado : String read FUsuarioLogado write FUsuarioLogado;

   class Function GetInstance : TSessionManager;

  end;

implementation

{ TSessionManager }

constructor TSessionManager.Create;
begin
 inherited
  Create;
end;

class function TSessionManager.GetInstance: TSessionManager;
begin
 if not Assigned(FInstance) then
  FInstance := TSessionManager.Create;
  Result := FInstance;
end;

end.
