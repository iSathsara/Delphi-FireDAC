object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'DB View Form'
  ClientHeight = 457
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  DesignSize = (
    964
    457)
  TextHeight = 15
  object Label1: TLabel
    Left = 779
    Top = 50
    Width = 73
    Height = 15
    Caption = 'Customer No'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 779
    Top = 172
    Width = 33
    Height = 15
    Caption = 'Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 777
    Top = 238
    Width = 35
    Height = 15
    Caption = 'Phone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 779
    Top = 307
    Width = 44
    Height = 15
    Caption = 'Address'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSourceCustomer
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 39
    Width = 733
    Height = 396
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSourceCustomer
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object BtnCustomers: TButton
    Left = 391
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Customers'
    TabOrder = 2
    OnClick = BtnCustomersClick
    ExplicitLeft = 410
  end
  object BtnPhoneNo: TButton
    Left = 487
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Phone No'
    TabOrder = 3
    OnClick = BtnPhoneNoClick
    ExplicitLeft = 506
  end
  object BtnAddress: TButton
    Left = 583
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Address'
    TabOrder = 4
    OnClick = BtnAddressClick
    ExplicitLeft = 602
  end
  object BtnCountry: TButton
    Left = 682
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Country'
    TabOrder = 5
    OnClick = BtnCountryClick
    ExplicitLeft = 701
  end
  object BitBtn1: TBitBtn
    Left = 881
    Top = 424
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
  end
  object BtnAll: TButton
    Left = 280
    Top = 8
    Width = 75
    Height = 25
    Caption = 'All'
    TabOrder = 7
    OnClick = BtnAllClick
  end
  object EdtSearch: TEdit
    Left = 779
    Top = 71
    Width = 177
    Height = 23
    Cursor = crIBeam
    Hint = 'search here...'
    HelpType = htKeyword
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 8
    TextHint = 'search here...'
  end
  object BtnSearch: TButton
    Left = 779
    Top = 108
    Width = 177
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Search'
    TabOrder = 9
    OnClick = BtnSearchClick
  end
  object BtnInsert: TButton
    Left = 779
    Top = 368
    Width = 96
    Height = 25
    Caption = 'Insert'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = BtnInsertClick
  end
  object BtnCancel: TButton
    Left = 881
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 11
  end
  object EdtName: TEdit
    Left = 779
    Top = 193
    Width = 177
    Height = 23
    TabOrder = 12
  end
  object EdtPhone: TEdit
    Left = 779
    Top = 259
    Width = 177
    Height = 23
    TabOrder = 13
  end
  object EdtAddress: TEdit
    Left = 779
    Top = 328
    Width = 177
    Height = 23
    TabOrder = 14
  end
  object DataSourceCustomer: TDataSource
    DataSet = FDQueryCustomers
    Left = 288
    Top = 152
  end
  object FDQueryCustomers: TFDQuery
    Connection = DataModule1.EmployeedbConnection
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 440
    Top = 200
  end
end
