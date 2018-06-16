unit uArea;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, DB;

type
  TfrmArea = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArea: TfrmArea;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmArea.BitBtn1Click(Sender: TObject);
begin
  if dm.qArea.State in [dsEdit, dsInsert] then dm.qArea.Post;
  dm.refreshObjects;
  close;
end;

procedure TfrmArea.BitBtn2Click(Sender: TObject);
begin
  if dm.qArea.State in [dsEdit, dsInsert] then dm.qArea.Cancel;
  close;
end;

end.
