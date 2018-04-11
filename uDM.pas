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
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure connect();
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
end;

end.
