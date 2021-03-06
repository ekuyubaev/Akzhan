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
  Vcl.Imaging.pngimage, DateUtils, DBCtrlsEh, DBLookupEh, Vcl.Mask, Vcl.DBCtrls,
  IdHash, IdHashMessageDigest;

const IMG_WIDTH = 1000;
      IMG_HEIGHT = 723;

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
    Image1: TImage;
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
    BitBtn15: TBitBtn;
    BitBtn17: TBitBtn;
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
    Timer2: TTimer;
    Panel13: TPanel;
    Memo1: TMemo;
    PaintBox1: TPaintBox;
    Timer3: TTimer;
    TabSheet1: TTabSheet;
    Panel20: TPanel;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    DBGridEh7: TDBGridEh;
    N11: TMenuItem;
    N12: TMenuItem;
    TabSheet2: TTabSheet;
    Panel21: TPanel;
    DBGridEh8: TDBGridEh;
    BitBtn29: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    Timer4: TTimer;
    Timer5: TTimer;
    N13: TMenuItem;
    N14: TMenuItem;
    BitBtn23: TBitBtn;
    N9: TMenuItem;
    BitBtn14: TBitBtn;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEditEh1: TDBEditEh;
    BitBtn16: TBitBtn;
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
    procedure BitBtn13Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
  private
    { Private declarations }
    sensorCount :integer;
    imgStep : integer;
    eventStep : integer;
    mainfileName  :string;
    mainbitMap : TBitMap;
    mainw : TWicImage;
    processStarted : boolean;
    procedure SetFrmSensorsDataSource(sensorDataSource:TDataSource);
    procedure DrawScheme();
  public
    { Public declarations }
    drawed : boolean;
    user : integer;
    datavremia : TDateTime;
    ID_smena : integer;
    procedure stopInterrogation();
    procedure startInterrogation();
    procedure ShowEvent(event : String);
  end;


var
  frmMain: TfrmMain;
  imgHeight: Integer = 495;
  imgWidth: Integer = 775;
  datchiki: array of TDatchik;
  obecty: array of TObect;
  notifier: TNotifier;
  settingsIni: TIniFile;
  tubeColor : TColor = clInactiveCaptionText;
  period : integer;
  faultSensorID : integer = -1;


implementation

{$R *.dfm}

uses uDM, uObject, uSensor, uState, uReading, uFault, uReport, uAbout,
  uDolzhnost, uEI, uArea, uSmena, uArchive, uSotrudnik, uUser;

Procedure TfrmMain.ShowEvent(event: string);
begin
  Memo1.Lines.Add(FormatDateTime('dd.mm.yyyy hh:nn:ss', now) + ' - ' + event);
  Memo1.Lines.Add('');
  dm.insertEvent(event);
end;


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
    hashMessageDigest5 : TIdHashMessageDigest5;

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
    ShowMessage('�� ������� ��������� ����� � ��.');
    exit;
  end;

  hashMessageDigest5 := TIdHashMessageDigest5.Create;
  if (Edit5.Text = 'administrator') then
  begin
  end
  else if dm.qUser.Locate('Login', Edit5.Text, [loCaseInsensitive]) then
  begin
    if not (dm.qUser.FieldByName('Parol').AsString = hashMessageDigest5.HashStringAsHex(Edit6.Text)) then
    begin
      ShowMessage('������������ � ����� �������\������� ��� � �������!');
      Exit;
    end;
    self.user := dm.qUser.FieldByName('ID_polzovatel').AsInteger;
    self.datavremia := now();
  end
    else
  begin
    ShowMessage('������������ � ����� �������\������� ��� � �������!');
    Exit;
  end;

  ShowEvent('������������: ' + dm.qUser.FieldByName('FIO').AsString + ' ������������� � �������.');
  Edit6.Clear;

  for i := 0 to MainMenu1.Items.Count-1 do
      MainMenu1.Items.Items[i].Enabled := true;

  for i := 1 to PageControl1.PageCount do
  begin
      if not (PageControl1.Pages[i-1] = tsLogin)
        then  PageControl1.Pages[i-1].TabVisible := true;
  end;

  PageControl1.ActivePage := tsSchema;

  dm.qTemp.SQL.Text := 'Insert Into Smena (Datavremia, ID_polzovatel) '
                        +'Values ('+ QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss', Now)) +', '+ IntToStr(self.user) +')';
  dm.qTemp.ExecSQL;

  dm.qTemp.SQL.Text := 'Select max(ID_smena) as ID_smena From Smena';
  dm.qTemp.Open;
  ID_smena := dm.qTemp.FieldByName('ID_smena').AsInteger;

  dm.refreshSmena;

  if not processStarted then
  begin
      mainfileName := 'resources\scheme\7.png';
      mainw := TWicImage.Create;
      mainw.LoadFromFile(mainfileName);
      mainbitMap := TBitMap.Create;
      mainbitMap.Assign(mainw);
      drawed := false;


      dm.qTemp.close;
      dm.qTemp.SQL.Text := 'Update Avaria Set Ustranena = 1 '
                          + 'Where Ustranena = 0 ';
      dm.qTemp.ExecSQL;

      dm.qTemp.close;
      dm.qTemp.SQL.Text := 'Update Model Set Mx = 0, Dx = 0.01, Pokazanie = 0.3 '
                          + 'Where ID_model = 3 ';
      dm.qTemp.ExecSQL;

      imgStep := 1;
      eventStep := 1;
      stopInterrogation;
      Timer2.Enabled := false;
      Timer3.Enabled := false;
      Timer4.Enabled := false;
      Timer5.Enabled := false;
      Timer1.Enabled := true;
  end;
end;

procedure TfrmMain.BitBtn13Click(Sender: TObject);
begin
  period := StrToInt(Edit1.Text);
  settingsIni.WriteInteger('InterrogationSettings', 'period', StrToInt(Edit1.Text));
  stopInterrogation;
  startInterrogation;
  frmMain.ShowEvent('��������� ������� ������������ ������. ����� ��������: ' + Edit1.Text);
end;

procedure TfrmMain.BitBtn15Click(Sender: TObject);
begin
  dm.qSmena.Edit;
  frmSmena.ShowModal;
end;

procedure TfrmMain.BitBtn16Click(Sender: TObject);
begin
  stopInterrogation;
  dm.qTemp.close;
  dm.qTemp.SQL.Text := 'Update Model Set Mx = 0.02, Dx = 0.01 '
                      + 'Where ID_model = 3 ';
  dm.qTemp.ExecSQL;

  dm.qTemp.close;
  dm.qTemp.SQL.Text := 'Select ID_datchik From Model '
                      + 'Where ID_model = 3 ';
  dm.qTemp.Open;

  faultSensorID := dm.qTemp.FieldByName('ID_datchik').AsInteger;

  startInterrogation;
end;

procedure TfrmMain.BitBtn17Click(Sender: TObject);
begin
  dm.qSostav.Insert;
end;

procedure TfrmMain.BitBtn19Click(Sender: TObject);
begin
  if MessageDlg('�� ������� ��� ������ ������� ������?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dm.qSostav.Delete;
end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
begin
  dm.qDatchik.Insert;
  dm.qDatchik.FieldByName('ID_object').Value := dm.qObjects.FieldByName('ID_object').AsInteger;
  frmSensors.DBLookupComboboxEh3.Enabled := false;
  frmSensors.ShowModal;
end;

procedure TfrmMain.BitBtn20Click(Sender: TObject);
begin
  dm.qSotrudnik.Insert;
  frmSotrudnik.ShowModal;
end;

procedure TfrmMain.BitBtn21Click(Sender: TObject);
begin
  dm.qSotrudnik.Edit;
  frmSotrudnik.ShowModal;
end;

procedure TfrmMain.BitBtn14Click(Sender: TObject);
begin
  if MessageDlg('�� ������� ��� ������ ������� ������?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dm.qUser.Delete;
end;

procedure TfrmMain.BitBtn22Click(Sender: TObject);
begin
  if MessageDlg('�� ������� ��� ������ ������� ������?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dm.qSotrudnik.Delete;
end;

procedure TfrmMain.BitBtn23Click(Sender: TObject);
begin
  frmReport.printDutyReport;
  frmMain.ShowEvent('������������ ������ �������� ����� ��: '
                    + dm.qSmena.FieldByName('Datavremia').AsString );
end;

procedure TfrmMain.BitBtn25Click(Sender: TObject);
begin
  dm.qUser.Insert;
  frmUser.BitBtn3.Visible := false;
  frmUser.ShowModal;
end;

procedure TfrmMain.BitBtn26Click(Sender: TObject);
begin
  dm.qUser.Edit;
  frmUser.BitBtn3.Visible := true;
  frmUser.ShowModal;
end;

procedure TfrmMain.BitBtn27Click(Sender: TObject);
begin
  dm.refreshFaults;
end;

procedure TfrmMain.BitBtn28Click(Sender: TObject);
begin
  dm.refreshReadings;
end;

procedure TfrmMain.BitBtn29Click(Sender: TObject);
begin
  dm.refreshSobytia;
end;

procedure TfrmMain.BitBtn2Click(Sender: TObject);
begin
  if dm.qSensors.RecordCount > 0 then
  begin
      dm.qDatchik.Locate('ID_datchik', dm.qSensors.FieldByName('ID_datchik').AsInteger, []);
      dm.qDatchik.Edit;
      frmSensors.DBLookupComboboxEh3.Enabled := false;
      frmSensors.ShowModal;
  end;
end;

procedure TfrmMain.BitBtn30Click(Sender: TObject);
begin
  dm.refreshReadings;
end;

procedure TfrmMain.BitBtn31Click(Sender: TObject);
begin
  frmReport.printRaport;
  frmMain.ShowEvent('������������ ������� ��������� �������� ��: '
                    + dm.qFault.FieldByName('DV_obnaruzhena').AsString );
end;

procedure TfrmMain.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('�� ������� ��� ������ ������� ������?', mtInformation,[mbYes,mbCancel],0) = mrYes
      then dm.qSensors.Delete;
end;

procedure TfrmMain.BitBtn4Click(Sender: TObject);
begin
  dm.qObjects.Insert;
  frmObject.ShowModal;
end;

procedure TfrmMain.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('�� ������� ��� ������ ������� ������?', mtInformation,[mbYes,mbCancel],0) = mrYes
      then dm.qObjects.Delete;
end;

procedure TfrmMain.BitBtn6Click(Sender: TObject);
begin
  dm.qObjects.Edit;
  frmObject.ShowModal;
end;

procedure TfrmMain.BitBtn7Click(Sender: TObject);
begin
  dm.qDatchik.Insert;
  frmSensors.DBLookupComboboxEh3.Enabled := true;
  frmSensors.ShowModal;
end;

procedure TfrmMain.BitBtn8Click(Sender: TObject);
begin
  dm.qDatchik.Locate('ID_datchik', dm.qSensorsI.FieldByName('ID_datchik').AsInteger, []);
  dm.qDatchik.Edit;
  frmSensors.DBLookupComboboxEh3.Enabled := true;
  frmSensors.ShowModal;
end;

procedure TfrmMain.DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
    if (DBGridEh2.DataSource.DataSet.FieldValues['ID_sostoianie'] <> 0) then {��� ����� �������}
    begin
        DBGridEh2.Canvas.Brush.Color := clRed;
    end;

    DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmMain.DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
    if (DBGridEh3.DataSource.DataSet.FieldValues['ID_sostoianie'] <> 0) then {��� ����� �������}
    begin
        DBGridEh3.Canvas.Brush.Color := clRed;
    end;

    DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmMain.DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
    if (DBGridEh4.DataSource.DataSet.FieldValues['norma'] = false) then {��� ����� �������}
    begin
        DBGridEh4.Canvas.Brush.Color := clRed;
    end;

    DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmMain.DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
    if (DBGridEh5.DataSource.DataSet.FieldValues['Ustranena'] = false) then {��� ����� �������}
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
  i : integer;
begin
    if dm.tblEvent.Locate('id',imgStep,[]) then
        ShowEvent(dm.tblEvent.FieldByName('event').AsString);

    fileName := 'resources\scheme\' + IntToStr(imgStep) + '.png';
    w := TWicImage.Create;
    w.LoadFromFile(fileName);
    bitMap := TBitMap.Create;
    bitMap.Assign(w);
    Image1.Picture.Bitmap.Assign(bitMap);
    w.Free;
    bitMap.Free;

    Inc(imgStep);

    if imgStep > 7 then
    begin
      Timer1.Enabled := false;

      startInterrogation;

      SetLength(obecty, 0);
      SetLength(obecty, dm.qObjects.RecordCount);

      for I := 1 to dm.qObjectsI.recordCount do
      begin
        dm.qObjectsI.RecNo := i;
        obecty[i-1] := TObect.Create;
        obecty[i-1].id := dm.qObjectsI.FieldByName('ID_object').AsInteger;
        obecty[i-1].xcentr := dm.qObjectsI.FieldByName('xcentr').AsInteger;
        obecty[i-1].ycentr := dm.qObjectsI.FieldByName('ycentr').AsInteger;
        obecty[i-1].dlina := dm.qObjectsI.FieldByName('dlina').AsInteger;
        obecty[i-1].shirina := dm.qObjectsI.FieldByName('shirina').AsInteger;
        obecty[i-1].naimenovanie := dm.qObjectsI.FieldByName('Naimenovanie').AsString;
        obecty[i-1].initFields;
      end;

      notifier :=TNotifier.Create(true);
      notifier.FreeOnTerminate:=true;
      notifier.Priority:=tpLowest;
      notifier.hideTillNextLaunch := false;
      notifier.Resume;

      Timer2.Enabled := true;
      Timer3.Enabled := true;
      Timer4.Enabled := true;
      Timer5.Enabled := true;
    end;
end;

procedure TfrmMain.Timer2Timer(Sender: TObject);
begin
  if Timer1.Enabled = false then
  begin
    //Image1.Invalidate;
    if drawed then
    begin
      Image1.Picture.Bitmap.Assign(mainbitMap);
      drawed := false;
    end;
  end;
end;

procedure TfrmMain.Timer3Timer(Sender: TObject);
begin
  if not drawed then
  begin
    DrawScheme;
    drawed := true;
  end;
end;

procedure TfrmMain.Timer4Timer(Sender: TObject);
begin
  if dm.tblEvent.Locate('id',eventStep,[]) then
      ShowEvent(dm.tblEvent.FieldByName('event').AsString);

  Inc(eventStep);

  if eventStep > 7 then
      eventStep := 1;
end;

procedure TfrmMain.Timer5Timer(Sender: TObject);
begin
  {stopInterrogation;
  dm.qTemp.close;
  dm.qTemp.SQL.Text := 'Update Model Set Mx = 0.02, Dx = 0.01 '
                      + 'Where ID_model = 3 ';
  dm.qTemp.ExecSQL;

  dm.qTemp.close;
  dm.qTemp.SQL.Text := 'Select ID_datchik From Model '
                      + 'Where ID_model = 3 ';
  dm.qTemp.Open;

  faultSensorID := dm.qTemp.FieldByName('ID_datchik').AsInteger;

  startInterrogation;  }

  Timer5.Enabled := false;
end;

procedure TfrmMain.startInterrogation;
var i : Integer;
begin
  if sensorCount > 0 then stopInterrogation;

  dm.qTemp.close;
  dm.qTemp.SQL.Text := 'Select D.ID_datchik, ID_object, D.ID_sostoianie, '
                      + 'Oboznachenie, D.MAX, D.MIN, M.Pokazanie, M.Mx, M.Dx '
                      +'From Datchik D left join Model M on D.ID_datchik = M.ID_datchik';
  dm.qTemp.Open;

  sensorCount := dm.qTemp.RecordCount;

  if sensorCount < 1 then
  begin
    ShowMessage('��� �� ������ �������');
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
      datchiki[i-1].MAX := dm.qTemp.FieldByName('MAX').AsFloat;
      datchiki[i-1].MIN := dm.qTemp.FieldByName('MIN').AsFloat;

      datchiki[i-1].pokazanie := dm.qTemp.FieldByName('Pokazanie').AsFloat;
      datchiki[i-1].mx := dm.qTemp.FieldByName('Mx').AsFloat;
      datchiki[i-1].dx := dm.qTemp.FieldByName('Dx').AsFloat;

      datchiki[i-1].ID_avaria := -1;
      if faultSensorID = datchiki[i-1].id_datchika  then datchiki[i-1].period := 5000
      else datchiki[i-1].period := period;
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
  ShowEvent('������ ���������� ���� ���������. ');
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var i : integer;
begin
  datchiki := nil;
  obecty := nil;
  sensorCount := -1;

  for i := 0 to MainMenu1.Items.Count-2 do
      MainMenu1.Items.Items[i].Enabled := false;

  for i := 1 to PageControl1.PageCount do
      PageControl1.Pages[i-1].TabVisible := false;

  PageControl1.ActivePage := tsLogin;

  processStarted := false;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  mainw.Free;
  mainbitMap.Free;
  SetLength(obecty, 0);
  SetLength(datchiki, 0);
end;

procedure TfrmMain.N10Click(Sender: TObject);
begin
  frmDolzhnost.ShowModal;
end;

procedure TfrmMain.N11Click(Sender: TObject);
var tempStr : string;
    i : integer;
begin
  tempStr := '������������: ' + Edit5.Text + ' �������� ����� ������.';
  ShowEvent(tempStr);

  for i := 0 to MainMenu1.Items.Count-2 do
      MainMenu1.Items.Items[i].Enabled := false;

  PageControl1.ActivePage := tsLogin;
end;

procedure TfrmMain.N12Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.N13Click(Sender: TObject);
begin
  frmEI.ShowModal;
end;

procedure TfrmMain.N14Click(Sender: TObject);
begin
  frmArea.ShowModal;
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
  frmArchive.ShowModal;
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


procedure TfrmMain.DrawScheme;
var
  I: Integer;
  fromx, fromy, tox, toy : integer;
  Rect :TRect;
  xratio, yratio : real;

begin
  if dm.tblSchema.Active then dm.tblSchema.Close;
  dm.tblSchema.Open;

  for I := 1 to Length(Obecty) do
    obecty[i-1].DrawSelf(1);
end;

procedure TfrmMain.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BitBtn12.Click;
end;

end.
