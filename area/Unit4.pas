unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    d: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
d3, h, p3: real;
implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
close
end;

procedure TForm4.Edit1Change(Sender: TObject);
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

procedure TForm4.Edit2Change(Sender: TObject);
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



procedure TForm4.Button2Click(Sender: TObject);
begin
d3 := strtofloat(Edit1.Text);
h := strtofloat(Edit2.Text);
begin
if (d3 < 0) or (d3=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);



if (h < 0) or (h=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);

end;

p3 := 3.14*d3*h;
 Memo1.Text:=floattostr(p3);

 begin
 if p3<0 then
 memo1.Clear;






end;
end;

end.
