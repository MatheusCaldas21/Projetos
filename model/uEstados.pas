unit uEstados;

interface
 uses System.SysUtils;

type
  TEstado = class
  private
    class var FEstados: array[0..26] of string;
  public
    class constructor Create;
    class function GetSiglasEstados: TArray<string>;
  end;

implementation

{ TEstado }

class constructor TEstado.Create;
begin
  FEstados[0] := 'AC';
  FEstados[1] := 'AL';
  FEstados[2] := 'AP';
  FEstados[3] := 'AM';
  FEstados[4] := 'BA';
  FEstados[5] := 'CE';
  FEstados[6] := 'DF';
  FEstados[7] := 'ES';
  FEstados[8] := 'GO';
  FEstados[9] := 'MA';
  FEstados[10] := 'MT';
  FEstados[11] := 'MS';
  FEstados[12] := 'MG';
  FEstados[13] := 'PA';
  FEstados[14] := 'PB';
  FEstados[15] := 'PR';
  FEstados[16] := 'PE';
  FEstados[17] := 'PI';
  FEstados[18] := 'RJ';
  FEstados[19] := 'RN';
  FEstados[20] := 'RS';
  FEstados[21] := 'RO';
  FEstados[22] := 'RR';
  FEstados[23] := 'SC';
  FEstados[24] := 'SP';
  FEstados[25] := 'SE';
  FEstados[26] := 'TO';
end;

class function TEstado.GetSiglasEstados: TArray<string>;
var
  i: Integer;
begin
  SetLength(Result, Length(FEstados));
  for i := 0 to High(FEstados) do
    Result[i] := FEstados[i];
end;



end.

