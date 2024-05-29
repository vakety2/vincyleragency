unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Unit10,
  Unit6, Unit7, Unit8, Unit9, Unit11, Unit18, Unit19, ShellApi;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses
Unit5, Unit1;

{$R *.dfm}

procedure TForm3.Button10Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'https://docs.google.com/spreadsheets/d/12iolDwOj0VBP6yJfiD8Q5bnASPtAE0AlExos0KIUfnk/edit?usp=sharing', nil, nil, SW_SHOW);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
Form3.Hide;
Form5.Show;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form3.Hide;
Form6.Show;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
Form3.Hide;
Form7.Show;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
Form3.Hide;
Form8.Show;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
Form3.Hide;
Form9.Show;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
Form3.Hide;
Form10.Show;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
Form3.Hide;
Form1.Show;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
Form3.Hide;
Form18.Show;
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
Form19.Show;
end;

end.
