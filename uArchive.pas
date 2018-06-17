unit uArchive;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, System.Zip;

type
  TfrmArchive = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    ProgressBar1: TProgressBar;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArchive: TfrmArchive;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmArchive.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmArchive.BitBtn3Click(Sender: TObject);
Var zip :TZipFile;
  fileName, tempStr:String;
  startDate, endDate : String;
  myFile : TextFile;
  step, totalstep: real;
begin
  ProgressBar1.Position := 0;
  startDate := FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date);
  endDate := FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date);

  AssignFile(myFile, 'arch.txt');
  Rewrite(myFile);

  dm.qArch.SQL.Text := 'Select * From Pokazanie Where '
                    + 'Datavremia between ' + QuotedStr(startDate) + ' and '
                    + QuotedStr(endDate);
  dm.qArch.Open;

  totalStep := 0;
  step := 100/dm.qArch.RecordCount;

  while not dm.qArch.Eof do
  begin
    dm.qArch.Next;
    tempStr := dm.qArch.FieldByName('ID_datchik').AsString
            + ' : ' + dm.qArch.FieldByName('Datavremia').AsString
            + ' : ' + dm.qArch.FieldByName('Pokazanie').AsString;
    Writeln(myFile, tempStr);
    totalStep := totalStep + step;
    ProgressBar1.Position := Round(totalStep);
  end;
  CloseFile(myFile);

  fileName := 'archive/' + startDate+'-'+endDate+'.zip';


  try
      try
        Zip := TZipFile.Create;
        zip.Open(fileName, zmWrite);
        zip.Add('arch.txt');
      except
        On Exception do ShowMessage('Ќе удалось выполнить архивацию показаний!');
      end;
  finally
    zip.Free;
  end;

  ShowMessage('јрхивирование прошло успешно!');
end;

end.
