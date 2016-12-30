unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm10 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    d: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
d10, p9, r: real;
implementation

{$R *.dfm}

procedure TForm10.Button2Click(Sender: TObject);
begin
close
end;

procedure TForm10.Edit1Change(Sender: TObject);
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

procedure TForm10.Edit2Change(Sender: TObject);
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

procedure TForm10.Button1Click(Sender: TObject);
begin


d10 := strtofloat(Edit1.Text);
r := strtofloat(Edit2.Text);

begin
if d10 < 0 then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);


if (r < 0)  or (r=0) then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);
end;


p9 := 3.14*((2*3.14*d10*r)+(8*r*r))/4;
 Memo1.Text:=floattostr(p9);

 begin
 if p9<0 then
 memo1.Clear;


 end;
end;

end.
