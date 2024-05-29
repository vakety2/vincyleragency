unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.Win.ADODB, Data.DB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    client: TADOTable;
    DSClient: TDataSource;
    Projects: TADOTable;
    reg: TADOTable;
    sotrudniki: TADOTable;
    SotrudnikLongTime: TADOTable;
    DSProjects: TDataSource;
    DSreg: TDataSource;
    DSsotrudniki: TDataSource;
    DSSotrudnikLongTime: TDataSource;
    dostup: TADOTable;
    DSdostup: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
