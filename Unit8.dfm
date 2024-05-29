object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 47
    Top = 317
    Width = 164
    Height = 21
    Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1090#1072#1073#1083#1080#1094#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 625
    Height = 41
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 524
    Top = 408
    Width = 89
    Height = 25
    Caption = #1053#1040#1047#1040#1044
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 0
    Top = 264
    Width = 161
    Height = 33
    Caption = #1042#1085#1077#1089#1090#1080' '#1076#1072#1085#1085#1099#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 0
    Top = 384
    Width = 121
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 0
    Top = 305
    Width = 41
    Height = 33
    Caption = #8635
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button4Click
  end
  object SpinEdit1: TSpinEdit
    Left = 0
    Top = 354
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 0
  end
  object Edit1: TEdit
    Left = 160
    Top = 354
    Width = 121
    Height = 23
    TabOrder = 6
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 624
    Height = 185
    DataSource = DataModule2.DSreg
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Reg'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Login'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Parol'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Admin'
        Width = 100
        Visible = True
      end>
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule2.ADOConnection1
    DataSource = DataModule2.DSreg
    Parameters = <>
    Left = 511
    Top = 16
  end
end
