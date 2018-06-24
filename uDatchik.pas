unit uDatchik;

interface

uses
  Classes, SysUtils, DateUtils, StdCtrls, Dialogs, ADODB, Vcl.Graphics;

type
  TDatchik = class(TThread)
    private
      { Private declarations }
      fID_object :integer;
      fID_datchik :integer;
      fPokazanie:real;
      fStatus: integer;
      fMAX: real;
      fMIN: real;
      fID_avaria : integer;
      fname : String;
      fPeriod : integer;
      fMx :real;
      fDx:real;

    protected
      procedure Execute; override;

      procedure show_pokazanie;
      Procedure interrogate;

    public
      property id_object: integer Read fID_object Write fID_object;
      property id_datchika: integer Read fid_datchik Write fid_datchik;
      property name: String Read fname Write fname;
      property pokazanie: real Read fPokazanie Write fPokazanie;
      property status: integer Read fStatus Write fStatus;
      property MAX: real Read fMAX Write fMAX;
      property MIN: real Read fMIN Write fMIN;
      property ID_avaria: integer Read fID_avaria Write fID_avaria;
      property period: integer Read fPeriod Write fPeriod;
      property mx: real Read fMx Write fMx;
      property dx: real Read fDx Write fDx;
  end;

function bToStr(const value : integer) : string;

var flag : boolean = false;

implementation

uses uDM, uMain, math;

Procedure TDatchik.show_pokazanie;
begin
  with frmMain do
  begin
      if fStatus <> 0 then self.Terminate;
  end;
end;


Procedure TDatchik.interrogate;
var status : boolean;
    idPokazanie: String;
    dataVremia : String;
    bolshe_na, menshe_na : real;
    opisanie : String;
    ind : integer;
begin
  //генераци€ новых показаний
  Randomize;
  fpokazanie := fpokazanie +  RandG(fmx, fdx);

  if fPokazanie > 0 then
  begin
      if fPokazanie > (fMAX + 0.2*fMAX) then fPokazanie := fMAX + 0.2*fMAX +  RandG(fmx, fdx);
      if fPokazanie < (fMIN - 0.2*fMIN) then fPokazanie := fMIN - 0.2*fMIN +  RandG(fmx, fdx);


      dm.qGenerateReadings.SQL.Text := 'Update Model set Pokazanie = '
                          + StringReplace(FloatToStrF(fPokazanie, fffixed, 10, 4), ',', '.', [ rfReplaceAll, rfIgnoreCase ])
                          + ' Where ID_datchik =' + IntToStr(fID_datchik);
      dm.qGenerateReadings.ExecSQL;


      // считывание показаний
      if dm.qInterrogate.Active then dm.qInterrogate.Close;
      dm.qInterrogate.SQL.Text := 'Select Pokazanie From Model Where ID_datchik ='
                                  + IntToStr(fID_datchik);
      dm.qInterrogate.Open;

      dataVremia := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
      fPokazanie := dm.qInterrogate.FieldByName('Pokazanie').AsFloat;

      bolshe_na := 0;
      menshe_na := 0;
      if fPokazanie < fMIN then
      begin
        menshe_na := fMIN - fPokazanie;
        opisanie := '«начение меньше допустимого.';
      end
        else if fPokazanie > fMAX then
      begin
        bolshe_na := fPokazanie - fMAX;
        opisanie := '«начение больше допустимого.';
      end;

      // проверка на аварийную ситуацию
      if ((fMAX < fPokazanie) or (fPokazanie < fMIN))  then
      begin
        // если авари€ не была зафиксирована ранее
        if (fID_avaria <= 0) then
        begin
            if dm.qTemp.Active then dm.qTemp.Close;
            dm.qTemp.SQL.Text := 'Insert into Avaria (ID_datchik, ID_stepen, '
                              +'DV_obnaruzhena, Opisanie, ID_smena) '
                            + 'Values('
                            + IntToStr(fID_datchik) + ', '
                            + '0' + ', '
                            + 'STR_TO_DATE(' + QuotedStr(dataVremia) + ','
                                            + QuotedStr('%Y-%m-%d %H:%i:%s') + '), '
                            +  QuotedStr(opisanie) + ', '+ IntToStr(frmMain.ID_smena) +')';
            dm.qTemp.ExecSQL;

            dm.qTemp.SQL.Text := 'Select last_insert_id() as last_id from Avaria';
            dm.qTemp.Open;
            if not dm.qTemp.FieldByName('last_id').IsNull
                then fID_avaria := dm.qTemp.FieldByName('last_id').AsInteger
                else fID_avaria := 1;
        end;
      end
        else
      // если значени€ вошли в допустимый диапазон
      begin
        // и ранее была зафиксирована авари€, то перевести ее в состо€ние устранена
        if fID_avaria > 0 then
        begin
          fID_avaria := -1;
          dm.refreshFaults;
        end;
      end;

      // занести показани€ в Ѕƒ
      if dm.qTemp.Active then dm.qTemp.Close;
      dm.qTemp.SQL.Text := 'Select max(ID_pokazanie)+1 as lastID From db_cppn.Pokazanie;';
      dm.qTemp.Open;

      if not dm.qTemp.FieldByName('lastID').IsNull
        then idPokazanie := dm.qTemp.FieldByName('lastID').AsString
        else idPokazanie := '1';

      if dm.qTemp.Active then dm.qTemp.Close;
      dm.qTemp.SQL.Text := 'Insert into Pokazanie (ID_pokazanie, ID_datchik, pokazanie, '
                        + ' datavremia, norma, ID_avaria, Bolshe_MAX_na, Menshe_MIN_na) '
                        + 'Values('
                        + idPokazanie + ', '
                        + IntToStr(fID_datchik) + ', '
                        + StringReplace(FloatToStr(fPokazanie), ',', '.', []) + ', '
                        + 'STR_TO_DATE(' + QuotedStr(dataVremia) + ','
                                        + QuotedStr('%Y-%m-%d %H:%i:%s') + '), '
                        + bToStr(fID_avaria) + ', '
                        + IntToStr(fID_avaria) + ', '
                        + StringReplace(FloatToStr(bolshe_na), ',', '.', []) + ', '
                        + StringReplace(FloatToStr(menshe_na), ',', '.', []) + ')';
      dm.qTemp.ExecSQL;
  end;
end;


procedure TDatchik.Execute;
begin
  { Place thread code here }
  while not terminated do
  begin
      if (fStatus = 0) then Synchronize(interrogate);
      Synchronize(show_pokazanie);

      sleep(fPeriod);
  end;
end;

function bToStr(const value : integer) : string;
begin
   if value > 0 then Result := '0' else Result := '1';
end;

end.

