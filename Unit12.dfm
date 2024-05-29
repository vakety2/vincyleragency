object Form12: TForm12
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1083#1080#1077#1085#1090#1086#1074
  ClientHeight = 159
  ClientWidth = 352
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
    Width = 106
    Height = 25
    Caption = #1053#1054#1052#1045#1056' '#1058#1045#1051'.'
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
    Width = 79
    Height = 25
    Caption = #1041#1070#1044#1046#1045#1058
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 120
    Top = 24
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 55
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 120
    Top = 86
    Width = 216
    Height = 25
    AutoSize = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 120
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
    Left = 239
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
    Left = 328
    Top = 24
  end
end
