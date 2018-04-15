unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

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
    qFaultDatchikNaimenovanie: TStringField;
    qFaultDatchikOboznachenie: TStringField;
    qFaultObject: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure connect();
    procedure refreshSensors();
    procedure refreshStates();
    procedure refreshReadings();
    procedure refreshFaults();
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
Procedure Tdm.connect;
begin
  if not DB_GATE.Connected then DB_GATE.Open('root','gdx4852T');

  if not qObjects.Active then qObjects.Open;
  if not qSensors.Active then qSensors.Open;
  if not qStates.Active then qStates.Open;
  if not qSensorsI.Active then qSensorsI.Open;
  if not qReadings.Active then qReadings.Open;
end;

Procedure Tdm.refreshSensors;
var ind: integer;
begin
  ind := qSensors.RecNo;
  qSensors.Close;
  qSensors.Open;
  qSensors.RecNo := ind;

  ind := qSensorsI.RecNo;
  qSensorsI.Close;
  qSensorsI.Open;
  qSensorsI.RecNo := ind;
end;

Procedure Tdm.refreshStates;
var ind: integer;
begin
  ind := qStates.RecNo;
  qStates.Close;
  qStates.Open;
  qStates.RecNo := ind;
end;

Procedure Tdm.refreshReadings;
begin
  qReadings.Close;
  qReadings.Open;
  qReadings.Last;

  qFaultReadings.Close;
  qFaultReadings.Open;
  qFaultReadings.Last;
end;

Procedure Tdm.refreshFaults;
var ind: integer;
begin
  ind := qFault.RecNo;
  qFault.Close;
  qFault.Open;
  qFault.RecNo := ind;
end;

end.
