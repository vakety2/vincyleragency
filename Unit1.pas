unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit2, Data.DB,
  Data.Win.ADODB, Unit3, Unit4, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 ADOQuery1.Sql.Text:='SELECT * FROM reg WHERE Login=:p_login AND Parol=:p_passw ';
  if (Edit1.Text = '') or (Edit2.Text = '' )  then
  ShowMessage('Пустые поля логина или пароля не допускаются')
  else
  begin
    ADOQuery1.SQL.Text:='SELECT * FROM reg WHERE (Login = :p_login) AND (Parol = :p_passw)';
    ADOQuery1.Parameters.ParamByName ('p_login').Value := Edit1.Text;
    ADOQuery1.Parameters.ParamByName('p_passw').Value := Edit2.Text;
    try
      ADOQuery1.Open;
    Except
      ShowMessage('Не удалось открыть таблицу пользователей');
      Exit;
    end;
    if ADOQuery1.RecordCount > 0 then
    begin
      ADOQuery1.SQL.Text:='SELECT Admin FROM reg WHERE (Login = :p_login) AND (Parol = :p_passw) and (Admin = "admin")';
      ADOQuery1.Parameters.ParamByName ('p_login').Value := Edit1.Text;
      ADOQuery1.Parameters.ParamByName('p_passw').Value := Edit2.Text;
      try
        ADOQuery1.Open;
      Except;
        ShowMessage('Вход не выполнен. Не удалось открыть таблицу пользователей.');
        Exit;
      end;
      if ADOQuery1.RecordCount > 0 then
      begin
        ShowMessage('Вы вошли под ролью: Администратор');
        Form1.Hide;
        Form3.Show;
        Edit1.Text:='';
        Edit2.Text:='';
      end else begin
        ShowMessage('Вы вошли под ролью: Сотрудник');
        Form1.Hide;
        Form4.Show;
        Edit1.Text:='';
        Edit2.Text:='';
      end;
    end
    else
    begin
      ShowMessage('Вход не выполнен. Неверный логин или пароль.');
    end;
  end
  end;

end.
