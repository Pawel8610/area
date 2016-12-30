unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    d: TLabel;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
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
  Form5: TForm5;
d4, l, p4: real;
implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
close
end;

procedure TForm5.Edit1Change(Sender: TObject);
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

procedure TForm5.Edit2Change(Sender: TObject);
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

procedure TForm5.Button2Click(Sender: TObject);
begin
d4 := strtofloat(Edit1.Text);
l := strtofloat(Edit2.Text);
begin
if (d4 < 0) or (d4=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);



if (l < 0) or (l=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);

end;

p4 := 3.14*d4*l/4;
 Memo1.Text:=floattostr(p4);

 begin
 if p4<0 then
 memo1.Clear;


end;
end;

end.
