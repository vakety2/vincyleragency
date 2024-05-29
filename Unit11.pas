unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit4;

type
  TForm11 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation
uses
Unit3;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
Form11.Hide;
Form3.Show;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
Form11.Hide;
Form4.Show;
end;

end.
