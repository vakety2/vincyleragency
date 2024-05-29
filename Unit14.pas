unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Unit2, Unit6;

type
  TForm14 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

procedure TForm14.Button1Click(Sender: TObject);
begin
ADOQuery1.SQL.Text:='insert into Projects (idClient, idSotrudnik, Budget, SalarySotrudnik, Deadline) values (:fio22, :telephone22, :dengi22, :sal22, :ddl2)';
  if (Edit1.Text = '') or (Edit2.Text = '' ) or (Edit3.Text = '' ) or (Edit4.Text = '' ) or (Edit5.Text = '' ) then
  ShowMessage('Пустые поля не допускаются')
  else
    begin
      ADOQuery1.Parameters.ParamByName ('fio22').Value := Edit1.Text;
      ADOQuery1.Parameters.ParamByName('telephone22').Value := Edit2.Text;
      ADOQuery1.Parameters.ParamByName('dengi22').Value :=  Edit3.Text;
      ADOQuery1.Parameters.ParamByName('sal22').Value := Edit4.Text;
      ADOQuery1.Parameters.ParamByName('ddl2').Value :=  Edit5.Text;

      try
        ADOQuery1.ExecSQL;
      Except
        ShowMessage('Не удалось добавить данные в таблицу');
      end;
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
      Edit4.Text:='';
      Edit5.Text:='';
    end;
end;

procedure TForm14.Button2Click(Sender: TObject);
begin
Form14.Hide;
Form7.Show;
end;

end.
