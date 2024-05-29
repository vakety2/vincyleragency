unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.ExtCtrls, Unit11, Unit17;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SpinEdit1: TSpinEdit;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
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
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
Form10.Hide;
Form11.Show;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
Form10.Hide;
Form17.Show;
end;

procedure TForm10.Button3Click(Sender: TObject);
var
IDToDelete1: Integer;
begin

IDToDelete1 := SpinEdit1.Value;
  DBGrid1.DataSource.DataSet.First;
  while not DBGrid1.DataSource.DataSet.Eof do
  begin
    if DBGrid1.DataSource.DataSet.FieldByName('idLongTime').AsInteger = IDToDelete1 then
    begin
      DBGrid1.DataSource.DataSet.Delete;
      Exit;
    end;
    DBGrid1.DataSource.DataSet.Next;
  end;
  ShowMessage('Строка с указанным ID не найдена.');
end;

procedure TForm10.Button4Click(Sender: TObject);
begin
DataModule2.SotrudnikLongTime.Close;
DataModule2.SotrudnikLongTime.Open;
ADOQuery1.SQL.Text:='select * from SotrudnikLongTime';
ADOQuery1.Open;
end;

procedure MyLocate1(s: String);
begin
DataModule2.dostup.Locate('sait', s, [loPartialKey]);
end;

procedure TForm10.Edit1Change(Sender: TObject);
begin
          MyLocate1(Edit1.Text);
end;

end.
