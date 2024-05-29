unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Unit2, Unit11, Unit14;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SpinEdit1: TSpinEdit;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    DBGrid2: TDBGrid;
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
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
Form7.Hide;
Form11.Show;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
Form7.Hide;
Form14.Show;
end;

procedure TForm7.Button3Click(Sender: TObject);
var
IDToDelete1: Integer;
begin

IDToDelete1 := SpinEdit1.Value;
  DBGrid2.DataSource.DataSet.First;
  while not DBGrid2.DataSource.DataSet.Eof do
  begin
    if DBGrid2.DataSource.DataSet.FieldByName('idProjects').AsInteger = IDToDelete1 then
    begin
      DBGrid2.DataSource.DataSet.Delete;
      Exit;
    end;
    DBGrid2.DataSource.DataSet.Next;
  end;
  ShowMessage('Строка с указанным ID не найдена.');
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
DataModule2.Projects.Close;
DataModule2.Projects.Open;
ADOQuery1.SQL.Text:='select * from Projects';
ADOQuery1.Open;
end;

procedure MyLocate1(s: String);
begin
DataModule2.dostup.Locate('sait', s, [loPartialKey]);
end;

procedure TForm7.Edit1Change(Sender: TObject);
begin
        MyLocate1(Edit1.Text);
end;

end.
