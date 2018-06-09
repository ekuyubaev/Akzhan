unit uNotificationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TfrmNotification = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    BitBtn4: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Panel4: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn5: TBitBtn;
    TabSheet5: TTabSheet;
    BitBtn6: TBitBtn;
    Panel5: TPanel;
    Label13: TLabel;
    BitBtn7: TBitBtn;
    TabSheet6: TTabSheet;
    Panel6: TPanel;
    Label14: TLabel;
    BitBtn8: TBitBtn;
    TabSheet7: TTabSheet;
    Panel7: TPanel;
    Label15: TLabel;
    Memo1: TMemo;
    BitBtn9: TBitBtn;
    TabSheet8: TTabSheet;
    Panel8: TPanel;
    Label16: TLabel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
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

procedure TfrmNotification.BitBtn10Click(Sender: TObject);
begin
  close;
end;

procedure TfrmNotification.BitBtn11Click(Sender: TObject);
begin
  frmMain.PageControl1.ActivePage := frmMain.tsFailure;
  close;
end;

procedure TfrmNotification.BitBtn1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfrmNotification.BitBtn2Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 2;
end;

procedure TfrmNotification.BitBtn3Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmNotification.BitBtn4Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex < 0 then
  begin
    ShowMessage('ƒоложите начальнику смены и выберите вариант возможной неисправности!');
    Exit;
  end
    else
  begin
    PageControl1.ActivePageIndex := 3;
  end;
end;

procedure TfrmNotification.BitBtn5Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 4;
end;

procedure TfrmNotification.BitBtn6Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 2;
end;

procedure TfrmNotification.BitBtn7Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 5;
end;

procedure TfrmNotification.BitBtn8Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 6;
end;

end.
