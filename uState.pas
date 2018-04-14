unit uState;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, DB;

type
  TfrmStates = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStates: TfrmStates;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmStates.BitBtn1Click(Sender: TObject);
begin
  if dm.qStates.State in [dsEdit, dsInsert] then dm.qStates.Cancel;
  close;
end;

procedure TfrmStates.BitBtn2Click(Sender: TObject);
begin
  if dm.qStates.State in [dsEdit, dsInsert] then dm.qStates.Post;
  close;
end;

procedure TfrmStates.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.refreshStates;
end;

end.
