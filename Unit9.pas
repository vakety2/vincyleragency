unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.ExtCtrls, Unit11, Unit16;

type
  TForm9 = class(TForm)
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
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
Form9.Hide;
Form11.Show;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
Form9.Hide;
Form16.Show;
end;

procedure TForm9.Button3Click(Sender: TObject);
var
IDToDelete1: Integer;
begin

IDToDelete1 := SpinEdit1.Value;
  DBGrid2.DataSource.DataSet.First;
  while not DBGrid2.DataSource.DataSet.Eof do
  begin
    if DBGrid2.DataSource.DataSet.FieldByName('idSotrudnik').AsInteger = IDToDelete1 then
    begin
      DBGrid2.DataSource.DataSet.Delete;
      Exit;
    end;
    DBGrid2.DataSource.DataSet.Next;
  end;
  ShowMessage('Строка с указанным ID не найдена.');
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
DataModule2.sotrudniki.Close;
DataModule2.sotrudniki.Open;
ADOQuery1.SQL.Text:='select * from sotrudniki';
ADOQuery1.Open;
end;

procedure MyLocate1(s: String);
begin
DataModule2.dostup.Locate('sait', s, [loPartialKey]);
end;

procedure TForm9.Edit1Change(Sender: TObject);
begin
       MyLocate1(Edit1.Text);
end;

end.
