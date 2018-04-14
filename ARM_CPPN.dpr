program ARM_CPPN;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uDM in 'uDM.pas' {dm: TDataModule},
  uObject in 'uObject.pas' {frmObject},
  uSensor in 'uSensor.pas' {frmSensors},
  uState in 'uState.pas' {frmStates},
  uDatchik in 'uDatchik.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmObject, frmObject);
  Application.CreateForm(TfrmSensors, frmSensors);
  Application.CreateForm(TfrmStates, frmStates);
  Application.Run;
end.
