unit uObjectClass;

interface

uses types, Vcl.Graphics, System.SysUtils;

type TObect = class
private
  fid : integer;
  fxcentr: integer;
  fycentr: integer;
  fdlina : integer;
  fshirina : integer;
  fnaimenovanie : String;
  xratio : real;
  yratio : real;

public
  property id : integer read fid write fid;
  property xcentr : integer read fxcentr write fxcentr;
  property ycentr : integer read fycentr write fycentr;
  property dlina : integer read fdlina write fdlina;
  property shirina : integer read fshirina write fshirina;
  property naimenovanie : String read fnaimenovanie write fnaimenovanie;

  procedure DrawSelf(fillColor : integer);
  procedure initFields;
end;

implementation

uses uMain, uDM;

procedure TObect.initFields;
begin
  xratio := frmMain.PaintBox1.Width / IMG_WIDTH;
  yratio := frmMain.PaintBox1.Height / IMG_HEIGHT;

  xcentr := Round(xratio*xcentr);
  ycentr := Round(yratio*ycentr);
end;

procedure TObect.DrawSelf(fillColor : integer);
var Rect : TRect;
  I, row: Integer;
  pokazanie : String;


begin
  if (fillColor = 1) then frmMain.PaintBox1.Canvas.Brush.Color := clAqua
  else if(fillColor = 2) then  frmMain.PaintBox1.Canvas.Brush.Color := clYellow
  else if(fillColor = 3) then  frmMain.PaintBox1.Canvas.Brush.Color := clRed;

  frmMain.PaintBox1.Canvas.Font.Name := 'Tahoma';
  frmMain.PaintBox1.Canvas.Font.Size := 8;
  frmMain.PaintBox1.Canvas.Brush.Style := bsClear;
  frmMain.PaintBox1.Canvas.Font.Color := clMaroon;
  frmMain.PaintBox1.Canvas.TextOut(xcentr, ycentr, naimenovanie);

  frmMain.PaintBox1.Canvas.Font.Color := clGreen;
  frmMain.PaintBox1.Canvas.Font.Size := 7;
  row := 1;
  for I := 1 to Length(datchiki) do
  begin
    if datchiki[i-1].id_object = fid then
    begin
      pokazanie := datchiki[i-1].name + ' : ' + FloatToStrF(datchiki[i-1].pokazanie, fffixed, 4, 2);
      frmMain.PaintBox1.Canvas.TextOut(xcentr, ycentr+row*15, pokazanie);
      inc(row);
    end;
  end;
end;

end.
