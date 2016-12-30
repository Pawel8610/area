unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm8 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    d: TLabel;
    Label1: TLabel;
    Label2: TLabel;
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
  Form8: TForm8;
d8, p7, h2: real;
implementation

{$R *.dfm}

procedure TForm8.Button2Click(Sender: TObject);
begin
close
end;

procedure TForm8.Edit1Change(Sender: TObject);
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

procedure TForm8.Edit2Change(Sender: TObject);
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

procedure TForm8.Button1Click(Sender: TObject);
begin

d8 := strtofloat(Edit1.Text);
h2 := strtofloat(Edit2.Text);

begin
if (d8 < 0) or (d8=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);


if (h2 < 0)  or (h2=0) then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);
end;


p7 := 3.14*d8*h2;
 Memo1.Text:=floattostr(p7);

 begin
 if p7<0 then
 memo1.Clear;


 end;
end;
end.
