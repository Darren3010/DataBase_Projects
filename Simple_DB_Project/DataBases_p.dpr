program DataBases_p;

uses
  Forms,
  DataBases_u in 'DataBases_u.pas' {Form5},
  DMDataBases_u in 'DMDataBases_u.pas' {DMDataBases: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TDMDataBases, DMDataBases);
  Application.Run;
end.
