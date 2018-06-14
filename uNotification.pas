unit uNotification;

interface

uses
  Classes, SysUtils, DateUtils, StdCtrls, Dialogs, ADODB, Vcl.Graphics;

type
  TNotifier = class(TThread)
    private
      { Private declarations }
      procedure showNotificationForm();
    protected
      procedure Execute; override;
    public
     hideTillNextLaunch : boolean;
  end;

implementation

uses uDM, uNotificationForm, uMain;

procedure TNotifier.showNotificationForm;
var tempStr : string;
begin
  if dm.qNotSeenFaults.Active then dm.qNotSeenFaults.Close;
  dm.qNotSeenFaults.Open;
   if dm.qReadingsNotSeenFaults.Active then dm.qReadingsNotSeenFaults.Close;
  dm.qReadingsNotSeenFaults.Open;
  if (dm.qNotSeenFaults.RecordCount > 0) then
  begin
      dm.qNotSeenFaults.RecNo := 1;
      if (dm.qNotSeenFaults.FieldByName('Zamechena').AsInteger = 0) then
      begin
          tempStr := 'Обнаружена аварийная ситуация. ' + #13#10
                  + 'Участок: ' + dm.qNotSeenFaults.FieldByName('Uchastok').AsString + #13#10
                  + 'Объект: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie_1').AsString + #13#10
                  + 'Датчик: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie').AsString + #13#10
                  + 'Описание: ' + dm.qNotSeenFaults.FieldByName('Opisanie').AsString;

          frmMain.ShowEvent(tempStr);
          frmNotification.PageControl1.ActivePageIndex := 0;
          frmNotification.RadioGroup1.ItemIndex := -1;
          frmNotification.RadioGroup2.ItemIndex := -1;
          frmNotification.ShowModal;
          beep;
      end;
  end;
end;

procedure TNotifier.Execute;
begin
  { Place thread code here }

  while not terminated do
  begin
      Synchronize(showNotificationForm);
      sleep(1000);
  end;
end;

end.
