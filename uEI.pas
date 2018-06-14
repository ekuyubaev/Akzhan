unit uEI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, DB;

type
  TfrmEI = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEI: TfrmEI;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmEI.BitBtn1Click(Sender: TObject);
begin
  if dm.qEI.State in [dsEdit, dsInsert] then dm.qEI.Cancel;
  close;
end;

procedure TfrmEI.BitBtn2Click(Sender: TObject);
begin
  if dm.qEI.State in [dsEdit, dsInsert] then dm.qEI.Post;
  close;
end;

end.
