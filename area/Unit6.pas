unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    d: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
d5,d6, l2, p5: real;
implementation

{$R *.dfm}

procedure TForm6.Button2Click(Sender: TObject);
begin
close
end;

procedure TForm6.Edit1Change(Sender: TObject);
begin
memo1.Clear;

 try
      StrToFloat(Edit1.Text);       {try except zabezpiecza przed wpisywaniem innych znaków ni¿ cyfry}
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit1.Text := '0';

end;
end;
end;

procedure TForm6.Edit2Change(Sender: TObject);
begin
memo1.Clear;

 try
      StrToFloat(Edit2.Text);       {try except zabezpiecza przed wpisywaniem innych znaków ni¿ cyfry}
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit2.Text := '0';

end;
end;
end;

procedure TForm6.Edit3Change(Sender: TObject);
begin
memo1.Clear;

 try
      StrToFloat(Edit3.Text);       {try except zabezpiecza przed wpisywaniem innych znaków ni¿ cyfry}
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit3.Text := '0';

end;
end;
end;



procedure TForm6.Button1Click(Sender: TObject);
begin

d6 := strtofloat(Edit1.Text);
d5 := strtofloat(Edit2.Text);
l2 := strtofloat(Edit3.Text);

begin
if (d5 < 0) or (d5=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);

if (d6 < 0) or (d6=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);

if (l2 < 0) or (l2=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);

if d5>d6  then
MessageBox(0,'d1 musi byc wiêksze od d2!', 'B³¹d wartosci',MB_OK);

end;


p5 := 3.14*l2*(d5+d6)/2;
 Memo1.Text:=floattostr(p5);

 begin
if d5>d6 then
memo1.Text:=' ';

 begin
 if p5<0 then
 memo1.Clear;
end;
end;
end;


end.
