unit DMDataBases_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMDataBases = class(TDataModule)
    ConDataBases: TADOConnection;
    TblDataBases: TADOTable;
    DSCDataBases: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMDataBases: TDMDataBases;

implementation

{$R *.dfm}

procedure TDMDataBases.DataModuleCreate(Sender: TObject);
begin
  ConDataBases.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + ExtractFilePath
  // Dynamic Connection
    (ParamStr(0)) + 'DataBases.mdb' + ';Persist Security Info=False';
  ConDataBases.LoginPrompt := false;
  ConDataBases.Connected := true;
  TblDataBases.Connection := ConDataBases;
  TblDataBases.TableName := 'TblData';
  TblDataBases.Active := true;
  DSCDataBases.DataSet := TblDataBases;
  TblDataBases.Open;
end;

end.
