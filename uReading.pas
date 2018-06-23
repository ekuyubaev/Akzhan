unit uReading;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrlsEh, Vcl.Mask,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmReading = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh1: TDBEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBMemoEh1: TDBMemoEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReading: TfrmReading;

implementation

{$R *.dfm}

uses uDM, uMain;

procedure TfrmReading.BitBtn1Click(Sender: TObject);
begin
  dm.qReadings.Post;
  frmMain.ShowEvent('Редактирование данных о показаний от '
                    + dm.qReadings.FieldByName('Datavremia').AsString
                    + ',  датчика с ИД = ' + dm.qReadings.FieldByName('ID_datchik').AsString);
  close;
end;

procedure TfrmReading.BitBtn2Click(Sender: TObject);
begin
  dm.qReadings.Cancel;
  close;
end;

end.
