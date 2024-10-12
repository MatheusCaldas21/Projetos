unit uBuscaCnpj;

interface
 uses
  System.Classes, System.SysUtils, REST.Client, Rest.Json, System.JSON,
  VCl.Dialogs;

 type

   TBuscaCnpj = class

   private
    FRazao_social     : String;
    FFantasia         : String;
    FIe               : String;
    FUf               : String;
    FCep              : String;
    FCidade           : String;
    FBairro           : String;
    FEndereco         : String;
    FNum              : Integer;
    FEmail            : String;
    FFone1            : String;
    FFone2            : String;

   public
    property Razao_social     : String  read FRazao_social  write FRazao_social ;
    property Fantasia         : String  read FFantasia      write FFantasia     ;
    property Ie               : String  read FIe            write FIe           ;
    property Uf               : String  read FUf            write FUf           ;
    property Cep              : String  read FCep           write FCep          ;
    property Cidade           : String  read FCidade        write FCidade       ;
    property Bairro           : String  read FBairro        write FBairro       ;
    property Endereco         : String  read FEndereco      write FEndereco     ;
    property Num              : Integer read FNum           write FNum          ;
    property Email            : String  read FEmail         write FEmail        ;
    property Fone1            : String  read FFone1         write FFone1        ;
    property Fone2            : String  read FFone2         write FFone2        ;

    function BuscaCnpj(cnpj : string) : TBuscaCnpj;



   end;



implementation



function TBuscaCnpj.BuscaCnpj(cnpj : string) : TBuscaCnpj;
var
Request         : TRESTRequest;
RequestClient   : TRESTClient;
RequestResponse : TRESTResponse;
Url             : String;
DadosJson       : TJSONObject;
BuscaCnpj       : TBuscaCnpj;
MaisJson        : TJSONObject;
EstadoJson      : TJSONObject;
CidadeJson      : TJSONObject;
begin

Url := 'https://publica.cnpj.ws/cnpj/' + cnpj;

Request         := TRESTRequest.Create(nil);
RequestClient   := TRESTClient.Create(nil);
RequestResponse := TRESTResponse.Create(nil);
BuscaCnpj       := TBuscaCnpj.Create;

Request.Client   := RequestClient;
Request.Response := RequestResponse;

RequestClient.BaseURL := Url;

Request.Execute;

DadosJson := RequestResponse.JSONValue as TJsonObject;

BuscaCnpj.Razao_social := DadosJson.Values['razao_social'].Value;
BuscaCnpj.Ie           := 'teste';

MaisJson := DadosJson.GetValue<TJSONObject>('estabelecimento') as TJSONObject;


BuscaCnpj.Fantasia     := MaisJson.Values['nome_fantasia'].Value;

EstadoJson := MaisJson.GetValue<TJSONObject>('estado') as TJSONObject;
CidadeJson := MaisJson.GetValue<TJSONObject>('cidade') as TJSONObject;
BuscaCnpj.Uf           := EstadoJson.Values['sigla'].Value;
BuscaCnpj.Cidade       := CidadeJson.Values['nome'].Value;
BuscaCnpj.Bairro       := MaisJson.Values['bairro'].Value;
BuscaCnpj.Endereco     := MaisJson.Values['logradouro'].Value;
BuscaCnpj.Email        := MaisJson.Values['email'].Value;
BuscaCnpj.Fone1        := MaisJson.Values['telefone1'].Value;
BuscaCnpj.Fone2        := MaisJson.Values['telefone2'].Value;




Result := BuscaCnpj;


end;

end.
