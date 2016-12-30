unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ShellAPI, Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    MainMenu1: TMainMenu;
    Plik1: TMenuItem;
    Koniec1: TMenuItem;
    Info1: TMenuItem;
    Readme1: TMenuItem;
    Autor1: TMenuItem;
    Timer1: TTimer;
    Label2: TLabel;
    Image9: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Koniec1Click(Sender: TObject);
    procedure Readme1Click(Sender: TObject);
    procedure Autor1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10;
{$R *.dfm}

procedure TForm1.Image1Click(Sender: TObject);
begin
form2.ShowModal;       {klikniecie na obrazek 1 powoduje otwarcie 2 formy itd.}
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm1.Koniec1Click(Sender: TObject);
begin
close              {zamyka program}
end;

procedure TForm1.Readme1Click(Sender: TObject);
begin
shellexecute(handle,'open','tekst.txt','','',sw_normal)
end;

procedure TForm1.Autor1Click(Sender: TObject);
begin
MessageBox(0,'Pawe³ Andrzejczyk','Autor',mb_ok);
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
form4.ShowModal;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
form5.ShowModal;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
form6.ShowModal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label2.Caption:=TimeToStr(Time);
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
form8.ShowModal;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
form9.ShowModal;
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
form10.ShowModal;
end;

end.
