unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Unit11, Unit2;

type
  TForm17 = class(TForm)
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
    Edit4: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation
uses Unit10;

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);
begin
ADOQuery1.SQL.Text:='insert into SotrudnikLongTime (FIO, Phone, Role, SalarySotrudnikLongTime) values (:fio321, :telephone345, :dengi345,:salr345)';
  if (Edit1.Text = '') or (Edit2.Text = '' ) or (Edit3.Text = '' ) or (Edit4.Text = '' ) then
  ShowMessage('Пустые поля не допускаются')
  else
    begin
      ADOQuery1.Parameters.ParamByName ('fio321').Value := Edit1.Text;
      ADOQuery1.Parameters.ParamByName('telephone345').Value := Edit2.Text;
      ADOQuery1.Parameters.ParamByName('dengi345').Value :=  Edit3.Text;
      ADOQuery1.Parameters.ParamByName('salr345').Value :=  Edit4.Text;

      try
        ADOQuery1.ExecSQL;
      Except
        ShowMessage('Не удалось добавить данные в таблицу');
      end;
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
      Edit4.Text:='';
    end;
end;

procedure TForm17.Button2Click(Sender: TObject);
begin
Form17.Hide;
Form10.Show;
end;

end.
