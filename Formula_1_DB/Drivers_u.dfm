object FrmDrivers: TFrmDrivers
  Left = 0
  Top = 0
  Caption = 'Formula 1 Drivers'
  ClientHeight = 359
  ClientWidth = 976
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 730
    Height = 201
    DataSource = DMDrivers.DSCDrivers
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 215
    Width = 313
    Height = 41
    Caption = 'Display Drivers with 50 or more podiums'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 262
    Width = 313
    Height = 41
    Caption = 'Display all Drivers that have a race win'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 309
    Width = 313
    Height = 41
    Caption = 'Search for Drivers in a certain team'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 327
    Top = 215
    Width = 258
    Height = 41
    Caption = 'Search for a Driver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 327
    Top = 262
    Width = 258
    Height = 41
    Caption = 'Add wins to a driver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 327
    Top = 309
    Width = 258
    Height = 41
    Caption = 'Add a Driver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button6Click
  end
  object Panel1: TPanel
    Left = 647
    Top = 215
    Width = 96
    Height = 136
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 7
    object Button7: TButton
      Left = 8
      Top = 7
      Width = 81
      Height = 25
      Caption = 'Next '
      TabOrder = 0
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 8
      Top = 100
      Width = 81
      Height = 25
      Caption = 'Last Record'
      TabOrder = 1
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 8
      Top = 38
      Width = 81
      Height = 25
      Caption = 'Previous'
      TabOrder = 2
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 8
      Top = 69
      Width = 81
      Height = 25
      Caption = 'First Record'
      TabOrder = 3
      OnClick = Button10Click
    end
  end
  object RichEdit1: TRichEdit
    Left = 744
    Top = 8
    Width = 224
    Height = 343
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object Button11: TButton
    Left = 587
    Top = 215
    Width = 58
    Height = 136
    Caption = 'Delete'
    TabOrder = 9
    OnClick = Button11Click
  end
end
