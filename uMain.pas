unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, EhLibADO;

type
  TfrmMain = class(TForm)
    PageControl1: TPageControl;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    tsObjects: TTabSheet;
    tsSensors: TTabSheet;
    tsFailure: TTabSheet;
    tsSchema: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uDM, uObject, uSensor;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
begin
  dm.qSensors.Insert;
  frmSensors.ShowModal;
end;

procedure TfrmMain.BitBtn2Click(Sender: TObject);
begin
  dm.qSensors.Edit;
  frmSensors.ShowModal;
end;

procedure TfrmMain.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('¬ы уверены что хотите удалить запись?', mtInformation,[mbYes,mbCancel],0) = mrYes
      then dm.qSensors.Delete;
end;

procedure TfrmMain.BitBtn4Click(Sender: TObject);
begin
  dm.qObjects.Insert;
  frmObject.ShowModal;
end;

procedure TfrmMain.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('¬ы уверены что хотите удалить запись?', mtInformation,[mbYes,mbCancel],0) = mrYes
      then dm.qObjects.Delete;
end;

procedure TfrmMain.BitBtn6Click(Sender: TObject);
begin
  dm.qObjects.Edit;
  frmObject.ShowModal;
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  dm.connect;
end;

end.
