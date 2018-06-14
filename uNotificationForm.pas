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
    Label8: TLabel;
    Panel4: TPanel;
    BitBtn5: TBitBtn;
    TabSheet5: TTabSheet;
    Panel5: TPanel;
    Label13: TLabel;
    BitBtn7: TBitBtn;
    TabSheet6: TTabSheet;
    Panel6: TPanel;
    BitBtn8: TBitBtn;
    TabSheet7: TTabSheet;
    Panel7: TPanel;
    Label15: TLabel;
    BitBtn9: TBitBtn;
    TabSheet8: TTabSheet;
    Panel8: TPanel;
    Label16: TLabel;
    BitBtn11: TBitBtn;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    RadioGroup2: TRadioGroup;
    Label4: TLabel;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
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
begin
  dm.qNotSeenFaults.Edit;
  dm.qNotSeenFaults.FieldByName('Zamechena').Value := 1;
  dm.qNotSeenFaults.Post;
  close;
end;

procedure TfrmNotification.BitBtn1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfrmNotification.BitBtn3Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 2;
end;

procedure TfrmNotification.BitBtn4Click(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 3;
end;

procedure TfrmNotification.BitBtn5Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 4;
end;

procedure TfrmNotification.BitBtn7Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 5;
end;

procedure TfrmNotification.BitBtn8Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 6;
end;

procedure TfrmNotification.BitBtn9Click(Sender: TObject);
var i : integer;
begin
{  frmMain.stopInterrogation;

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
                      +RadioGroup1.Items[RadioGroup1.ItemIndex]) + ', Ustranena = 1, DV_ustranena = '
          + QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss', Now))
          + ' Where ID_avaria = ' + dm.qEmergency.FieldByName('ID_avaria').AsString;
    dm.qElimination.ExecSQL;

    frmMain.ShowEvent('Аварийная ситуация была устранена.');
  end;

  frmMain.startInterrogation;  }
  PageControl1.ActivePageIndex := 7;
end;

procedure TfrmNotification.FormCreate(Sender: TObject);
  var
  I: Integer;
begin
  for I := 1 to PageControl1.PageCount do
      PageControl1.Pages[i-1].TabVisible := false;
end;

procedure TfrmNotification.TabSheet3Show(Sender: TObject);
begin
  Label8.Caption :=  'Участок: ' + dm.qNotSeenFaults.FieldByName('Uchastok').AsString;
end;

procedure TfrmNotification.TabSheet4Show(Sender: TObject);
begin
  Label2.Caption :=  'Участок: ' + dm.qNotSeenFaults.FieldByName('Uchastok').AsString + #13#10
                + 'Объект: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie_1').AsString;
end;

procedure TfrmNotification.TabSheet5Show(Sender: TObject);
begin
  dm.qEmergency.SQL.Text := 'Select MAX(Pokazanie) as Pokazanie From Pokazanie Where ID_avaria = '
                            + dm.qNotSeenFaults.FieldByName('ID_avaria').AsString;
  dm.qEmergency.Open;

    Label13.Caption := 'Участок: ' + dm.qNotSeenFaults.FieldByName('Uchastok').AsString + #13#10
                + 'Объект: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie_1').AsString + #13#10
                + 'Датчик: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie').AsString + #13#10
                + 'Текущее показание: ' + dm.qEmergency.FieldByName('Pokazanie').AsString;
end;

procedure TfrmNotification.TabSheet6Show(Sender: TObject);
begin
  dm.qEmergency.SQL.Text := 'Select MAX(Pokazanie) as Pokazanie From Pokazanie Where ID_avaria = '
                            + dm.qNotSeenFaults.FieldByName('ID_avaria').AsString;
  dm.qEmergency.Open;
  Label3.Caption := 'Участок: ' + dm.qNotSeenFaults.FieldByName('Uchastok').AsString + #13#10
            + 'Объект: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie_1').AsString + #13#10
            + 'Датчик: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie').AsString + #13#10
            + 'Текущее показание: ' + dm.qEmergency.FieldByName('Pokazanie').AsString;
end;

procedure TfrmNotification.TabSheet7Show(Sender: TObject);
begin
  dm.qEmergency.SQL.Text := 'Select MAX(Pokazanie) as Pokazanie From Pokazanie Where ID_avaria = '
                            + dm.qNotSeenFaults.FieldByName('ID_avaria').AsString;
  dm.qEmergency.Open;
  Label15.Caption := 'Участок: ' + dm.qNotSeenFaults.FieldByName('Uchastok').AsString + #13#10
              + 'Объект: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie_1').AsString + #13#10
              + 'Датчик: ' + dm.qNotSeenFaults.FieldByName('Naimenovanie').AsString + #13#10
              + 'Текущее показание: ' + dm.qEmergency.FieldByName('Pokazanie').AsString + #13#10
              + 'Неисправность: ' + RadioGroup1.Items[RadioGroup1.ItemIndex];
end;

end.
