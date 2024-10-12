unit uUsuarios;

interface
 uses System.Variants, System.VarUtils;

 type
  TUsuarios = class

  private

   FCodigo  : Integer;
   FNome    : String;
   FSenha   : String;
   FDataCad : TDate;


  public

   property Codigo  : integer read FCodigo   write FCodigo;
   property Nome    : String  read FNome     write FNome;
   property Senha   : String  read FSenha    write FSenha;
   property DataCad : TDate   read FDataCad  write FDataCad;


  end;

implementation

end.
