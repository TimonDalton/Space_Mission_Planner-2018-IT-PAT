unit Unit1;
{
https://www.youtube.com/watch?v=FjGNzb9pgMk&t=317s
hoe:

1.maak object met basic params

2.
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    btnMakeItem: TButton;
    btnMakeAMeme: TButton;
    procedure btnMakeItemClick(Sender: TObject);
    //(Sender:TObject) is a must for procedure, else "parameter lists differ"
    procedure ShowMessageForHecks(Sender:TObject);
    procedure btnMakeAMemeClick(Sender: TObject);
  private
    { Private declarations }
    procedure dynamicButtonProcedure(Sender:TObject); //lets btn send data to procedure
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.dynamicButtonProcedure(Sender:TObject);
begin
  ShowMessage('Ayyyyyy lmao');
end;

procedure TForm1.btnMakeItemClick(Sender: TObject);
var
  button : TButton;
begin
  button := TButton.Create(Self);
  button.Parent := pnl1;

  button.Caption := 'I like turtles';
  button.Width := 100;
  button.Height := 40;
  button.Top := 50;

  button.OnClick := dynamicButtonProcedure; //assigns dynamic button on click event to a ready declared procedure
end;

procedure TForm1.ShowMessageForHecks(Sender:TObject);
begin
ShowMessage('I really really realy like turtles');
end;

procedure TForm1.btnMakeAMemeClick(Sender: TObject);
var
  button : TButton;
begin
  button := TButton.Create(Self);
  button.Parent := pnl1;

  button.Caption := 'I like turtles';
  button.Width := 100;
  button.Height := 40;
  button.Top := 120;

  button.OnClick := ShowMessageForHecks;
end;

end.
