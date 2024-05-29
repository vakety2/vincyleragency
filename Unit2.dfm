object DataModule2: TDataModule2
  Height = 962
  Width = 521
  PixelsPerInch = 144
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\vakepui\Desktop\vinculer.mdb;Mode=Share Deny None;Persist Se' +
      'curity Info=False;Jet OLEDB:System database="";Jet OLEDB:Registr' +
      'y Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5' +
      ';Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk' +
      ' Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Databa' +
      'se Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:' +
      'Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=Fa' +
      'lse;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP' +
      '=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 232
    Top = 72
  end
  object client: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'client'
    Left = 72
    Top = 216
  end
  object DSClient: TDataSource
    DataSet = client
    Left = 376
    Top = 216
  end
  object Projects: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Projects'
    Left = 80
    Top = 344
  end
  object reg: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'reg'
    Left = 80
    Top = 456
  end
  object sotrudniki: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sotrudniki'
    Left = 88
    Top = 576
  end
  object SotrudnikLongTime: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'SotrudnikLongTime'
    Left = 96
    Top = 672
  end
  object DSProjects: TDataSource
    DataSet = Projects
    Left = 392
    Top = 304
  end
  object DSreg: TDataSource
    DataSet = reg
    Left = 400
    Top = 456
  end
  object DSsotrudniki: TDataSource
    DataSet = sotrudniki
    Left = 360
    Top = 576
  end
  object DSSotrudnikLongTime: TDataSource
    DataSet = SotrudnikLongTime
    Left = 376
    Top = 688
  end
  object dostup: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dostup'
    Left = 88
    Top = 784
  end
  object DSdostup: TDataSource
    DataSet = dostup
    Left = 376
    Top = 800
  end
end
