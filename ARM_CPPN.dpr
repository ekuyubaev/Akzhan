program ARM_CPPN;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uDM in 'uDM.pas' {dm: TDataModule},
  uObject in 'uObject.pas' {frmObject},
  uSensor in 'uSensor.pas' {frmSensors},
  uState in 'uState.pas' {frmStates},
  uDatchik in 'uDatchik.pas',
  uReading in 'uReading.pas' {frmReading},
  uFault in 'uFault.pas' {frmFault},
  uNotification in 'uNotification.pas',
  uNotificationForm in 'uNotificationForm.pas' {frmNotification},
  uReport in 'uReport.pas' {frmReport},
  uAbout in 'uAbout.pas' {frmAbout},
  uObjectClass in 'uObjectClass.pas',
  uDolzhnost in 'uDolzhnost.pas' {frmDolzhnost},
  uEI in 'uEI.pas' {frmEI},
  uArea in 'uArea.pas' {frmArea},
  uSmena in 'uSmena.pas' {frmSmena},
  uArchive in 'uArchive.pas' {frmArchive};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmObject, frmObject);
  Application.CreateForm(TfrmSensors, frmSensors);
  Application.CreateForm(TfrmStates, frmStates);
  Application.CreateForm(TfrmReading, frmReading);
  Application.CreateForm(TfrmFault, frmFault);
  Application.CreateForm(TfrmNotification, frmNotification);
  Application.CreateForm(TfrmReport, frmReport);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmDolzhnost, frmDolzhnost);
  Application.CreateForm(TfrmEI, frmEI);
  Application.CreateForm(TfrmArea, frmArea);
  Application.CreateForm(TfrmSmena, frmSmena);
  Application.CreateForm(TfrmArchive, frmArchive);
  Application.Run;
end.
