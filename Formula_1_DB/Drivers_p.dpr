program Drivers_p;

uses
  Forms,
  Drivers_u in 'Drivers_u.pas' {FrmDrivers},
  DMDrivers_u in 'DMDrivers_u.pas' {DMDrivers: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmDrivers, FrmDrivers);
  Application.CreateForm(TDMDrivers, DMDrivers);
  Application.Run;
end.
