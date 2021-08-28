object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 359
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 0
    Width = 729
    Height = 193
    DataSource = DMDataBases.DSCDataBases
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BtnNext: TButton
    Left = 8
    Top = 199
    Width = 75
    Height = 25
    Caption = '>'
    TabOrder = 1
    OnClick = BtnNextClick
  end
  object BtnPrevious: TButton
    Left = 8
    Top = 230
    Width = 75
    Height = 25
    Caption = '<'
    TabOrder = 2
    OnClick = BtnPreviousClick
  end
  object BtnLast: TButton
    Left = 8
    Top = 261
    Width = 75
    Height = 25
    Caption = '>>'
    TabOrder = 3
    OnClick = BtnLastClick
  end
  object BtnFirst: TButton
    Left = 8
    Top = 292
    Width = 75
    Height = 25
    Caption = '<<'
    TabOrder = 4
    OnClick = BtnFirstClick
  end
  object BtnDisplay: TButton
    Left = 89
    Top = 199
    Width = 216
    Height = 25
    Caption = 'Display the product with the product key'
    TabOrder = 5
    OnClick = BtnDisplayClick
  end
  object BtnRecord: TButton
    Left = 89
    Top = 230
    Width = 216
    Height = 25
    Caption = 'Add a new product record'
    TabOrder = 6
    OnClick = BtnRecordClick
  end
  object BtnNumber: TButton
    Left = 89
    Top = 261
    Width = 216
    Height = 25
    Caption = 'Adjust the number of units in stock'
    TabOrder = 7
    OnClick = BtnNumberClick
  end
  object RichEdit1: TRichEdit
    Left = 311
    Top = 201
    Width = 322
    Height = 147
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object BtnDelete: TButton
    Left = 8
    Top = 323
    Width = 297
    Height = 25
    Caption = 'Delete'
    TabOrder = 9
    OnClick = BtnDeleteClick
  end
  object BtnTotal: TButton
    Left = 89
    Top = 292
    Width = 216
    Height = 25
    Caption = 'Display the total no. of units in store'
    TabOrder = 10
    OnClick = BtnTotalClick
  end
  object Button1: TButton
    Left = 648
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 11
    OnClick = Button1Click
  end
end
