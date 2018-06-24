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
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure printRaport;
    procedure printDutyReport;
  end;

var
  frmReport: TfrmReport;

implementation

{$R *.dfm}

uses uDM, uMain;

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


procedure TfrmReport.printRaport;
var
  MSWord, bookmarks: Variant;
  pathToTemplate : String;
  startDate, endDate : TDateTime;
  i : integer;
  sDate, eDate : String;
  step : real;
  totalStep : real;
begin
  MsWord := CreateOleObject('Word.Application');

  pathToTemplate := ExtractFilePath(Application.ExeName) + 'reports\Рапорт АС.dot';
  MsWord.Documents.Add(pathToTemplate);


  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:=FormatDateTime('dd.mm.yyyy hh:nn', dm.qFault.FieldByName('DV_obnaruzhena').AsDateTime);
  MsWord.Selection.Find.Text := '[datetime]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);

  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:= dm.qFault.FieldByName('Uchastok').AsString;
  MsWord.Selection.Find.Text := '[area]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);

  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:= dm.qFault.FieldByName('Object').AsString;
  MsWord.Selection.Find.Text := '[object]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);

  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:= dm.qFault.FieldByName('Naimenovanie').AsString;
  MsWord.Selection.Find.Text := '[sensor]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);

  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:= dm.qFault.FieldByName('Neispravnost').AsString;
  MsWord.Selection.Find.Text := '[fault]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);

  dm.qReps.SQL.Text := 'Select max(Pokazanie) as Pokazanie From Pokazanie '
                      +'Where ID_avaria = ' + dm.qFault.FieldByName('ID_avaria').AsString;
  dm.qReps.Open;
  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:= FloatToStrF(dm.qReps.FieldByName('Pokazanie').AsFloat,
                                                        fffixed, 10, 2);
  MsWord.Selection.Find.Text := '[reading]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);

  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:= dm.qFault.FieldByName('Reshenie').AsString;
  MsWord.Selection.Find.Text := '[action]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);

  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:= dm.qFault.FieldByName('Primechanie').AsString;
  MsWord.Selection.Find.Text := '[group]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);

  dm.qReps.SQL.Text := 'Select * From Smena Sm left join Polzovatel Pl '
                      + ' ON Sm.ID_polzovatel = Pl.ID_polzovatel left join Sotrudnik St '
                      +' ON Pl.ID_sotrudnik = St.ID_sotrudnik '
                      +'Where ID_smena = ' + dm.qFault.FieldByName('ID_smena').AsString;
  dm.qReps.Open;

  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:= dm.qReps.FieldByName('fio').AsString;
  MsWord.Selection.Find.Text := '[user]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);


  MsWord.Visible := True;
end;


procedure TfrmReport.printDutyReport;
var
  MSWord, bookmarks: Variant;
  pathToTemplate : String;
  startDate, endDate : TDateTime;
  i : integer;
  sDate, eDate : String;
  step : real;
  totalStep : real;
  ID_smena : integer;

begin
  dm.qReps.SQL.Text := 'Select ID_smena as ID, datavremia, fio '
                      +'From db_cppn.Smena sm left join Polzovatel P '
                      +'ON sm.ID_polzovatel = P.ID_polzovatel left join Sotrudnik st '
                      +'on P.id_sotrudnik = st.ID_sotrudnik '
                      +'Where ID_smena = ' + dm.qSmena.FieldByName('ID_smena').AsString;
  dm.qReps.Open;

  MsWord := CreateOleObject('Word.Application');

  pathToTemplate := ExtractFilePath(Application.ExeName) + 'reports\Отчет за смену.dot';
  MsWord.Documents.Add(pathToTemplate);

  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:=FormatDateTime('dd.mm.yyyy hh:nn', dm.qReps.FieldByName('datavremia').AsDateTime);
  MsWord.Selection.Find.Text := '[date]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);


  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:=dm.qReps.FieldByName('fio').asstring;
  MsWord.Selection.Find.Text := '[dispatcher]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);


  ID_smena := dm.qReps.FieldByName('ID').AsInteger;
  dm.qReps.SQL.Text := 'Select * From Sostav sv left join Sotrudnik st '
                      +'on sv.ID_sotrudnik = st.ID_sotrudnik '
                      +'left join Dolzhnost D '
                      +'on st.ID_dolzhnost = d.ID_dolzhnosst '
                      +'Where sv.ID_smena = ' + IntToStr(ID_smena);
  dm.qReps.Open;

  for i := 1 to dm.qReps.RecordCount do
  begin
      dm.qReps.RecNo := i;

      MsWord.ActiveDocument.Tables.Item(1).Rows.Add(EmptyParam);

      MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,1).Range.Text := dm.qReps.FieldByName('fio').AsString;
      MsWord.ActiveDocument.Tables.Item(1).Cell(i+1,2).Range.Text := dm.qReps.FieldByName('Dolzhnost').AsString;
  end;


  dm.qReps.SQL.Text := 'Select * From db_cppn.Avaria '
                      +'Where ID_smena = ' + IntToStr(ID_smena);
  dm.qReps.Open;

  MsWord.Selection.Find.ClearFormatting;
  MsWord.Selection.Find.Replacement.ClearFormatting;
  MsWord.Selection.Find.Replacement.Text:= dm.qReps.FieldByName('Opisanie').AsString;
  MsWord.Selection.Find.Text := '[emergency]';
  MsWord.Selection.Find.Forward := True;
  MsWord.Selection.Find.Wrap := 1;
  MsWord.Selection.Find.Format := False;
  MsWord.Selection.Find.MatchCase := False;
  MsWord.Selection.Find.MatchWholeWord := False;
  MsWord.Selection.Find.MatchWildcards := False;
  MsWord.Selection.Find.MatchSoundsLike := False;
  MsWord.Selection.Find.MatchAllWordForms := False;
  MsWord.Selection.Find.Execute(Replace := 2);

  MsWord.Visible := True;
end;



procedure TfrmReport.BitBtn2Click(Sender: TObject);
var
  Excel: Variant;
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
                    +'D.Oboznachenie, O.ID_object as ID_object, A.DV_obnaruzhena, A.Opisanie, '
                    +' A.Neispravnost, A.Reshenie, A.Primechanie, '
                    +'A.DV_zamechena, A.DV_ustranena, U.Uchastok as Uchastok '
                    + 'FROM Object O left join Datchik D '
                    + 'ON O.ID_object = D.ID_object left join Uchastok U '
                    + 'ON O.ID_uchastok = U.ID_uchastok '
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
      Excel := CreateOleObject('Excel.Application');
      pathToTemplate := ExtractFilePath(Application.ExeName) + 'reports\Журнал аварийных ситуаций.xlt';
      excel.Workbooks.Open[pathToTemplate];

      step := self.ProgressBar2.Max / dm.qReports.RecordCount;
      totalStep := 0;

      excel.Workbooks[1].Worksheets[1].Range['B4']
            := 'C  ' + sDate + '  по  ' + eDate;

      for i := 1 to dm.qReports.RecordCount do
        begin
            dm.qReports.RecNo := i;

            excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Uchastok').AsString;

            excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Object').AsString;

            excel.Workbooks[1].Worksheets[1].Range['C'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Datchik').AsString;

            excel.Workbooks[1].Worksheets[1].Range['D'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Oboznachenie').AsString;

            excel.Workbooks[1].Worksheets[1].Range['E'+IntToStr(i+7)]
            := FormatDateTime('dd.mm.yyyy hh:nn:ss', dm.qReports.FieldByName('DV_obnaruzhena').AsDateTime);

            excel.Workbooks[1].Worksheets[1].Range['F'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Opisanie').AsString;

            excel.Workbooks[1].Worksheets[1].Range['G'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Neispravnost').AsString;

            excel.Workbooks[1].Worksheets[1].Range['H'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Reshenie').AsString;

            excel.Workbooks[1].Worksheets[1].Range['I'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Primechanie').AsString;

            totalStep := totalStep + step;
            self.ProgressBar2.Position := Round(totalStep);
        end;

        Excel.Workbooks[1].Worksheets[1].activate;
        Excel.Visible := True;

        self.Close;

        frmMain.ShowEvent('Формирование журнала аварийных ситуаций с '
                        + FormatDateTime('dd.mm.yyyy', DateTimePicker5.DateTime)
                        + ' по ' + FormatDateTime('dd.mm.yyyy', DateTimePicker7.DateTime));
  end
    else
  ShowMessage('За выбранный период АС не зафиксировано!');
end;

procedure TfrmReport.Button1Click(Sender: TObject);
var
  Excel: Variant;
  pathToTemplate : String;
  startDate, endDate : TDateTime;
  i : integer;
  sDate, eDate : String;
  step : real;
  totalStep : real;
  temp : real;
begin
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
      Excel := CreateOleObject('Excel.Application');
      pathToTemplate := ExtractFilePath(Application.ExeName) + 'reports\Журнал показаний.xlt';
      excel.Workbooks.Open[pathToTemplate];

      excel.Workbooks[1].Worksheets[1].Range['B5']
            := 'C  ' + sDate + '  по  ' + eDate;

      step := self.ProgressBar1.Max / dm.qReports.RecordCount;
      totalStep := 0;

      for i := 1 to dm.qReports.RecordCount do
      begin
          dm.qReports.RecNo := i;

          excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Object').AsString;
          excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Datchik').AsString;
          excel.Workbooks[1].Worksheets[1].Range['C'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Oboznachenie').AsString;
          excel.Workbooks[1].Worksheets[1].Range['D'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Datavremia').AsString;
          excel.Workbooks[1].Worksheets[1].Range['E'+IntToStr(i+7)]
            := StringReplace(FloatToStrF(dm.qReports.FieldByName('Pokazanie').AsFloat, fffixed, 8, 4), ',', '.',[]);
          excel.Workbooks[1].Worksheets[1].Range['F'+IntToStr(i+7)]
            := dm.qReports.FieldByName('Norma').AsString;
          excel.Workbooks[1].Worksheets[1].Range['G'+IntToStr(i+7)]
            := StringReplace(FloatToStrF(dm.qReports.FieldByName('Bolshe_MAX_na').AsFloat, fffixed, 8, 4), ',', '.',[]);
          excel.Workbooks[1].Worksheets[1].Range['H'+IntToStr(i+7)]
            := StringReplace(FloatToStrF(dm.qReports.FieldByName('Menshe_MIN_na').AsFloat, fffixed, 8, 4), ',', '.',[]);

          totalStep := totalStep + step;
          self.ProgressBar1.Position := Round(totalStep);
      end;

      Excel.Workbooks[1].Worksheets[1].activate;
      Excel.Visible := True;

      self.Close;

      frmMain.ShowEvent('Формирование журнала показаний с '
                        + FormatDateTime('dd.mm.yyyy', DateTimePicker1.DateTime)
                        + ' по ' + FormatDateTime('dd.mm.yyyy', DateTimePicker2.DateTime));
  end
      else
  ShowMessage('За выбранный период показания не зафиксированы!');
end;

procedure TfrmReport.FormActivate(Sender: TObject);
begin
  self.DateTimePicker1.DateTime := Now;
  self.DateTimePicker2.DateTime := Now;
  self.DateTimePicker3.DateTime := Now;
  self.DateTimePicker4.DateTime := Now;

  self.DateTimePicker5.DateTime := Now;
  self.DateTimePicker6.DateTime := Now;
  self.DateTimePicker7.DateTime := Now;
  self.DateTimePicker8.DateTime := Now;
end;


end.
