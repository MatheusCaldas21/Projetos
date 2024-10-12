unit uUsuariosDao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ConexaoDao;

type
  TDmUsuarios = class(TDataModule)
    Querytb_usuario: TZQuery;
    Querytb_usuariocodigo: TIntegerField;
    Querytb_usuarionome: TWideStringField;
    Querytb_usuariosenha: TWideStringField;
    Querytb_usuariocodigo_vendedor: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmUsuarios: TDmUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
