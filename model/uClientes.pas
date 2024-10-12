unit uClientes;

interface
 uses
 System.Variants, System.Classes;

 type
  TClientes = Class


  private

   FCodigo    : Integer;
   FNome      : String;
   FCpf       : String;
   FCep       : String;
   FEstado    : string;
   FCidade    : String;
   FBairro    : String;
   FEndereco  : String;
   FDataNasc  : TDate;
   FDataCad   : TDate;
   FIndIEDest : Integer;
   FIndFinal  : Integer;
   FObsNFe    : string;
   FAtivo     : Byte;

  public

   property Codigo    : integer read FCodigo    write FCodigo;
   property Nome      : string  read FNome      write FNome;
   property Cpf       : string  read FCpf       write FCpf;
   property Cep       : string  read FCep       write FCep;
   property Estado    : string  read FEstado    write FEstado;
   property Cidade    : string  read FCidade    write FCidade;
   property Bairro    : String  read FBairro    write FBairro;
   property Endereco  : String  read FEndereco  write FEndereco;
   property DataNasc  : TDate   read FDataNasc  write FDataNasc;
   property DataCad   : TDate   read FDataCad   write FDataCad;
   property IndIEDest : integer read FIndIEDest write FIndIEDest;
   property IndFinal  : integer read FIndFinal  write FIndFinal;
   property ObsNFe    : String  read FObsNFe    write FObsNFe;

  End;

implementation

end.
