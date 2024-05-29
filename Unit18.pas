unit Unit18;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ShellApi,
  Unit11;

type
  TForm18 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button9: TButton;
    procedure Button9Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

procedure TForm18.Button1Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'C:\Users\vakepui\Desktop\Новая папка (3)\Договоры\Договор Эрика Лундмоен.docx', nil, nil, SW_SHOW);
end;

procedure TForm18.Button2Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'C:\Users\vakepui\Desktop\Новая папка (3)\Договоры\НДА.docx', nil, nil, SW_SHOW);
end;

procedure TForm18.Button3Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'C:\Users\vakepui\Desktop\Новая папка (3)\Договоры\BF.docx', nil, nil, SW_SHOW);
end;

procedure TForm18.Button4Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'C:\Users\vakepui\Desktop\Новая папка (3)\Договоры\Надин.docx', nil, nil, SW_SHOW);
end;

procedure TForm18.Button5Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'C:\Users\vakepui\Desktop\Новая папка (3)\Договоры\Соглашение VK.docx', nil, nil, SW_SHOW);
end;

procedure TForm18.Button6Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'C:\Users\vakepui\Desktop\Новая папка (3)\Договоры\Абакумов.docx', nil, nil, SW_SHOW);
end;

procedure TForm18.Button7Click(Sender: TObject);
begin
Form18.Hide;
Form11.Show;
end;

procedure TForm18.Button9Click(Sender: TObject);

begin
ShellExecute(handle, 'open', 'https://drive.google.com/drive/folders/1Pmqm3VqX634vhi1aiaU7lR_QT6yFp5HE?usp=drive_link', nil, nil, SW_SHOW);
end;


end.
