unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, Unit2, Vcl.ExtCtrls, Vcl.StdCtrls, Unit10, Unit11,
  Unit3, Unit4, Unit6, Unit7, Unit8, Unit9, Vcl.Samples.Spin, Unit12;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
Form5.Hide;
Form11.Show;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Form5.Hide;
Form12.Show;
end;

procedure TForm5.Button3Click(Sender: TObject);
var
  IDToDelete: Integer;
begin
IDToDelete := SpinEdit1.Value;
  DBGrid1.DataSource.DataSet.First;
  while not DBGrid1.DataSource.DataSet.Eof do
  begin
    if DBGrid1.DataSource.DataSet.FieldByName('idClient').AsInteger = IDToDelete then
    begin
      DBGrid1.DataSource.DataSet.Delete;
      Exit;
    end;
    DBGrid1.DataSource.DataSet.Next;
  end;
  ShowMessage('Строка с указанным ID не найдена.');
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
DataModule2.client.Close;
DataModule2.client.Open;
ADOQuery1.SQL.Text:='select * from client';
ADOQuery1.Open;

end;

procedure MyLocate(s: String);
begin
DataModule2.client.Locate('idClient', s, [loPartialKey]);
end;

procedure TForm5.Edit1Change(Sender: TObject);
begin
         MyLocate(Edit1.Text);
end;

end.
