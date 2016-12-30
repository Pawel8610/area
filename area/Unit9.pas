unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm9 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    d: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
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
  Form9: TForm9;
d9, p8, h3: real;
implementation

{$R *.dfm}

procedure TForm9.Button2Click(Sender: TObject);
begin
close
end;

procedure TForm9.Edit1Change(Sender: TObject);
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

procedure TForm9.Edit2Change(Sender: TObject);
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

procedure TForm9.Button1Click(Sender: TObject);
begin
d9 := strtofloat(Edit1.Text);
h3 := strtofloat(Edit2.Text);

begin
if (d9 < 0) or (d9=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);


if (h3 < 0)  or (h3=0) then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);
end;


p8 := 3.14*d9*h3;
 Memo1.Text:=floattostr(p8);

 begin
 if p8<0 then
 memo1.Clear;


 end;
end;

end.
