unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls;

type
  TForm12 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation
uses unit5;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
ADOQuery1.SQL.Text:='insert into Client (FIO, Phone, Budget) values (:fio1, :telephone, :dengi)';
  if (Edit1.Text = '') or (Edit2.Text = '' ) or (Edit3.Text = '' ) then
  ShowMessage('Пустые поля не допускаются')
  else
    begin
      ADOQuery1.Parameters.ParamByName ('fio1').Value := Edit1.Text;
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

procedure TForm12.Button2Click(Sender: TObject);
begin
Form12.Hide;
Form5.Show;
end;

end.
