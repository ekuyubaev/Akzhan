{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, EhLibADO,
  Data.DB, Vcl.Imaging.jpeg, uDatchik, uNotification, iniFiles,uObjectClass,
  Vcl.Imaging.pngimage;

const IMG_WIDTH = 950;
      IMG_HEIGHT = 683;

type
  TfrmMain = class(TForm)
    PageControl1: TPageControl;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    tsObjects: TTabSheet;
    tsSensors: TTabSheet;
    tsFailure: TTabSheet;
    tsSchema: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn11: TBitBtn;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    N4: TMenuItem;
    N5: TMenuItem;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    DBGridEh5: TDBGridEh;
    DBGridEh6: TDBGridEh;
    BitBtn10: TBitBtn;
    N6: TMenuItem;
    N7: TMenuItem;
    tsLogin: TTabSheet;
    GroupBox1: TGroupBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn12: TBitBtn;
    N8: TMenuItem;
    N9: TMenuItem;
    Image1: TImage;
    Panel13: TPanel;
    DBGridEh7: TDBGridEh;
    GroupBox2: TGroupBox;
    DBGridEh8: TDBGridEh;
    Timer1: TTimer;
    tsModel: TTabSheet;
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn13: TBitBtn;
    tsSmena: TTabSheet;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    DBGridEh9: TDBGridEh;
    DBGridEh10: TDBGridEh;
    tsSotrudnik: TTabSheet;
    Panel18: TPanel;
    Panel19: TPanel;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    DBGridEh11: TDBGridEh;
    N10: TMenuItem;
    BitBtn23: TBitBtn;
    PaintBox1: TPaintBox;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn13Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    sensorCount :integer;
    imgStep : integer;
    procedure SetFrmSensorsDataSource(sensorDataSource:TDataSource);
    procedure stopInterrogation();
  public
    { Public declarations }
    procedure startInterrogation();
  end;


var
  frmMain: TfrmMain;
  imgHeight: Integer = 495;
  imgWidth: Integer = 775;
  datchiki: array of TDatchik;
  //obecty: array of TObect;
  notifier: TNotifier;
  settingsIni: TIniFile;
  tubeColor : TColor = clInactiveCaptionText;
  period : integer;


implementation

{$R *.dfm}

uses uDM, uObject, uSensor, uState, uReading, uFault, uReport, uAbout,
  uDolzhnost;

procedure TfrmMain.BitBtn10Click(Sender: TObject);
begin
  dm.qFault.Edit;
  frmFault.ShowModal;
end;

procedure TfrmMain.BitBtn11Click(Sender: TObject);
begin
  dm.qReadings.Edit;
  frmReading.ShowModal;
end;

procedure TfrmMain.BitBtn12Click(Sender: TObject);
var i: integer;
    DBUser, DBPass, DBHost :string;
begin
  settingsIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'settings.ini');
  DBUser := settingsIni.ReadString('DBSettings','DBUser','root');
  DBPass := settingsIni.ReadString('DBSettings','DBPass','gdx4852T');
  DBHost := settingsIni.ReadString('DBSettings','DBHost','localhost');

  dm.DB_GATE.ConnectionString := 'Provider=MSDASQL.1;'
                                +'Password='+DBPass+';'
                                +'Persist Security Info=True;'
                                +'User ID='+ DBUser +';'
                                +'Extended Properties="DRIVER={MySQL ODBC 5.3 Unicode Driver};'
                                +'UID='+ DBUser +';'
                                +'PWD='+ DBPass +';'
                                +'SERVER='+ DBHost +';'
                                +'DATABASE=db_cppn;'
                                +'PORT=3306;'
                                +'COLUMN_SIZE_S32=1;";'
                                +'Initial Catalog=db_cppn';

  period := settingsIni.ReadInteger('InterrogationSettings', 'period', 5000);
  Edit1.Text := IntToStr(period);

  try
      dm.connect;
  except
    ShowMessage('Не удалось установиь связь с БД.');
    exit;
  end;

  for i := 0 to MainMenu1.Items.Count-1 do
      MainMenu1.Items.Items[i].Enabled := true;

  for i := 1 to PageControl1.PageCount do
  begin
      if not (PageControl1.Pages[i-1] = tsLogin)
        then  PageControl1.Pages[i-1].TabVisible := true;
  end;

  PageControl1.ActivePage := tsSchema;

  {SetLength(obecty, dm.qObjects.RecordCount);

  for I := 1 to dm.qObjects.recordCount do
  begin
    dm.qObjects.RecNo := i;
    obecty[i-1] := TObect.Create;
    obecty[i-1].id := dm.qObjects.FieldByName('ID_object').AsInteger;
    obecty[i-1].xcentr := dm.qObjects.FieldByName('xcentr').AsInteger;
    obecty[i-1].ycentr := dm.qObjects.FieldByName('ycentr').AsInteger;
    obecty[i-1].dlina := dm.qObjects.FieldByName('dlina').AsInteger;
    obecty[i-1].shirina := dm.qObjects.FieldByName('shirina').AsInteger;
    obecty[i-1].naimenovanie := dm.qObjects.FieldByName('naimenovanie').AsString;
    obecty[i-1].figura := dm.qObjects.FieldByName('figura').AsString;
    obecty[i-1].initFields;
  end;    }

  startInterrogation;

  notifier :=TNotifier.Create(true);
  notifier.FreeOnTerminate:=true;
  notifier.Priority:=tpLowest;
  notifier.hideTillNextLaunch := false;
  notifier.Resume;
end;

procedure TfrmMain.BitBtn13Click(Sender: TObject);
begin
  period := StrToInt(Edit1.Text);
  settingsIni.WriteInteger('InterrogationSettings', 'period', StrToInt(Edit1.Text));
  stopInterrogation;
  startInterrogation;
end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
begin
  dm.qSensors.Insert;
  SetFrmSensorsDataSource(dm.dsSensors);
  frmSensors.query := @dm.qSensors;
  frmSensors.ShowModal;
end;

procedure TfrmMain.BitBtn23Click(Sender: TObject);
begin
  imgStep := 1;
  Timer1.Enabled := true;
end;

procedure TfrmMain.BitBtn2Click(Sender: TObject);
begin
  dm.qSensors.Edit;
  SetFrmSensorsDataSource(dm.dsSensors);
  frmSensors.query := @dm.qSensors;
  frmSensors.ShowModal;
end;

procedure TfrmMain.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Вы уверены что хотите удалить запись?', mtInformation,[mbYes,mbCancel],0) = mrYes
      then dm.qSensors.Delete;
end;

procedure TfrmMain.BitBtn4Click(Sender: TObject);
begin
  dm.qObjects.Insert;
  frmObject.ShowModal;
end;

procedure TfrmMain.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Вы уверены что хотите удалить запись?', mtInformation,[mbYes,mbCancel],0) = mrYes
      then dm.qObjects.Delete;
end;

procedure TfrmMain.BitBtn6Click(Sender: TObject);
begin
  dm.qObjects.Edit;
  frmObject.ShowModal;
end;

procedure TfrmMain.BitBtn7Click(Sender: TObject);
begin
  dm.qSensorsI.Insert;
  SetFrmSensorsDataSource(dm.dsSensorsI);
  frmSensors.query := @dm.qSensorsI;
  frmSensors.ShowModal;
end;

procedure TfrmMain.BitBtn8Click(Sender: TObject);
begin
  dm.qSensorsI.Edit;
  SetFrmSensorsDataSource(dm.dsSensorsI);
  frmSensors.query := @dm.qSensorsI;
  frmSensors.ShowModal;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  PaintBox1.Canvas.Pen.Color := clRed;
  PaintBox1.Canvas.MoveTo(0, 0);
  PaintBox1.Canvas.LineTo(200, 200);
end;

procedure TfrmMain.DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
    if (DBGridEh2.DataSource.DataSet.FieldValues['ID_sostoianie'] <> 0) then {тут любое условие}
    begin
        DBGridEh2.Canvas.Brush.Color := clRed;
    end;

    DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmMain.DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
    if (DBGridEh3.DataSource.DataSet.FieldValues['ID_sostoianie'] <> 0) then {тут любое условие}
    begin
        DBGridEh3.Canvas.Brush.Color := clRed;
    end;

    DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmMain.DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
    if (DBGridEh4.DataSource.DataSet.FieldValues['norma'] = false) then {тут любое условие}
    begin
        DBGridEh4.Canvas.Brush.Color := clRed;
    end;

    DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmMain.DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
    if (DBGridEh5.DataSource.DataSet.FieldValues['Ustranena'] = false) then {тут любое условие}
    begin
        if (DBGridEh5.DataSource.DataSet.FieldValues['Zamechena'] = false)
            then DBGridEh5.Canvas.Brush.Color := clRed
            else DBGridEh5.Canvas.Brush.Color := clFuchsia;
    end;

    DBGridEh5.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmMain.stopInterrogation;
var i : integer;
begin
  if sensorCount > 0 then
  begin
    for i := 1 to sensorCount do
      datchiki[i-1].status := -1;
    datchiki := nil;
    sensorCount := -1;
  end;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
var
  fileName  :string;
  bitMap : TBitMap;
  w : TWicImage;
begin
    fileName := 'resources\scheme\55-' + IntToStr(imgStep) + '.png';
    w := TWicImage.Create;
    w.LoadFromFile(fileName);
    bitMap := TBitMap.Create;
    bitMap.Assign(w);
    Image1.Picture.Bitmap.Assign(bitMap);
    w.Free;
    bitMap.Free;
    Inc(imgStep);
    if imgStep > 9 then Timer1.Enabled := false;
end;

procedure TfrmMain.startInterrogation;
var i : Integer;
begin
  stopInterrogation;

  dm.qTemp.close;
  dm.qTemp.SQL.Text := 'Select D.ID_datchik, ID_object, D.ID_sostoianie, Oboznachenie, D.MAX, D.MIN '
                      +'From Datchik D left join Model M on D.ID_datchik = M.ID_datchik';
  dm.qTemp.Open;

  sensorCount := dm.qTemp.RecordCount;

  if sensorCount < 1 then
  begin
    ShowMessage('Нет ни одного датчика');
    exit;
  end;

  setlength(datchiki, sensorCount);

  for i:= 1 to sensorCount do
  begin
      dm.qTemp.RecNo := i;

      datchiki[i-1] :=TDatchik.Create(true);
      datchiki[i-1].FreeOnTerminate:=true;
      datchiki[i-1].Priority:=tpLowest;
      datchiki[i-1].id_datchika := dm.qTemp.FieldByName('ID_datchik').AsInteger;
      datchiki[i-1].id_object := dm.qTemp.FieldByName('ID_object').AsInteger;
      datchiki[i-1].name :=  dm.qTemp.FieldByName('Oboznachenie').AsString;
      datchiki[i-1].status := dm.qTemp.FieldByName('ID_sostoianie').AsInteger;
      //datchiki[i].nomerEdit := dm.qTemp.FieldByName('NomerEdit').AsInteger;
      datchiki[i-1].MAX := dm.qTemp.FieldByName('MAX').AsFloat;
      datchiki[i-1].MIN := dm.qTemp.FieldByName('MIN').AsFloat;
      datchiki[i-1].ID_avaria := -1;
      datchiki[i-1].period := period;
      datchiki[i-1].Resume;
  end;
end;

procedure TfrmMain.FormActivate(Sender: TObject);
var  lrPadding, tbPadding, i : integer;
begin
  self.WindowState := wsMaximized;

  lrPadding := Round( (ClientWidth - GroupBox1.Width) / 2 );
  tbPadding := Round( (ClientHeight - GroupBox1.Height) / 2 );

  GroupBox1.Left := lrPadding;
  GroupBox1.Top := tbPadding;

  self.BorderStyle := bsNone;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.qTemp.SQL.Text := 'Select * From Avaria Where Ustranena = 0';
  dm.qTemp.Open;

  if dm.qTemp.RecordCount > 0 then
  begin
    dm.qTemp.SQL.Text := 'Update Avaria Set Primechanie = '
          + QuotedStr('Работа программы была завершена до устранения аварии. '
          + 'Время завершения работы ПО: ' + FormatDateTime('hh:nn dd.mm.yyyy', Now) );
    dm.qTemp.ExecSQL;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var i : integer;
begin
  datchiki := nil;
  sensorCount := -1;

  for i := 0 to MainMenu1.Items.Count-1 do
      MainMenu1.Items.Items[i].Enabled := false;

  for i := 1 to PageControl1.PageCount do
      PageControl1.Pages[i-1].TabVisible := false;

  PageControl1.ActivePage := tsLogin;
end;

procedure TfrmMain.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin
  {for I := 1 to Length(obecty) do
    obecty[i-1].CheckObect(x, y); }
end;

procedure TfrmMain.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var i : integer;
begin
  {for I := 1 to Length(obecty) do
    obecty[i-1].CheckMouseOver(x, y);}
end;

procedure TfrmMain.N10Click(Sender: TObject);
begin
  frmDolzhnost.ShowModal;
end;

procedure TfrmMain.N5Click(Sender: TObject);
begin
  frmStates.ShowModal;
end;

procedure TfrmMain.N6Click(Sender: TObject);
begin
  frmReport.PageControl1.ActivePage := frmReport.tsReadingsReport;
  frmReport.ShowModal;
end;

procedure TfrmMain.N7Click(Sender: TObject);
begin
  frmReport.PageControl1.ActivePage := frmReport.tsFaultsReport;
  frmReport.ShowModal;
end;

procedure TfrmMain.N8Click(Sender: TObject);
begin
  frmAbout.ShowModal;
end;

procedure TfrmMain.N9Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.SetFrmSensorsDataSource(sensorDataSource: TDataSource);
begin
  frmSensors.DBEditEh1.DataSource := sensorDataSource;
  frmSensors.DBEditEh2.DataSource := sensorDataSource;
  frmSensors.DBEditEh3.DataSource := sensorDataSource;
  frmSensors.DBEditEh4.DataSource := sensorDataSource;
  frmSensors.DBEditEh5.DataSource := sensorDataSource;
  frmSensors.DBLookupComboboxEh1.DataSource := sensorDataSource;
  frmSensors.DBMemoEh1.DataSource := sensorDataSource;
end;

end.
