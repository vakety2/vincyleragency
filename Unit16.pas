unit Unit16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Unit11, Unit2;

type
  TForm16 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation
uses Unit9;

{$R *.dfm}

procedure TForm16.Button1Click(Sender: TObject);
begin
ADOQuery1.SQL.Text:='insert into sotrudniki (FIO, Phone, Role) values (:fio211, :telephone211, :dengi211)';
  if (Edit1.Text = '') or (Edit2.Text = '' ) or (Edit3.Text = '' ) then
  ShowMessage('Пустые поля не допускаются')
  else
    begin
      ADOQuery1.Parameters.ParamByName ('fio211').Value := Edit1.Text;
      ADOQuery1.Parameters.ParamByName('telephone211').Value := Edit2.Text;
      ADOQuery1.Parameters.ParamByName('dengi211').Value :=  Edit3.Text;

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

procedure TForm16.Button2Click(Sender: TObject);
begin
Form16.Hide;
Form9.Show;
end;

end.
