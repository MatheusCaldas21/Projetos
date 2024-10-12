unit ConexaoDao;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlMonitor;

type
  TDmConexao = class(TDataModule)
    ZConnection: TZConnection;
    ZQuery1: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function DataSet: TDataSet;
    procedure Params(aParam : String; Value: Variant); Overload;
    function  Params(aParam : String): Variant; overload;
    procedure Commit;
    procedure RollBack;
    procedure ExecSql;
    procedure StartTransaction;
    procedure Open;

  end;

var
  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


function TDmConexao.DataSet: TDataSet;
begin
  Result:= ZQuery1;
end;

procedure TDmConexao.Params(aParam: string; Value: Variant);
begin
 ZQuery1.ParamByName(aParam).Value := Value;
end;


function TDmConexao.Params(aParam: string): Variant;
begin
  Result := ZQuery1.ParamByName(aParam).Value;
end;

procedure TDmConexao.Commit;
begin
 ZConnection.Commit;
end;



procedure TDmConexao.RollBack;
begin
 ZConnection.Rollback;
end;


procedure TDmConexao.ExecSql;
begin
  ZQuery1.ExecSQL;
end;


procedure TDmConexao.StartTransaction;
begin
  ZConnection.StartTransaction;
end;


procedure TDmConexao.Open;
begin
 ZQuery1.Open;
end;

end.
