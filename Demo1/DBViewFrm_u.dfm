object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'DB View Form'
  ClientHeight = 457
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  DesignSize = (
    987
    457)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 802
    Top = 50
    Width = 73
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Customer No'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 779
  end
  object Label3: TLabel
    Left = 802
    Top = 172
    Width = 33
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 779
  end
  object Label4: TLabel
    Left = 800
    Top = 238
    Width = 35
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Phone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 777
  end
  object Label5: TLabel
    Left = 802
    Top = 307
    Width = 44
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Address'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 779
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
    Width = 756
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
    Left = 414
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Customers'
    TabOrder = 2
    OnClick = BtnCustomersClick
    ExplicitLeft = 391
  end
  object BtnPhoneNo: TButton
    Left = 510
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Phone No'
    TabOrder = 3
    OnClick = BtnPhoneNoClick
    ExplicitLeft = 487
  end
  object BtnAddress: TButton
    Left = 606
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Address'
    TabOrder = 4
    OnClick = BtnAddressClick
    ExplicitLeft = 583
  end
  object BtnCountry: TButton
    Left = 705
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Country'
    TabOrder = 5
    OnClick = BtnCountryClick
    ExplicitLeft = 682
  end
  object BitBtn1: TBitBtn
    Left = 904
    Top = 424
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
    ExplicitLeft = 881
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
    Left = 802
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
    ExplicitLeft = 779
  end
  object BtnSearch: TButton
    Left = 802
    Top = 108
    Width = 177
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Search'
    TabOrder = 9
    OnClick = BtnSearchClick
    ExplicitLeft = 779
  end
  object BtnInsert: TButton
    Left = 802
    Top = 368
    Width = 96
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Insert'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = BtnInsertClick
    ExplicitLeft = 779
  end
  object BtnCancel: TButton
    Left = 904
    Top = 368
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    TabOrder = 11
    ExplicitLeft = 881
  end
  object EdtName: TEdit
    Left = 802
    Top = 193
    Width = 177
    Height = 23
    Anchors = [akTop, akRight]
    TabOrder = 12
    ExplicitLeft = 779
  end
  object EdtPhone: TEdit
    Left = 802
    Top = 259
    Width = 177
    Height = 23
    Anchors = [akTop, akRight]
    TabOrder = 13
    ExplicitLeft = 779
  end
  object EdtAddress: TEdit
    Left = 802
    Top = 328
    Width = 177
    Height = 23
    Anchors = [akTop, akRight]
    TabOrder = 14
    ExplicitLeft = 779
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
