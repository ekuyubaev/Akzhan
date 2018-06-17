unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.Dialogs;

type
  Tdm = class(TDataModule)
    DB_GATE: TADOConnection;
    qObjects: TADOQuery;
    dsObjects: TDataSource;
    qObjectsID_object: TAutoIncField;
    qObjectsNaimenovanie: TWideStringField;
    qObjectsOboznachenie: TWideStringField;
    qObjectsPrimechanie: TWideMemoField;
    qSensors: TADOQuery;
    dsSensors: TDataSource;
    qStates: TADOQuery;
    dsStates: TDataSource;
    qSensorsID_datchik: TAutoIncField;
    qSensorsID_object: TIntegerField;
    qSensorsNaimenovanie: TWideStringField;
    qSensorsOboznachenie: TWideStringField;
    qSensorsNomer: TWideStringField;
    qSensorsMAX: TFloatField;
    qSensorsMIN: TFloatField;
    qSensorsID_sostoianie: TIntegerField;
    qSensorsPrimechanie: TWideMemoField;
    qSensorsSostoianie: TStringField;
    qSensorsI: TADOQuery;
    dsSensorsI: TDataSource;
    qSensorsIID_datchik: TAutoIncField;
    qSensorsIID_object: TIntegerField;
    qSensorsINaimenovanie: TWideStringField;
    qSensorsIOboznachenie: TWideStringField;
    qSensorsINomer: TWideStringField;
    qSensorsIMAX: TFloatField;
    qSensorsIMIN: TFloatField;
    qSensorsIID_sostoianie: TIntegerField;
    qSensorsIPrimechanie: TWideMemoField;
    qSensorsISostoianie: TStringField;
    qSensorsIObject: TStringField;
    qReadings: TADOQuery;
    dsReadings: TDataSource;
    qInterrogate: TADOQuery;
    qTemp: TADOQuery;
    qFault: TADOQuery;
    qFaultReadings: TADOQuery;
    dsFault: TDataSource;
    dsFaultReadings: TDataSource;
    qFaultID_avaria: TAutoIncField;
    qFaultID_datchik: TIntegerField;
    qFaultZamechena: TSmallintField;
    qFaultUstranena: TSmallintField;
    qFaultID_stepen: TIntegerField;
    qFaultPrimechanie: TWideMemoField;
    qFaultDV_obnaruzhena: TDateTimeField;
    qFaultDV_zamechena: TDateTimeField;
    qFaultDV_ustranena: TDateTimeField;
    qFaultOpisanie: TWideMemoField;
    qReadingsID_pokazanie: TLargeintField;
    qReadingsID_datchik: TIntegerField;
    qReadingsPokazanie: TFloatField;
    qReadingsDatavremia: TDateTimeField;
    qReadingsNorma: TSmallintField;
    qReadingsPrimechanie: TWideMemoField;
    qReadingsID_avaria: TIntegerField;
    qReadingsBolshe_MAX_na: TFloatField;
    qReadingsMenshe_MIN_na: TFloatField;
    qNotSeenFaults: TADOQuery;
    dsNotSeenFaults: TDataSource;
    qNotSeenFaultsID_avaria: TAutoIncField;
    qNotSeenFaultsID_datchik: TIntegerField;
    qNotSeenFaultsZamechena: TSmallintField;
    qNotSeenFaultsUstranena: TSmallintField;
    qNotSeenFaultsID_stepen: TIntegerField;
    qNotSeenFaultsPrimechanie: TWideMemoField;
    qNotSeenFaultsDV_obnaruzhena: TDateTimeField;
    qNotSeenFaultsDV_zamechena: TDateTimeField;
    qNotSeenFaultsDV_ustranena: TDateTimeField;
    qNotSeenFaultsOpisanie: TWideMemoField;
    qNotSeenFaultsObject: TStringField;
    qNotSeenFaultsDatchikNaimenovanie: TStringField;
    qNotSeenFaultsDatchikOboznachenie: TStringField;
    qReports: TADOQuery;
    tblSchema: TADOTable;
    qObjectsFigura: TWideStringField;
    qObjectsXcentr: TIntegerField;
    qObjectsYcentr: TIntegerField;
    qObjectsShirina: TIntegerField;
    qObjectsDlina: TIntegerField;
    qReadingsOnScheme: TADOQuery;
    dsReadingsOnScheme: TDataSource;
    qSmena: TADOQuery;
    qSostav: TADOQuery;
    dsSmena: TDataSource;
    dsSostav: TDataSource;
    qSotrudnik: TADOQuery;
    qDolzhnost: TADOQuery;
    dsSotrudnik: TDataSource;
    dsDolzhnost: TDataSource;
    qSotrudnikID_sotrudnik: TAutoIncField;
    qSotrudnikFIO: TWideStringField;
    qSotrudnikID_dolzhnost: TIntegerField;
    qSotrudnikTelefon: TWideStringField;
    qSotrudnikPrimechanie: TWideMemoField;
    qSmenaID_smena: TAutoIncField;
    qSmenaDatavremia: TDateTimeField;
    qSmenaPrimechanie: TWideMemoField;
    tblEvent: TADOTable;
    qGenerateReadings: TADOQuery;
    qEmergency: TADOQuery;
    qElimination: TADOQuery;
    qUser: TADOQuery;
    dsUser: TDataSource;
    qEvent: TADOQuery;
    qNotSeenFaultsID_datchik_1: TAutoIncField;
    qNotSeenFaultsID_object: TIntegerField;
    qNotSeenFaultsNaimenovanie: TWideStringField;
    qNotSeenFaultsOboznachenie: TWideStringField;
    qNotSeenFaultsNomer: TWideStringField;
    qNotSeenFaultsMAX: TFloatField;
    qNotSeenFaultsMIN: TFloatField;
    qNotSeenFaultsID_sostoianie: TIntegerField;
    qNotSeenFaultsPrimechanie_1: TWideMemoField;
    qNotSeenFaultsID_object_1: TAutoIncField;
    qNotSeenFaultsNaimenovanie_1: TWideStringField;
    qNotSeenFaultsOboznachenie_1: TWideStringField;
    qNotSeenFaultsPrimechanie_2: TWideMemoField;
    qNotSeenFaultsFigura: TWideStringField;
    qNotSeenFaultsXcentr: TIntegerField;
    qNotSeenFaultsYcentr: TIntegerField;
    qNotSeenFaultsShirina: TIntegerField;
    qNotSeenFaultsDlina: TIntegerField;
    qSobytia: TADOQuery;
    dsSobytia: TDataSource;
    qReps: TADOQuery;
    qSmenaID_polzovatel: TIntegerField;
    qEI: TADOQuery;
    dsEI: TDataSource;
    qSensorsIID_EI: TIntegerField;
    qSensorsIDataVvoda: TDateTimeField;
    qSensorsISrokSluzhby: TIntegerField;
    qSensorsID_EI: TIntegerField;
    qSensorsDataVvoda: TDateTimeField;
    qSensorsSrokSluzhby: TIntegerField;
    qArea: TADOQuery;
    dsArea: TDataSource;
    qObjectsID_uchastok: TIntegerField;
    qFaultID_smena: TIntegerField;
    qFaultDataSmena: TDateTimeField;
    qObjectsI: TADOQuery;
    qNotSeenFaultsID_smena: TIntegerField;
    qNotSeenFaultsID_EI: TIntegerField;
    qNotSeenFaultsDataVvoda: TDateTimeField;
    qNotSeenFaultsSrokSluzhby: TIntegerField;
    qNotSeenFaultsID_uchastok: TIntegerField;
    qNotSeenFaultsID_uchastok_1: TAutoIncField;
    qNotSeenFaultsUchastok: TWideStringField;
    qReadingsNotSeenFaults: TADOQuery;
    qFaultNaimenovanie: TWideStringField;
    qFaultOboznachenie: TWideStringField;
    qFaultObject: TWideStringField;
    qFaultUchastok: TWideStringField;
    qFaultNeispravnost: TWideStringField;
    qFaultReshenie: TWideStringField;
    qNotSeenFaultsNeispravnost: TWideStringField;
    qNotSeenFaultsReshenie: TWideStringField;
    qSmenaID_polzovatel_1: TAutoIncField;
    qSmenaLogin: TWideStringField;
    qSmenaParol: TWideStringField;
    qSmenaID_sotrudnik: TIntegerField;
    qSmenaID_sotrudnik_1: TAutoIncField;
    qSmenaFIO: TWideStringField;
    qSmenaID_dolzhnost: TIntegerField;
    qSmenaTelefon: TWideStringField;
    qSmenaPrimechanie_1: TWideMemoField;
    qUserID_polzovatel: TAutoIncField;
    qUserLogin: TWideStringField;
    qUserParol: TWideStringField;
    qUserID_sotrudnik: TIntegerField;
    qUserFIO: TStringField;
    qArch: TADOQuery;
    procedure qSmenaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure connect();
    procedure refreshSensors();
    procedure refreshObjects();
    procedure refreshStates();
    procedure refreshReadings();
    procedure refreshFaults();
    Procedure refreshSobytia;
    procedure insertEvent(event : String);
    Procedure refreshSmena;
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uObjectClass, uMain;

{$R *.dfm}
Procedure Tdm.connect;
begin
  if not DB_GATE.Connected then DB_GATE.Open('root','gdx4852T');

  if not qObjects.Active then qObjects.Open;
  if not qSensors.Active then qSensors.Open;
  if not qStates.Active then qStates.Open;
  if not qSensorsI.Active then qSensorsI.Open;
  if not qReadings.Active then qReadings.Open;
  if not qFault.Active then qFault.Open;
  if not qFaultReadings.Active then qFaultReadings.Open;
  if not qNotSeenFaults.Active then qNotSeenFaults.Open;
  if not tblSchema.Active then tblSchema.Open;
  if not qReadingsOnScheme.Active then qReadingsOnScheme.Open;
  if not qDolzhnost.Active then qDolzhnost.Open;
  if not qSotrudnik.Active then qSotrudnik.Open;
  if not qSmena.Active then qSmena.Open;
  if not qSostav.Active then qSostav.Open;
  if not tblEvent.Active then tblEvent.Open;
  if not qUser.Active then qUser.Open;
  if not qEI.Active then qEI.Open;
  if not qArea.Active then qArea.Open;
  if not qObjectsI.Active then qObjectsI.Open;
  if not qReadingsNotSeenFaults.Active then qReadingsNotSeenFaults.Open;
end;

Procedure Tdm.refreshSmena;
var ind: integer;
begin
  if qSmena.State in [dsInsert, dsEdit] then exit;

  ind := qSmena.RecNo;
  qSmena.Close;
  qSmena.Open;
  qSmena.RecNo := ind;
end;

Procedure Tdm.refreshSensors;
var ind: integer;
begin
  if qSensors.State in [dsInsert, dsEdit] then exit;

  ind := qSensors.RecNo;
  qSensors.Close;
  qSensors.Open;
  qSensors.RecNo := ind;

  ind := qSensorsI.RecNo;
  qSensorsI.Close;
  qSensorsI.Open;
  qSensorsI.RecNo := ind;
end;

Procedure Tdm.refreshObjects;
var ind: integer;
begin
  if qObjects.State in [dsInsert, dsEdit] then exit;

  ind := qObjects.RecNo;
  qObjects.Close;
  qObjects.Open;
  qObjects.RecNo := ind;

  ind := qObjectsI.RecNo;
  qObjectsI.Close;
  qObjectsI.Open;
  qObjectsI.RecNo := ind;
end;

Procedure Tdm.refreshStates;
var ind: integer;
begin
  ind := qStates.RecNo;
  qStates.Close;
  qStates.Open;
  qStates.RecNo := ind;
end;

Procedure Tdm.refreshSobytia;
var ind: integer;
begin
  ind := qSobytia.RecNo;
  qSobytia.Close;
  qSobytia.Open;
  qSobytia.RecNo := ind;
end;

Procedure Tdm.refreshReadings;
var ind: integer;
begin
  if qReadings.State in [dsInsert, dsEdit] then exit;

  if qReadings.RecordCount <= 0 then
  begin
    qReadings.Close;
    qReadings.Open;
  end
    else
  begin
    ind := qReadings.RecNo;
    qReadings.Close;
    qReadings.Open;
    qReadings.RecNo := ind;
  end;

  if qFaultReadings.State in [dsInsert, dsEdit] then exit;

  if qFaultReadings.RecordCount <= 0 then
  begin
    qFaultReadings.Close;
    qFaultReadings.Open;
  end
    else
  begin
    ind := qFaultReadings.RecNo;
    qFaultReadings.Close;
    qFaultReadings.Open;
    qFaultReadings.Last;
    qFaultReadings.RecNo := ind;
  end;

  qReadingsOnScheme.Close;
  qReadingsOnScheme.Open;
end;

Procedure Tdm.refreshFaults;
var ind: integer;
begin
  if qFault.State in [dsInsert, dsEdit] then exit;

  if qFault.RecordCount <= 0 then
  begin
    qFault.Close;
    qFault.Open;
  end
    else
  begin
    ind := qFault.RecNo;
    qFault.Close;
    qFault.Open;
    qFault.RecNo := ind;
  end;
end;

Procedure Tdm.insertEvent(event: string);
begin
  if qEvent.Active then qEvent.Close;
  qEvent.SQL.Text := 'Insert into Sobytia (Opisanie, Datavremia) '
                  + 'Values ( ' + QuotedStr(event) + ', '
                  + QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',now)) + ')';
  qEvent.ExecSQL;
end;

procedure Tdm.qSmenaBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('Datavremia').AsDateTime > now then
  begin
    ShowMessage('Дата/время дежурства не может быть больше текущей даты/времени');
    Abort;
  end;

  if DataSet.State in [dsInsert]
      then DataSet.FieldByName('ID_polzovatel').Value := frmMain.user;
end;

end.
