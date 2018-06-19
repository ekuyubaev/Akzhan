unit uNotificationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, MMSystem;

type
  TfrmNotification = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    Panel4: TPanel;
    BitBtn5: TBitBtn;
    Timer1: TTimer;
    Label13: TLabel;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotification: TfrmNotification;

implementation

{$R *.dfm}

uses uDM, uMain, uNotification;

procedure TfrmNotification.BitBtn11Click(Sender: TObject);
Var i : integer;
begin
  {dm.qNotSeenFaults.Edit;
  dm.qNotSeenFaults.FieldByName('Zamechena').Value := 1;
  dm.qNotSeenFaults.Post;}

  if MessageDlg('Аварийная ситуация устранена?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
      then exit;

  frmMain.stopInterrogation;

  dm.qEmergency.SQL.Text := 'Select * From Avaria Where Ustranena = 0';
  dm.qEmergency.Open;

  for i := 1 to dm.qEmergency.RecordCount do
  begin
    dm.qEmergency.RecNo := i;

    dm.qElimination.SQL.Text := 'Update Model Set Mx = 0, Dx = 0.01, Pokazanie = 55 '
                      + 'Where ID_model = 3 ';
    dm.qElimination.ExecSQL;

    dm.qElimination.SQL.Text := 'Update Avaria Set Primechanie = '
          + QuotedStr(RadioGroup1.Items[RadioGroup1.ItemIndex]+'-'
                      + RadioGroup1.Items[RadioGroup1.ItemIndex]) + ', Ustranena = 1, DV_ustranena = '
          + QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss', Now))
          + ' Where ID_avaria = ' + dm.qEmergency.FieldByName('ID_avaria').AsString;
    dm.qElimination.ExecSQL;

    frmMain.ShowEvent(FormatDateTime('dd.mm.yyyy hh:nn:ss', now) + ' - Аварийная ситуация была устранена.');
  end;

  frmMain.startInterrogation;

  close;
end;

procedure TfrmNotification.BitBtn1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfrmNotification.BitBtn3Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex < 0 then
  begin
    ShowMessage('Выберите вариант возможной неисправности!');
    Exit;
  end;
  PageControl1.ActivePageIndex := 2;
end;

procedure TfrmNotification.BitBtn4Click(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 3;
end;

procedure TfrmNotification.BitBtn5Click(Sender: TObject);
var i : integer;
begin
  if MessageDlg('Аварийная ситуация устранена?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
      then exit;

  frmMain.stopInterrogation;

  dm.qEmergency.SQL.Text := 'Select * From Avaria Where Ustranena = 0';
  dm.qEmergency.Open;

  for i := 1 to dm.qEmergency.RecordCount do
  begin
    dm.qEmergency.RecNo := i;

    dm.qElimination.SQL.Text := 'Update Model Set Mx = 0, Dx = 0.01, Pokazanie = 0.3 '
                      + 'Where ID_model = 3 ';
    dm.qElimination.ExecSQL;

    dm.qElimination.SQL.Text := 'Update Avaria Set Ustranena = 1, DV_ustranena = '
          + QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss', Now))
          + ' Where ID_avaria = ' + dm.qEmergency.FieldByName('ID_avaria').AsString;
    dm.qElimination.ExecSQL;

    frmMain.ShowEvent(FormatDateTime('dd.mm.yyyy hh:nn:ss', now) + ' - Аварийная ситуация была устранена.');
  end;

  frmMain.startInterrogation;

  close;

  frmMain.PageControl1.ActivePage := frmMain.tsFailure;
  close;
end;

procedure TfrmNotification.BitBtn7Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 5;
end;

procedure TfrmNotification.BitBtn8Click(Sender: TObject);
begin


  dm.qNotSeenFaults.Edit;
  dm.qNotSeenFaults.FieldByName('Neispravnost').Value
      := RadioGroup1.Items[RadioGroup1.ItemIndex];
  dm.qNotSeenFaults.Post;
  PageControl1.ActivePageIndex := 6;
end;

procedure TfrmNotification.FormActivate(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TfrmNotification.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := false;
  dm.refreshFaults;
end;

procedure TfrmNotification.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to PageControl1.PageCount do
      PageControl1.Pages[i-1].TabVisible := false;
end;

procedure TfrmNotification.TabSheet1Show(Sender: TObject);
begin
  dm.qEmergency.SQL.Text := 'Select MAX(Pokazanie) as Pokazanie From Pokazanie Where ID_avaria = '
                            + dm.qNotSeenFaults.FieldByName('ID_avaria').AsString;
  dm.qEmergency.Open;

  Label13.Caption := 'Участок: ' + dm.qNotSeenFaults.FieldByName('Uchastok').AsString + #13#10
              + 'Объект: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie_1').AsString + #13#10
              + 'Датчик: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie').AsString + #13#10
              + 'Текущее показание: ' + dm.qEmergency.FieldByName('Pokazanie').AsString;
end;

procedure TfrmNotification.TabSheet2Show(Sender: TObject);
begin
  dm.qEmergency.SQL.Text := 'Select MAX(Pokazanie) as Pokazanie From Pokazanie Where ID_avaria = '
                            + dm.qNotSeenFaults.FieldByName('ID_avaria').AsString;
  dm.qEmergency.Open;

  Label3.Caption := 'Участок: ' + dm.qNotSeenFaults.FieldByName('Uchastok').AsString + #13#10
              + 'Объект: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie_1').AsString + #13#10
              + 'Датчик: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie').AsString + #13#10
              + 'Текущее показание: ' + dm.qEmergency.FieldByName('Pokazanie').AsString;
end;

procedure TfrmNotification.TabSheet3Show(Sender: TObject);
begin
  dm.qEmergency.SQL.Text := 'Select MAX(Pokazanie) as Pokazanie From Pokazanie Where ID_avaria = '
                            + dm.qNotSeenFaults.FieldByName('ID_avaria').AsString;
  dm.qEmergency.Open;

  Label3.Caption := 'Участок: ' + dm.qNotSeenFaults.FieldByName('Uchastok').AsString + #13#10
              + 'Объект: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie_1').AsString + #13#10
              + 'Датчик: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie').AsString + #13#10
              + 'Текущее показание: ' + dm.qEmergency.FieldByName('Pokazanie').AsString + #13#10
              + 'Неисправность: ' + RadioGroup1.Items[RadioGroup1.ItemIndex];
end;

procedure TfrmNotification.TabSheet4Show(Sender: TObject);
begin
  Label2.Caption :=  'Участок: ' + dm.qNotSeenFaults.FieldByName('Uchastok').AsString + #13#10
                + 'Объект: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie_1').AsString;
end;



procedure TfrmNotification.Timer1Timer(Sender: TObject);
begin
  PlaySound(pchar('resources\alarm.wav'), 0, SND_FILENAME or SND_ASYNC);
end;

end.
