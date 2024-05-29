unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Unit2, Unit6, Unit11;

type
  TForm15 = class(TForm)
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
  Form15: TForm15;

implementation
uses Unit8;

{$R *.dfm}

procedure TForm15.Button1Click(Sender: TObject);
begin
ADOQuery1.SQL.Text:='insert into Reg (Login, Parol, Admin) values (:fio, :telephone, :dengi)';
  if (Edit1.Text = '') or (Edit2.Text = '' ) or (Edit3.Text = '' ) then
  ShowMessage('Пустые поля не допускаются')
  else
    begin
      ADOQuery1.Parameters.ParamByName ('fio').Value := Edit1.Text;
      ADOQuery1.Parameters.ParamByName('telephone').Value := Edit2.Text;
      ADOQuery1.Parameters.ParamByName('dengi').Value :=  Edit3.Text;

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

procedure TForm15.Button2Click(Sender: TObject);
begin
Form15.Hide;
Form8.Show;
end;

end.
