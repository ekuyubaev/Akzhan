unit uSensor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEh, DBCtrlsEh, DBLookupEh, Vcl.Mask, Data.Win.ADODB;

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

uses uDM;

procedure TfrmSensors.BitBtn1Click(Sender: TObject);
begin
  query.Post;
  dm.refreshSensors;
  close;
end;

procedure TfrmSensors.BitBtn2Click(Sender: TObject);
begin
  query.Cancel;
  close;
end;

end.
