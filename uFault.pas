unit uFault;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  DBCtrlsEh, Vcl.Mask;

type
  TfrmFault = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DBCheckBoxEh2: TDBCheckBoxEh;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh4: TDBEditEh;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBMemoEh1: TDBMemoEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    Label6: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFault: TfrmFault;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmFault.BitBtn1Click(Sender: TObject);
begin
  dm.qFault.Post;
  close;
end;

procedure TfrmFault.BitBtn2Click(Sender: TObject);
begin
  dm.qFault.Cancel;
  close;
end;

end.
