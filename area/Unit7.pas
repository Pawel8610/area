unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Math;

type
  TForm7 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    d: TLabel;
    Label1: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
d7, p6: real;
implementation

{$R *.dfm}

procedure TForm7.Button2Click(Sender: TObject);
begin
close
end;

procedure TForm7.Edit1Change(Sender: TObject);
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

procedure TForm7.Button1Click(Sender: TObject);
begin
d7 := strtofloat(Edit1.Text);

if (d7 < 0) or (d7=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);


//p6:= power((d7),2)*3.14/2

p6 := (3.14*(d7*d7))/2;
 Memo1.Text:=floattostr(p6);


  begin
 if p6<0 then
 memo1.Clear;

 end;
end;

end.
