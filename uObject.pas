unit uObject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  DBCtrlsEh, Vcl.Mask, DBGridEh, DBLookupEh;

type
  TfrmObject = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBMemoEh1: TDBMemoEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObject: TfrmObject;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmObject.BitBtn1Click(Sender: TObject);
begin
  dm.qObjects.Post;
  Close;
end;

procedure TfrmObject.BitBtn2Click(Sender: TObject);
begin
  dm.qObjects.Cancel;
  Close;
end;

end.
