unit uSmena;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, Vcl.StdCtrls, Vcl.Buttons,
  DBCtrlsEh, Vcl.Mask, DBLookupEh, Vcl.ExtCtrls;

type
  TfrmSmena = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBMemoEh1: TDBMemoEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSmena: TfrmSmena;

implementation

{$R *.dfm}

uses uDM, DB;

procedure TfrmSmena.BitBtn1Click(Sender: TObject);
begin
  if dm.qSmena.State in [dsEdit, dsInsert]
      then dm.qSmena.Post;
  dm.refreshSmena;
  self.Close;
end;

procedure TfrmSmena.BitBtn2Click(Sender: TObject);
begin
  if dm.qSmena.State in [dsEdit, dsInsert]
      then dm.qSmena.Cancel;
  self.Close;
end;

end.
