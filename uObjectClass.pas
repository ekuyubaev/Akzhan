unit uObjectClass;

interface

uses types,Vcl.Graphics, System.SysUtils;

type TObect = class
private
  fid : integer;
  fxcentr: integer;
  fycentr: integer;
  fdlina : integer;
  fshirina : integer;
  fnaimenovanie : String;
  ffigura : String;
  xratio : real;
  yratio : real;
  x1: integer;
  y1 : integer;
  x2:integer;
  y2:integer;

public
  property id : integer read fid write fid;
  property xcentr : integer read fxcentr write fxcentr;
  property ycentr : integer read fycentr write fycentr;
  property dlina : integer read fdlina write fdlina;
  property shirina : integer read fshirina write fshirina;
  property naimenovanie : String read fnaimenovanie write fnaimenovanie;
  property figura : String read ffigura write ffigura;

  procedure DrawSelf(fillColor : integer);
  procedure CheckMouseOver(x, y : integer);
  procedure initFields;
  procedure CheckObect(x, y :integer);
end;

implementation

uses uMain, uDM;

procedure TObect.initFields;
begin
  xratio := frmMain.Image1.Width / IMG_WIDTH;
  yratio := frmMain.Image1.Height / IMG_HEIGHT;

  x1 := Round(Round(xratio*xcentr) - Round(xratio*dlina)/2);
  y1 := Round(Round(yratio*ycentr) - Round(yratio*shirina)/2);
  x2 := x1 + Round(xratio*dlina);
  y2 := y1 + Round(yratio*shirina);

  {x1 := Round(x1*xratio);
  x2 := Round(x2*xratio);
  y1 := Round(y1*yratio);
  y2 := Round(y2*yratio);}
end;

procedure TObect.DrawSelf(fillColor : integer);
var Rect : TRect;
  I, row: Integer;
  pokazanie : String;
begin
  if (fillColor = 1) then frmMain.Image1.Canvas.Brush.Color := clAqua
  else if(fillColor = 2) then  frmMain.Image1.Canvas.Brush.Color := clYellow
  else if(fillColor = 3) then  frmMain.Image1.Canvas.Brush.Color := clRed;

  if figura = 'square' then
  begin
      Rect.Top := y1;
      Rect.Left := x1;
      Rect.Bottom := y2;
      Rect.Right := x2;

      frmMain.Image1.Canvas.FillRect(Rect);

      frmMain.Image1.Canvas.Font.Name := 'Tahoma';
      frmMain.Image1.Canvas.Font.Size := 8;
      frmMain.Image1.Canvas.Brush.Style := bsClear;
      frmMain.Image1.Canvas.Pen.Color := clBlack;
      frmMain.Image1.Canvas.TextOut(x1+15, y1+5, naimenovanie);

      frmMain.Image1.Canvas.Font.Size := 7;
      row := 2;
      for I := 1 to Length(datchiki) do
      begin
        if datchiki[i-1].id_object = fid then
        begin
          pokazanie := datchiki[i-1].name + ' : ' + FloatToStrF(datchiki[i-1].pokazanie, fffixed, 4, 2);
          frmMain.Image1.Canvas.TextOut(x1+10, y1+row*15, pokazanie);
          inc(row);
        end;
      end;
  end
    else if figura = 'circle' then
  begin
      frmMain.Image1.Canvas.Ellipse(x1,y1-10,x2, y1+10);
      frmMain.Image1.Canvas.FloodFill(x1+5, y1, clBlack, fsBorder);
      frmMain.Image1.Canvas.Ellipse(x1,y2-10,x2, y2+10);
      //frmMain.Image1.Canvas.FloodFill(x1+5, y2+5, clBlack, fsBorder);
      frmMain.Image1.Canvas.Rectangle(x1,y1,x2,y2);
      //frmMain.Image1.Canvas.FloodFill(x1+5, y1+5, clBlack, fsBorder);

      frmMain.Image1.Canvas.Font.Name := 'Tahoma';
      frmMain.Image1.Canvas.Font.Size := 8;
      frmMain.Image1.Canvas.Brush.Style := bsClear;
      frmMain.Image1.Canvas.TextOut(x1+10, y1+10, naimenovanie);

      frmMain.Image1.Canvas.Font.Size := 7;
      row := 2;
      for I := 1 to Length(datchiki) do
      begin
        if datchiki[i-1].id_object = fid then
        begin
          pokazanie := datchiki[i-1].name + ':' + FloatToStrF(datchiki[i].pokazanie, fffixed, 4, 2);
          frmMain.Image1.Canvas.TextOut(x1+10, y1+row*15, pokazanie);
          inc(row);
        end;
      end;
  end;
end;

procedure TObect.CheckMouseOver(x: Integer; y: Integer);
begin
  if (x <= x2) and (x >= x1) and (y >= y1) and (y <= y2)
    then DrawSelf(2)
    else DrawSelf(1);
end;

procedure TObect.CheckObect(x, y : integer);
begin
  if (x <= x2) and (x >= x1) and (y >= y1) and (y <= y2)
    then dm.qObjects.Locate('ID_object', fid, []);
end;
end.
