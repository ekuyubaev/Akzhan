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

uses uDM, uNotificationForm;

procedure TNotifier.showNotificationForm;
begin
  if dm.qNotSeenFaults.Active then dm.qNotSeenFaults.Close;
  dm.qNotSeenFaults.Open;
  if dm.qNotSeenFaults.RecordCount > 0 then
  begin
      frmNotification.PageControl1.ActivePageIndex := 0;
      frmNotification.Memo1.Lines.Clear;
      frmNotification.RadioGroup1.ItemIndex := -1;
      frmNotification.ShowModal;
  end;
end;

procedure TNotifier.Execute;
begin
  { Place thread code here }

  while not terminated do
  begin
      if hideTillNextLaunch then
      begin
        self.Terminate;
        continue;
      end;

      Synchronize(showNotificationForm);
      sleep(5000);
  end;
end;

end.
