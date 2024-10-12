unit uBuscaCep;

interface
 uses
  System.Classes, REST.Client, REST.Json, System.JSON, System.Generics.Collections,
  System.SysUtils;

type
 TBuscaCep = class

 private

 FUf         : String;
 FCidade     : String;
 FBairro     : String;
 FLogradouro : String;

 public

 property Uf         : string read FUf         write FUf;
 property Cidade     : string read FCidade     write FCidade;
 property Bairro     : string read FBairro     write FBairro;
 property Logradouro : string read FLogradouro write FLogradouro;

 function RetornaDadosCep(cep : string) : TBuscaCep;

 end;

implementation


function TBuscaCep.RetornaDadosCep(cep : string) : TBuscaCep;
var
Url : string;
Request : TRESTRequest;
RequestClient : TRESTClient;
RequestResponse : TRESTResponse;
JsonCep : TJSONObject;
BuscaCep : TBuscaCep;
begin

 Url := 'http://viacep.com.br/ws/'+cep+'/json/?';

 Request := TRESTRequest.Create(nil);
 RequestClient := TRESTClient.Create(nil);
 RequestResponse := TRESTResponse.Create(nil);
 BuscaCep := TBuscaCep.Create;


 try
 Request.Client := RequestClient;
 Request.Response := RequestResponse;

 RequestClient.BaseURL := Url;

 Request.Execute;

 JsonCep := RequestResponse.JSONValue as TJSONObject;


 BuscaCep.Uf := JsonCep.Values['uf'].Value;
 BuscaCep.Cidade := JsonCep.Values['localidade'].Value;
 BuscaCep.Bairro := JsonCep.Values['bairro'].Value;
 BuscaCep.Logradouro := JsonCep.Values['logradouro'].Value;

 Result := BuscaCep;

 finally
  Request.Free;
  RequestClient.Free;
  RequestResponse.Free;
 end;



end;


end.
