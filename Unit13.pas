unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Unit2;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation
uses unit6;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
ADOQuery1.SQL.Text:='insert into dostup (sait, login, parol) values (:fio2, :telephone2, :dengi2)';
  if (Edit1.Text = '') or (Edit2.Text = '' ) or (Edit3.Text = '' ) then
  ShowMessage('Пустые поля не допускаются')
  else
    begin
      ADOQuery1.Parameters.ParamByName ('fio2').Value := Edit1.Text;
      ADOQuery1.Parameters.ParamByName('telephone2').Value := Edit2.Text;
      ADOQuery1.Parameters.ParamByName('dengi2').Value :=  Edit3.Text;

      try
        ADOQuery1.ExecSQL;
      Except
        ShowMessage('Не удалось добавить данные в таблицу');
      end;
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
end;
    end;
procedure TForm13.Button2Click(Sender: TObject);
begin
Form13.Hide;
Form6.Show;
end;

end.
