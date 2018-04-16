unit uNotificationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmNotification = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
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

procedure TfrmNotification.BitBtn1Click(Sender: TObject);
begin
  close;
  frmMain.PageControl1.ActivePage := frmMain.tsFailure;
end;

procedure TfrmNotification.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmNotification.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
      uMain.notifier.hideTillNextLaunch := true;
end;

procedure TfrmNotification.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
    DBGridEh1.Canvas.Brush.Color := clFuchsia;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

end.
