unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ShellApi;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button7: TButton;
    Button4: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses
Unit1, Unit5, Unit6, Unit18, Unit19;

{$R *.dfm}

procedure TForm4.Button10Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'https://docs.google.com/spreadsheets/d/12iolDwOj0VBP6yJfiD8Q5bnASPtAE0AlExos0KIUfnk/edit?usp=sharing', nil, nil, SW_SHOW);
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
Form4.Hide;
Form5.Show;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form4.Hide;
Form6.Show;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'https://docs.google.com/spreadsheets/d/1XwsiRvfVUByv3DTUf7zRlzCLD7T4yrt0HmCtTETXQDA/edit?usp=sharing', nil, nil, SW_SHOW);
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
Form4.Hide;
Form1.Show;
end;

procedure TForm4.Button8Click(Sender: TObject);
begin
Form4.Hide;
Form18.Show;
end;

procedure TForm4.Button9Click(Sender: TObject);
begin
Form19.Show;
end;

end.
