unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Unit2, Vcl.StdCtrls, Vcl.Samples.Spin, Unit11,
  Unit13;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SpinEdit1: TSpinEdit;
    Edit1: TEdit;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
Form6.Hide;
Form11.Show;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Form6.Hide;
Form13.Show;
end;

procedure TForm6.Button3Click(Sender: TObject);
var
IDToDelete1: Integer;
begin

IDToDelete1 := SpinEdit1.Value;
  DBGrid1.DataSource.DataSet.First;
  while not DBGrid1.DataSource.DataSet.Eof do
  begin
    if DBGrid1.DataSource.DataSet.FieldByName('Код').AsInteger = IDToDelete1 then
    begin
      DBGrid1.DataSource.DataSet.Delete;
      Exit;
    end;
    DBGrid1.DataSource.DataSet.Next;
  end;
  ShowMessage('Строка с указанным ID не найдена.');
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
DataModule2.dostup.Close;
DataModule2.dostup.Open;
ADOQuery1.SQL.Text:='select * from dostup';
ADOQuery1.Open;
end;


procedure MyLocate1(s: String);
begin
DataModule2.dostup.Locate('sait', s, [loPartialKey]);
end;

procedure TForm6.Edit1Change(Sender: TObject);
begin
          MyLocate1(Edit1.Text);
end;

end.
