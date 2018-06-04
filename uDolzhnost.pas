unit uDolzhnost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, DB;

type
  TfrmDolzhnost = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh12: TDBGridEh;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDolzhnost: TfrmDolzhnost;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmDolzhnost.BitBtn1Click(Sender: TObject);
begin
  if dm.qDolzhnost.State in [dsEdit, dsInsert] then
      dm.qDolzhnost.Post;
  self.Close;
end;

procedure TfrmDolzhnost.BitBtn2Click(Sender: TObject);
begin
  if dm.qDolzhnost.State in [dsEdit, dsInsert] then
      dm.qDolzhnost.Cancel;
  self.Close;
end;

end.
