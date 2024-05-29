object Form16: TForm16
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 164
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 42
    Height = 25
    Caption = #1060#1048#1054
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 55
    Width = 73
    Height = 25
    Caption = #1058#1077#1083#1077#1092#1086#1085
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 86
    Width = 131
    Height = 25
    Caption = #1056#1086#1083#1100' '#1074' '#1087#1088#1086#1077#1082#1090#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 152
    Top = 29
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 152
    Top = 60
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 152
    Top = 91
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 152
    Top = 130
    Width = 97
    Height = 25
    Caption = #1042#1053#1045#1057#1058#1048
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 271
    Top = 130
    Width = 97
    Height = 25
    Caption = #1053#1040#1047#1040#1044
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule2.ADOConnection1
    DataSource = DataModule2.DSsotrudniki
    Parameters = <>
    Left = 400
    Top = 29
  end
end
