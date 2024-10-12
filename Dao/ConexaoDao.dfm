object DmConexao: TDmConexao
  Height = 327
  Width = 493
  object ZConnection: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    AutoCommit = False
    HostName = 'localhost'
    Port = 1433
    Database = 
      'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;User' +
      ' ID=matheus;Initial Catalog=db_sis;Data Source=DESKTOP-ALBE649\S' +
      'QLEXPRESS'
    User = 'matheus'
    Password = '123'
    Protocol = 'ado'
    LibraryLocation = 'C:\Users\User\Documents\Projetos Delphi\Piloto\ntwdblib.dll'
    Left = 40
    Top = 56
  end
  object ZQuery1: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 216
    Top = 88
  end
end
