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
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure connect();
    procedure refreshSensors();
    procedure refreshStates();
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

end.
