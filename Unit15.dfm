object Form15: TForm15
  Left = 0
  Top = 0
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 170
  ClientWidth = 349
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
    Width = 53
    Height = 25
    Caption = #1051#1086#1075#1080#1085
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
    Width = 64
    Height = 25
    Caption = #1055#1072#1088#1086#1083#1100
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
    Width = 63
    Height = 25
    Caption = #1040#1076#1084#1080#1085' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 29
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 60
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 96
    Top = 91
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 96
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
    Left = 215
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
    DataSource = DataModule2.DSreg
    Parameters = <>
    Left = 344
    Top = 29
  end
end
