unit uUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBCtrlsEh, DBLookupEh,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmUser = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}

uses uDM, DB;

procedure TfrmUser.BitBtn1Click(Sender: TObject);
begin
  if dm.qUser.State in [dsEdit, dsInsert] then dm.qUser.Post;
  close;
end;

procedure TfrmUser.BitBtn2Click(Sender: TObject);
begin
  if dm.qUser.State in [dsEdit, dsInsert] then dm.qUser.Cancel;
  close;
end;

end.
