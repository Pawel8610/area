unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;

    Label1: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
d, p1: real;
implementation

{$R *.dfm}



procedure TForm2.Edit1Change(Sender: TObject);
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




procedure TForm2.Button2Click(Sender: TObject);
begin
close
end;




procedure TForm2.Button1Click(Sender: TObject);

begin
d := strtofloat(Edit1.Text);

if (d < 0) or (d=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);



p1 := (3.14*d*d)/4;
 Memo1.Text:=floattostr(p1);


end;
end.
