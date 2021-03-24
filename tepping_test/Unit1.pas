unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ShellAPI, ComObj, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Count_label: TLabel;
    Button1: TButton;
    Timer_label: TLabel;
    Timer1: TTimer;
    time_1: TLabel;
    time_2: TLabel;
    Time_3: TLabel;
    Time_4: TLabel;
    Time_5: TLabel;
    Time_6: TLabel;
    Time_7: TLabel;
    Time_8: TLabel;
    Time_9: TLabel;
    Time_10: TLabel;
    count_1: TLabel;
    count_2: TLabel;
    count_3: TLabel;
    count_4: TLabel;
    count_5: TLabel;
    count_6: TLabel;
    count_7: TLabel;
    count_8: TLabel;
    count_9: TLabel;
    count_10: TLabel;
    StaticText1: TStaticText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    mean1: TLabel;
    mean2: TLabel;
    mean3: TLabel;
    mean4: TLabel;
    mean5: TLabel;
    mean6: TLabel;
    mean7: TLabel;
    mean8: TLabel;
    mean9: TLabel;
    mean10: TLabel;
    mean: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Form1: TForm1;
  count:integer;
  tick:integer;
  str:String;
  mean_res:Real;
  count1:integer;
  count2:integer;
  count3:integer;
  count4:integer;
  count5:integer;
  count6:integer;
  count7:integer;
  count8:integer;
  count9:integer;
  count10:integer;
  res_s1:integer;
  res_s2:integer;
  res_s3:integer;
  res_s4:integer;
  res_s5:integer;
  res_s6:integer;
  res_s7:integer;
  res_s8:integer;
  res_s9:integer;
  res_s10:integer;
  res:Real;
  Excel:Variant;
  Sheet:Variant;

const
  xlContinuous= 1;
  xlThin=2;
  xlTop = -4160;
  xlCenter = -4108;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, PChar(Application.ExeName), nil, nil, SW_SHOWNORMAL);
  Application.Terminate;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Excel:=CreateOleObject('Excel.Application');
Excel.Workbooks.Add;
Excel.Visible:=true;
Sheet:=Excel.ActiveWorkBook.WorkSheets[1];
Sheet.cells[1,1]:= '��������� �������';
Sheet.cells[1,2]:= '���������� �������';
Sheet.cells[1,3]:= '���������� ������� �� ������';
Sheet.cells[2,1]:= 4;
Sheet.cells[3,1]:= 8;
Sheet.cells[4,1]:= 12;
Sheet.cells[5,1]:= 16;
Sheet.cells[6,1]:= 20;
Sheet.cells[7,1]:= 24;
Sheet.cells[8,1]:= 28;
Sheet.cells[9,1]:= 32;
Sheet.cells[10,1]:= 36;
Sheet.cells[11,1]:= 40;
Sheet.cells[2,2]:= count1;
Sheet.cells[3,2]:= count2;
Sheet.cells[4,2]:= count3;
Sheet.cells[5,2]:= count4;
Sheet.cells[6,2]:= count5;
Sheet.cells[7,2]:= count6;
Sheet.cells[8,2]:= count7;
Sheet.cells[9,2]:= count8;
Sheet.cells[10,2]:= count9;
Sheet.cells[11,2]:= count10;
Sheet.cells[2,3]:= res_s1;
Sheet.cells[3,3]:= res_s2;
Sheet.cells[4,3]:= res_s3;
Sheet.cells[5,3]:= res_s4;
Sheet.cells[6,3]:= res_s5;
Sheet.cells[7,3]:= res_s6;
Sheet.cells[8,3]:= res_s7;
Sheet.cells[9,3]:= res_s8;
Sheet.cells[10,3]:= res_s9;
Sheet.cells[11,3]:= res_s10;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if Button1.Caption = '����� �������' then
tick:=tick+1;
Timer_label.Caption:= IntToStr( tick );

if tick =4  then
begin
  count1:= count;
  res_s1:= (count1 - 0);
  res:= (count1 - 0)/4;
  count_1.Caption:= IntToStr( res_s1 );
  mean1.Caption:= FloatToStr( res );
end;

if tick = 8  then
begin
  count2:= count;
  res_s2:= (count2 - count1);
  res:= (count2 - count1)/4;
  count_2.Caption:= IntToStr( res_s2 );
  mean2.Caption:= FloatToStr( res );
end;

if tick =12  then
begin
  count3:= count;
  res_s3:= (count3 - count2);
  res:= (count3 - count2)/4;
  count_3.Caption:= IntToStr( res_s3 );
  mean3.Caption:= FloatToStr( res );
end;

if tick =16  then
begin
  count4:= count;
  res_s4:= (count4 - count3);
  res:= (count4 - count3)/4;
  count_4.Caption:= IntToStr( res_s4 );
  mean4.Caption:= FloatToStr( res );
end;

if tick =20  then
begin
  count5:= count;
  res_s5:= (count5 - count4);
  res:= (count5 - count4)/4;
  count_5.Caption:= IntToStr( res_s5 );
  mean5.Caption:= FloatToStr( res );
end;

if tick =24  then
begin

  count6:= count;
  res_s6:= (count6 - count5);
  res:= (count6 - count5)/4;
  count_6.Caption:= IntToStr( res_s6 );
  mean6.Caption:= FloatToStr( res );
end;

if tick =28  then
begin
  count7:= count;
  res_s7:= (count7 - count6);
  res:= (count7 - count6)/4;
  count_7.Caption:= IntToStr( res_s7 );
  mean7.Caption:= FloatToStr( res );
end;

if tick =32  then
begin
  count8:= count;
  res_s8:= (count8 - count7);
  res:= (count8 - count7)/4;
  count_8.Caption:= IntToStr( res_s8 );
  mean8.Caption:= FloatToStr( res );
end;

if tick =36  then
begin
  count9:= count;
  res_s9:= (count9 - count8);
  res:= (count9 - count8)/4;
  count_9.Caption:= IntToStr( res_s9 );
  mean9.Caption:= FloatToStr( res );
end;

if tick =40  then
begin
  count10:= count;
  res_s10:= (count10 - count9);
  res:= (count10 - count9)/4;
  count_10.Caption:= IntToStr( res_s10 );
  mean10.Caption:= FloatToStr( res );
  Button1.Enabled:= False;
  Timer1.enabled:=false;
  Button3.Enabled:= True;
end;
if Button1.Caption = '����� �������' then
  mean_res:= count / tick;
  mean.Caption:= FloatToStr( mean_res );
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
str:= '����� �������';
Button1.Caption:= str;
inc(count);
Count_label.Caption:= IntToStr( count );

end;

end.
