unit uUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBCtrlsEh, DBLookupEh,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, IdHash, IdHashMessageDigest;

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
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}

uses uDM, DB, uMain;

procedure TfrmUser.BitBtn1Click(Sender: TObject);
var hash : Tidhash;
begin
  if dm.qUser.State in [dsEdit, dsInsert] then dm.qUser.Post;
    frmMain.ShowEvent('Редактирование данных сотрудника '
                        + DBEdit1.Text);
  close;
end;

procedure TfrmUser.BitBtn2Click(Sender: TObject);
begin
  if dm.qUser.State in [dsEdit, dsInsert] then dm.qUser.Cancel;
  close;
end;

procedure TfrmUser.BitBtn3Click(Sender: TObject);
var
    hashMessageDigest5 : TIdHashMessageDigest5;
begin
  hashMessageDigest5 := TIdHashMessageDigest5.Create;
  if MessageDlg('Хэшировать пароль следует только если вы его меняете. Вы меняли пароль?'
                , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DBEdit3.Text :=  hashMessageDigest5.HashStringAsHex(DBEdit3.Text);
end;

end.
