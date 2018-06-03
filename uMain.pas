unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, EhLibADO,
  Data.DB, Vcl.Imaging.jpeg, uDatchik, uNotification, iniFiles;

const IMG_WIDTH = 1364;
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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
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
    Edit7: TEdit;
    Edit8: TEdit;
    Image1: TImage;
    BitBtn13: TBitBtn;
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
    procedure tsSchemaShow(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    sensorCount :integer;
    procedure SetFrmSensorsDataSource(sensorDataSource:TDataSource);
    procedure stopInterrogation();
    procedure DrawScheme();
  public
    { Public declarations }
    procedure startInterrogation();
  end;


var
  frmMain: TfrmMain;
  imgHeight: Integer = 495;
  imgWidth: Integer = 775;
  datchiki: array of TDatchik;
  notifier: TNotifier;
  settingsIni: TIniFile;


implementation

{$R *.dfm}

uses uDM, uObject, uSensor, uState, uReading, uFault, uReport, uAbout;

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


  startInterrogation;

  notifier :=TNotifier.Create(true);
  notifier.FreeOnTerminate:=true;
  notifier.Priority:=tpLowest;
  notifier.hideTillNextLaunch := false;
  notifier.Resume;
end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
begin
  dm.qSensors.Insert;
  SetFrmSensorsDataSource(dm.dsSensors);
  frmSensors.query := @dm.qSensors;
  frmSensors.ShowModal;
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
      datchiki[i].status := -1;
    datchiki := nil;
    sensorCount := -1;
  end;
end;

procedure TfrmMain.tsSchemaShow(Sender: TObject);
begin
  self.DrawScheme;
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

  Rect.Left:=0;
  Rect.Top:=0;
  Rect.Right:=Image1.Width;
  Rect.Bottom:=Image1.Height;
  Image1.Canvas.Brush.Color:=clGray;
  Image1.Canvas.FillRect(Rect);


  Image1.Canvas.Pen.Color := clBlack;

  xratio := Image1.Width / IMG_WIDTH;
  yratio := Image1.Height / IMG_HEIGHT;

  for I := 1 to dm.tblSchema.RecordCount do
  begin
    dm.tblSchema.RecNo := i;

    fromx := Round(xratio*dm.tblSchema.FieldByName('fromx').AsInteger);
    fromy := Round(yratio*dm.tblSchema.FieldByName('fromy').AsInteger);
    tox := Round(xratio*dm.tblSchema.FieldByName('tox').AsInteger);
    toy := Round(yratio*dm.tblSchema.FieldByName('toy').AsInteger);

    Image1.Canvas.MoveTo(fromx, fromy);
    Image1.Canvas.LineTo(tox, toy);
  end;

  Image1.Canvas.Brush.Color := clTeal;
  Image1.Canvas.FloodFill(Round(xratio*145), Round(yratio*5), clBlack, fsBorder);
  Image1.Canvas.FloodFill(Round(xratio*160), Round(yratio*110), clBlack, fsBorder);
  Image1.Canvas.FloodFill(Round(xratio*560), Round(yratio*630), clBlack, fsBorder);
  Image1.Canvas.FloodFill(Round(xratio*105), Round(yratio*580), clBlack, fsBorder);

  Image1.Canvas.Brush.Color := clOlive;
  Image1.Canvas.FloodFill(Round(xratio*10), Round(yratio*600), clBlack, fsBorder);
  Image1.Canvas.FloodFill(Round(xratio*110), Round(yratio*510), clBlack, fsBorder);
  Image1.Canvas.FloodFill(Round(xratio*490), Round(yratio*620), clBlack, fsBorder);
end;

procedure TfrmMain.startInterrogation;
var i : Integer;
begin
  stopInterrogation;

  dm.qTemp.close;
  dm.qTemp.SQL.Text := 'Select D.ID_datchik, D.ID_sostoianie, M.NomerEdit, D.MAX, D.MIN '
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

      datchiki[i] :=TDatchik.Create(true);
      datchiki[i].FreeOnTerminate:=true;
      datchiki[i].Priority:=tpLowest;
      datchiki[i].id_datchika := dm.qTemp.FieldByName('ID_datchik').AsInteger;
      datchiki[i].status := dm.qTemp.FieldByName('ID_sostoianie').AsInteger;
      datchiki[i].nomerEdit := dm.qTemp.FieldByName('NomerEdit').AsInteger;
      datchiki[i].MAX := dm.qTemp.FieldByName('MAX').AsFloat;
      datchiki[i].MIN := dm.qTemp.FieldByName('MIN').AsFloat;
      datchiki[i].ID_avaria := -1;
      datchiki[i].Resume;
  end;
end;

procedure TfrmMain.FormActivate(Sender: TObject);
var  lrPadding, tbPadding : integer;
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
begin
  Edit7.Text := IntToStr(x);
  Edit8.Text := IntToStr(y);
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
