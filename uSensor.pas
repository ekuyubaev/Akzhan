unit uSensor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEh, DBCtrlsEh, DBLookupEh, Vcl.Mask, Data.Win.ADODB, DB;

type
  TfrmSensors = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBMemoEh1: TDBMemoEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh6: TDBEditEh;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    query: ^TADOQuery;
  end;

var
  frmSensors: TfrmSensors;

implementation

{$R *.dfm}

uses uDM, uMain;

procedure TfrmSensors.BitBtn1Click(Sender: TObject);
begin
  if dm.qDatchik.State in [dsEdit, dsInsert] then dm.qDatchik.Post;
  dm.refreshSensors;
  frmMain.ShowEvent('�������������� ������ ������� ' + DBEditEh2.Value
                    + ' � ��������� ������� ' + DBEditEh3.Value );
  frmMain.startInterrogation;
  close;
end;

procedure TfrmSensors.BitBtn2Click(Sender: TObject);
begin
  if dm.qDatchik.State in [dsEdit, dsInsert] then dm.qDatchik.Cancel;
  close;
end;

end.
