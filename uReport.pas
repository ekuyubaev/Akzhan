unit uReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, ComObj,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmReport = class(TForm)
    PageControl1: TPageControl;
    tsReadingsReport: TTabSheet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    tsFaultsReport: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    BitBtn2: TBitBtn;
    ProgressBar2: TProgressBar;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReport: TfrmReport;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmReport.BitBtn1Click(Sender: TObject);
begin
  close;
end;

function SetBmText(var aBms : Variant; const aBmName, aText : String) : Boolean;
var
  Bm, Rng: Variant;
begin
  //Проверяем - существует ли закладка с заданным именем.
  Result := aBms.Exists(aBmName);
  //Если закладка не найдена - выходим.
  if not Result then Exit;

  //Ссылка на закладку.
  Bm := aBms.Item(aBmName);
  //Ссылка на диапазон, связанный с закладкой.
  Rng := Bm.Range;

  //Заменяем текст в диапазоне.
  Rng.Text := aText;
end;

procedure TfrmReport.BitBtn2Click(Sender: TObject);
var
  MSWord, bookmarks: Variant;
  pathToTemplate : String;
  startDate, endDate : TDateTime;
  i : integer;
  sDate, eDate : String;
  step : real;
  totalStep : real;
begin
  self.DateTimePicker5.Time := self.DateTimePicker6.Time;
  self.DateTimePicker7.Time := self.DateTimePicker8.Time;
  startDate := self.DateTimePicker5.DateTime;
  endDate := self.DateTimePicker7.DateTime;

  sDate := FormatDateTime('yyyy-mm-dd hh:nn:ss', startDate);
  eDate := FormatDateTime('yyyy-mm-dd hh:nn:ss', endDate);

  if dm.qReports.Active then dm.qReports.Close;
  dm.qReports.SQL.Text := 'SELECT O.Naimenovanie as Object, D.Naimenovanie as Datchik, '
                    +'D.Oboznachenie, A.DV_obnaruzhena, A.Opisanie, '
                    +'A.DV_zamechena, A.DV_ustranena '
                    + 'FROM Object O left join Datchik D '
                    + 'ON O.ID_object = D.ID_object '
                    + 'left join Avaria A '
                    + 'ON D.ID_datchik = A.ID_datchik '
                    + 'Where A.DV_obnaruzhena between '
                    + 'STR_TO_DATE(' + QuotedStr(sDate) + ','
                                      + QuotedStr('%Y-%m-%d %H:%i:%s') + ') and '
                    +  'STR_TO_DATE(' + QuotedStr(eDate) + ','
                                      + QuotedStr('%Y-%m-%d %H:%i:%s') + ') '
                    + 'Order by DV_obnaruzhena ';
  dm.qReports.Open;

  if dm.qReports.RecordCount > 0 then
  begin
      MsWord := CreateOleObject('Word.Application');

      pathToTemplate := ExtractFilePath(Application.ExeName) + 'reports\Журнал аварийных ситуаций.dot';
      MsWord.Documents.Add(pathToTemplate);

      step := self.ProgressBar2.Max / dm.qReports.RecordCount;
      totalStep := 0;

      for i := 1 to dm.qReports.RecordCount do
        begin
            dm.qReports.RecNo := i;

            MsWord.ActiveDocument.Tables.Item(1).Rows.Add(EmptyParam);

            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,1).Range.Text := IntToStr(i);
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,2).Range.Text := dm.qReports.FieldByName('Object').AsString;
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,3).Range.Text := dm.qReports.FieldByName('Datchik').AsString
                                                                            + ' (' + dm.qReports.FieldByName('Oboznachenie').AsString + ')';
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,4).Range.Text := dm.qReports.FieldByName('DV_obnaruzhena').AsString;
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,5).Range.Text := dm.qReports.FieldByName('Opisanie').AsString;
            if not dm.qReports.FieldByName('DV_zamechena').IsNull then
                MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,6).Range.Text
                      := FloatToStrF(dm.qReports.FieldByName('DV_zamechena').AsFloat, fffixed, 10, 4);
            if not dm.qReports.FieldByName('DV_ustranena').IsNull then
                MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,7).Range.Text
                      := FloatToStrF(dm.qReports.FieldByName('DV_ustranena').AsFloat, fffixed, 10, 4);
            totalStep := totalStep + step;
            self.ProgressBar1.Position := Round(totalStep);
        end;

        MsWord.ActiveDocument.Tables.Item(1).Rows.Item(1).Select;
        MsWord.Selection.Font.Bold := 1;


        bookmarks := MsWord.ActiveDocument.Bookmarks;
        SetBmText(bookmarks, 'startDate', sDate);
        SetBmText(bookmarks, 'endDate', eDate);

        MsWord.ActiveDocument.Range(0, 0).Select;

        self.Close;

        MsWord.Visible := True;
  end
    else
  ShowMessage('За выбранный период АС не зафиксировано!');
end;

procedure TfrmReport.Button1Click(Sender: TObject);
var
  MSWord: Variant;
  pathToTemplate : String;
  startDate, endDate : TDateTime;
  i : integer;
  sDate, eDate : String;
  step : real;
  totalStep : real;
begin
  {try
        MsWord := GetActiveOleObject('Word.Application');
  except
      try
          MsWord := CreateOleObject('Word.Application');
      except
          Exception.Create('Не удалось создать отчет. Неизвестная ошибка!');
      end;
  end; }
  self.DateTimePicker1.Time := self.DateTimePicker3.Time;
  self.DateTimePicker2.Time := self.DateTimePicker4.Time;
  startDate := self.DateTimePicker1.DateTime;
  endDate := self.DateTimePicker2.DateTime;

  sDate := FormatDateTime('yyyy-mm-dd hh:nn:ss', startDate);
  eDate := FormatDateTime('yyyy-mm-dd hh:nn:ss', endDate);

  if dm.qReports.Active then dm.qReports.Close;
  dm.qReports.SQL.Text := 'SELECT O.Naimenovanie as Object, D.Naimenovanie as Datchik, '
                    +'D.Oboznachenie, P.Norma, '
                    +'P.Datavremia, P.Pokazanie, P.Bolshe_MAX_na, P.Menshe_MIN_na '
                    + 'FROM Object O left join Datchik D '
                    + 'ON O.ID_object = D.ID_object '
                    + 'left join Pokazanie P '
                    + 'ON D.ID_datchik = P.ID_datchik '
                    + 'Where P.Datavremia between '
                    + 'STR_TO_DATE(' + QuotedStr(sDate) + ','
                                      + QuotedStr('%Y-%m-%d %H:%i:%s') + ') and '
                    +  'STR_TO_DATE(' + QuotedStr(eDate) + ','
                                      + QuotedStr('%Y-%m-%d %H:%i:%s') + ') '
                    + 'Order by Object, Datchik, Oboznachenie, Datavremia';
  dm.qReports.Open;


  if dm.qReports.RecordCount > 0 then
  begin
      MsWord := CreateOleObject('Word.Application');
      pathToTemplate := ExtractFilePath(Application.ExeName) + 'reports\Журнал показаний.dot';
      MsWord.Documents.Add(pathToTemplate);


      step := self.ProgressBar1.Max / dm.qReports.RecordCount;
      totalStep := 0;

      for i := 1 to dm.qReports.RecordCount do
        begin
            dm.qReports.RecNo := i;

            MsWord.ActiveDocument.Tables.Item(1).Rows.Add(EmptyParam);

            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,1).Range.Text := IntToStr(i);
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,2).Range.Text := dm.qReports.FieldByName('Object').AsString;
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,3).Range.Text := dm.qReports.FieldByName('Datchik').AsString;
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,4).Range.Text := dm.qReports.FieldByName('Oboznachenie').AsString;
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,5).Range.Text := dm.qReports.FieldByName('Datavremia').AsString;
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,6).Range.Text := FloatToStrF(dm.qReports.FieldByName('Pokazanie').AsFloat, fffixed, 10, 4);
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,7).Range.Text := dm.qReports.FieldByName('Norma').AsString;
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,8).Range.Text := FloatToStrF(dm.qReports.FieldByName('Bolshe_MAX_na').AsFloat, fffixed, 10, 4);
            MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,9).Range.Text := FloatToStrF(dm.qReports.FieldByName('Menshe_MIN_na').AsFloat, fffixed, 10, 4);
            totalStep := totalStep + step;
            self.ProgressBar1.Position := Round(totalStep);
        end;

        MsWord.ActiveDocument.Tables.Item(1).Rows.Item(1).Select;
        MsWord.Selection.Font.Bold := 1;

        MsWord.ActiveDocument.Range(0, 0).Select;

        self.Close;

        MsWord.Visible := True;
  end
      else
  ShowMessage('За выбранный период показания не зафиксированы!');
end;

end.
