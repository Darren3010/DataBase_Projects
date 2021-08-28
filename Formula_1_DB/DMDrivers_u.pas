unit DMDrivers_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMDrivers = class(TDataModule)
    ConDrivers: TADOConnection;
    TblDrivers: TADOTable;
    DSCDrivers: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMDrivers: TDMDrivers;

implementation

{$R *.dfm}

procedure TDMDrivers.DataModuleCreate(Sender: TObject);
begin
  ConDrivers.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='
    + ExtractFilePath(ParamStr(0))
    + 'DriversDB.mdb' + ';Persist Security Info=False';
  ConDrivers.LoginPrompt := false;
  ConDrivers.Connected := true;
  TblDrivers.Connection := ConDrivers;
  TblDrivers.TableName := 'TblDrivers';
  TblDrivers.active := true;
  DSCDrivers.dataset := TblDrivers;
  TblDrivers.Open;
end;

end.
