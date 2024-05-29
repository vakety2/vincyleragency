object Form13: TForm13
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1076#1086#1089#1090#1091#1087#1072
  ClientHeight = 158
  ClientWidth = 333
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
    Width = 47
    Height = 25
    Caption = #1057#1040#1049#1058
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
    Width = 63
    Height = 25
    Caption = #1051#1054#1043#1048#1053
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
    Width = 74
    Height = 25
    Caption = #1055#1040#1056#1054#1051#1068
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 24
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 55
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 96
    Top = 86
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 96
    Top = 117
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
    Top = 117
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
    DataSource = DataModule2.DSClient
    Parameters = <>
    Left = 336
    Top = 24
  end
end
