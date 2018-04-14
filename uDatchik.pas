unit uDatchik;

interface

uses
  Classes, SysUtils, DateUtils, StdCtrls, Dialogs, ADODB;

type
  TDatchik = class(TThread)
    private
      { Private declarations }
      fID_datchik :integer;
      fPokazanie:real;
      fNomerEdit:integer;
      fStatus: integer;

    protected
      procedure Execute; override;

      procedure show_pokazanie;
      Procedure interrogate;

    public
      property id_datchika: integer Read fid_datchik Write fid_datchik;
      property pokazanie: real Read fPokazanie Write fPokazanie;
      property status: integer Read fStatus Write fStatus;
      property nomerEdit: integer Read fNomerEdit Write fNomerEdit;
  end;



implementation

uses uDM, uMain, math;

Procedure TDatchik.show_pokazanie;
begin
  with frmMain do
      TEdit(FindComponent('Edit'+IntToStr(nomerEdit))).Text := FloatToStrF(fPokazanie, fffixed, 6, 2);
end;


Procedure TDatchik.interrogate;
begin
  if dm.qInterrogate.Active then dm.qInterrogate.Close;
  dm.qInterrogate.SQL.Text := 'Select Pokazanie From Model Where ID_datchik ='
                              + IntToStr(fID_datchik);
  dm.qInterrogate.Open;
  fPokazanie := dm.qInterrogate.FieldByName('Pokazanie').AsFloat;
end;


procedure TDatchik.Execute;
begin
  { Place thread code here }
  while not terminated do
  begin
      Synchronize(interrogate);
      Synchronize(show_pokazanie);

      sleep(1000);
  end;
end;

end.

