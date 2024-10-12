unit uClienteDao;

interface

uses
  uClientes, ConexaoDao, ZDataSet, Generics.Collections, System.SysUtils;

type
  TClienteDao = class
  private
  public
    function Cadastrar(Cliente: TClientes): Boolean;
    function Alterar(Cliente: TClientes)  : Boolean;
    function Excluir(Cliente: TClientes)  : Boolean;
    function Buscar(Texto : String) : TList<TClientes>;
    function GetCodigo()  : Integer;
  end;

implementation

function TClienteDao.Cadastrar(Cliente: TClientes): Boolean;
var
  DmConexao: TDmConexao;
  Query: TZQuery;
begin
  DmConexao := TDmConexao.Create(nil);
  Query := TZQuery.Create(nil);
  try
    Query.Connection := DmConexao.ZConnection;
   // DmConexao.StartTransaction;
    Query.SQL.Text := 'INSERT INTO tb_cliente (codigo, nome, cpf, cep, estado, cidade, bairro, endereco) ' +
                      'VALUES (:codigo, :nome, :cpf, :cep, :estado, :cidade, :bairro, :endereco, :ativo, :ind_iedest, '+
                      ':ind_final, :obs_nfe)';

    Query.ParamByName('codigo').AsInteger     := Cliente.Codigo;
    Query.ParamByName('nome').AsString        := Cliente.Nome;
    Query.ParamByName('cpf').AsString         := Cliente.Cpf;
    Query.ParamByName('cep').AsString         := Cliente.Cep;
    Query.ParamByName('estado').AsString      := Cliente.Estado;
    Query.ParamByName('cidade').AsString      := Cliente.Cidade;
    Query.ParamByName('bairro').AsString      := Cliente.Bairro;
    Query.ParamByName('endereco').AsString    := Cliente.Endereco;
    Query.ParamByName('ativo').AsString       := Cliente.Cidade;
    Query.ParamByName('ind_iedest').AsInteger := Cliente.IndIEDest;
    Query.ParamByName('ind_final').AsInteger  := Cliente.IndFinal;
    Query.ParamByName('obs_nfe').AsString     := Cliente.ObsNFe;


    Query.ExecSQL;
    Result := True;

  except
    Result := False;
  end;

  if Assigned(Query) then
    Query.Free;
    DmConexao.free;
end;



function TClienteDao.Alterar(Cliente :TClientes) : Boolean;
var
  DmConexao: TDmConexao;
  Query: TZQuery;
begin
  DmConexao := TDmConexao.Create(nil);
  Query := TZQuery.Create(nil);
  try
    Query.Connection := DmConexao.ZConnection;
    DmConexao.StartTransaction;

    Query.SQL.Text := 'UPDATE [dbo].[tb_clientes] SET nome = :nome, cpf = :cpf, ' +
                     'cep = :cep, estado = :estado, cidade = :cidade, bairro = :bairro, endereco = :endereco ' +
                     'ativo = :ativo, ind_iedest = :ind_iedest, obs_nfe = :obs_nfe WHERE codigo = :codigo';

    Query.ParamByName(':codigo').AsInteger      := Cliente.Codigo;
    Query.ParamByName(':nome').AsString         := Cliente.Nome;
    Query.ParamByName(':cpf').AsString          := Cliente.Cpf;
    Query.ParamByName(':cep').AsString          := Cliente.Cep;
    Query.ParamByName(':estado').AsString       := Cliente.Estado;
    Query.ParamByName(':cidade').AsString       := Cliente.Cidade;
    Query.ParamByName(':bairro').AsString       := Cliente.Bairro;
    Query.ParamByName(':endereco').AsString     := Cliente.Endereco;
    Query.ParamByName(':ind_iedest').AsString   := Cliente.Cidade;
    Query.ParamByName(':bairro').AsString       := Cliente.Bairro;
    Query.ParamByName(':endereco').AsString     := Cliente.Endereco;
    Query.ParamByName('ativo').AsString         := Cliente.Cidade;
    Query.ParamByName('ind_iedest').AsInteger   := Cliente.IndIEDest;
    Query.ParamByName('ind_final').AsInteger    := Cliente.IndFinal;
    Query.ParamByName('obs_nfe').AsString       := Cliente.ObsNFe;

    Query.ExecSQL;
    Result := True;

  except
    Result := False;
  end;

  if Assigned(Query) then
    Query.Free;
    DmConexao.free;
end;



function TClienteDao.Excluir(Cliente :TClientes) : Boolean;
var
  DmConexao: TDmConexao;
  Query: TZQuery;
begin
  DmConexao := TDmConexao.Create(nil);
  Query := TZQuery.Create(nil);
  try
    Query.Connection := DmConexao.ZConnection;
    DmConexao.StartTransaction;
    Query.SQL.Text := 'Delete from [dbo].[tb_clientes] where codigo = :codigo';
    Query.ParamByName(':codigo').AsInteger := Cliente.Codigo;

    Query.ExecSQL;
    Result := True;

  except
    Result := False;
  end;

  if Assigned(Query) then
    Query.Free;
    DmConexao.free;
end;


function TClienteDao.GetCodigo() : Integer;
var
DmConexao : TDmConexao;
Query : TZQuery;
begin
DmConexao := TDmConexao.Create(nil);
Query := TZQuery.Create(nil);

Query.Connection := DmConexao.ZConnection;
Query.SQL.Text := 'Select next value for [dbo].[GEN_COD_CLI] as codigo';
Query.Open;

Result :=  Query.FieldByName('codigo').AsInteger;

DmConexao.Free;
Query.Free;

end;


function TClienteDao.Buscar(Texto : String) : TList<TCLientes>;
var
DmConexao : TDmConexao;
Query : TZQuery;
ListClientes : TList<TClientes>;
Cliente : TClientes;

begin

DmConexao := TDmConexao.Create(nil);
Query := TZQuery.Create(nil);
ListClientes := TList<TClientes>.Create;


try

  Query.Connection := DmConexao.ZConnection;
  Query.SQL.Text := 'Select codigo, nome, cpf, estado, cidade, endereco from tb_cliente where '
  + 'nome like :nome or cpf like :cpf';
  //Query.ParamByName('codigo').AsString := Texto;
  Query.ParamByName('nome').AsString := '%'+Texto+'%';
  Query.ParamByName('cpf').AsString := '%'+Texto+'%';
  Query.Open;

  if not (Query.IsEmpty) then
   begin
     while not Query.Eof do
     begin
      Cliente := TClientes.Create;
      Cliente.Codigo   := Query.FieldByName('codigo').AsInteger;
      Cliente.Nome     := Query.FieldByName('nome').AsString;
      Cliente.Cpf      := Query.FieldByName('cpf').AsString;
      Cliente.Estado   := Query.FieldByName('estado').AsString;
      Cliente.Cidade   := Query.FieldByName('cidade').AsString;
      Cliente.Endereco := Query.FieldByName('endereco').AsString;

      ListClientes.Add(Cliente);
      Query.Next;
     end;

   end;
     Result := ListClientes;

except

 Result := nil;
end;

end;




end.

