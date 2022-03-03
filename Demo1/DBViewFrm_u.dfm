object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'DB View Form'
  ClientHeight = 519
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  DesignSize = (
    1002
    519)
  TextHeight = 15
  object Label1: TLabel
    Left = 817
    Top = 39
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
  end
  object Label3: TLabel
    Left = 817
    Top = 231
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
  end
  object Label4: TLabel
    Left = 815
    Top = 292
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
  end
  object Label5: TLabel
    Left = 817
    Top = 358
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
    Width = 771
    Height = 472
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
    Left = 429
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Customers'
    TabOrder = 2
    OnClick = BtnCustomersClick
    ExplicitLeft = 414
  end
  object BtnPhoneNo: TButton
    Left = 525
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Phone No'
    TabOrder = 3
    OnClick = BtnPhoneNoClick
    ExplicitLeft = 510
  end
  object BtnAddress: TButton
    Left = 621
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Address'
    TabOrder = 4
    OnClick = BtnAddressClick
    ExplicitLeft = 606
  end
  object BtnCountry: TButton
    Left = 720
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Country'
    TabOrder = 5
    OnClick = BtnCountryClick
    ExplicitLeft = 705
  end
  object BitBtn1: TBitBtn
    Left = 817
    Top = 486
    Width = 177
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
    ExplicitLeft = 782
    ExplicitTop = 455
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
    Left = 817
    Top = 60
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
    Left = 817
    Top = 89
    Width = 177
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Search'
    TabOrder = 9
    OnClick = BtnSearchClick
  end
  object BtnInsert: TButton
    Left = 817
    Top = 424
    Width = 91
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Insert'
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
    Left = 817
    Top = 455
    Width = 177
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    TabOrder = 11
    OnClick = BtnCancelClick
  end
  object EdtName: TEdit
    Left = 817
    Top = 252
    Width = 177
    Height = 23
    Anchors = [akTop, akRight]
    TabOrder = 12
  end
  object EdtPhone: TEdit
    Left = 817
    Top = 313
    Width = 177
    Height = 23
    Anchors = [akTop, akRight]
    TabOrder = 13
  end
  object EdtAddress: TEdit
    Left = 817
    Top = 379
    Width = 177
    Height = 23
    Anchors = [akTop, akRight]
    TabOrder = 14
  end
  object BtnDelete: TButton
    Left = 817
    Top = 151
    Width = 177
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Delete'
    TabOrder = 15
    OnClick = BtnDeleteClick
  end
  object BtnEdit: TButton
    Left = 914
    Top = 424
    Width = 80
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Update'
    TabOrder = 16
    OnClick = BtnEditClick
  end
  object BtnEditRecord: TButton
    Left = 817
    Top = 120
    Width = 177
    Height = 25
    Caption = '&Edit'
    TabOrder = 17
    OnClick = BtnEditRecordClick
  end
  object DataSourceCustomer: TDataSource
    DataSet = FDQueryCustomers
    Left = 440
    Top = 120
  end
  object FDQueryCustomers: TFDQuery
    Connection = DataModule1.EmployeedbConnection
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 440
    Top = 200
  end
end
