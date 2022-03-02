object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'DB View Form'
  ClientHeight = 457
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  DesignSize = (
    983
    457)
  TextHeight = 15
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
    Width = 752
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
    Left = 410
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Customers'
    TabOrder = 2
    OnClick = BtnCustomersClick
  end
  object BtnPhoneNo: TButton
    Left = 506
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Phone No'
    TabOrder = 3
    OnClick = BtnPhoneNoClick
  end
  object BtnAddress: TButton
    Left = 602
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Address'
    TabOrder = 4
    OnClick = BtnAddressClick
  end
  object BtnCountry: TButton
    Left = 701
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Country'
    TabOrder = 5
    OnClick = BtnCountryClick
  end
  object BitBtn1: TBitBtn
    Left = 900
    Top = 410
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
    ExplicitTop = 304
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
  object DataSourceCustomer: TDataSource
    DataSet = FDQueryCustomers
    Left = 880
    Top = 24
  end
  object FDQueryCustomers: TFDQuery
    Connection = DataModule1.EmployeedbConnection
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 880
    Top = 112
  end
end
