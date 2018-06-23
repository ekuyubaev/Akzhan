unit uSotrudnik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Buttons, Vcl.ExtCtrls, DBGridEh, DBCtrlsEh, DBLookupEh;

type
  TfrmSotrudnik = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBMemoEh1: TDBMemoEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSotrudnik: TfrmSotrudnik;

implementation

{$R *.dfm}

uses uDM, DB, uMain;

procedure TfrmSotrudnik.BitBtn1Click(Sender: TObject);
begin
  if dm.qSotrudnik.State in [dsEdit, dsInsert] then dm.qSotrudnik.Post;
  frmMain.ShowEvent('Редактирование данных сотрудника '
                        + DBEdit1.Text);
  close;
end;

procedure TfrmSotrudnik.BitBtn2Click(Sender: TObject);
begin
  if dm.qSotrudnik.State in [dsEdit, dsInsert] then dm.qSotrudnik.Cancel;
  close;
end;

end.
