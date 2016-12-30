unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    d: TLabel;
    Label1: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  d1, d2, p2: real;
implementation

{$R *.dfm}

procedure TForm3.Edit1Change(Sender: TObject);
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

procedure TForm3.Button2Click(Sender: TObject);
begin
close
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
d1 := strtofloat(Edit1.Text);
d2 := strtofloat(Edit2.Text);

begin
if (d1 < 0) or (d1=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);



if d2 < 0   then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);

if d2>d1  then
MessageBox(0,'d1 musi byc wiêksze od d2!', 'B³¹d wartosci',MB_OK);

if d2=d1  then
MessageBox(0,'d1 nie mo¿e byc równe d2!', 'B³¹d wartosci',MB_OK);


end;

p2 := 3.14*((d1*d1)-(d2*d2))/4;
 Memo1.Text:=floattostr(p2);

 begin
 if p2<0 then
 memo1.Clear;
end;
end;
procedure TForm3.Edit2Change(Sender: TObject);
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

end.
