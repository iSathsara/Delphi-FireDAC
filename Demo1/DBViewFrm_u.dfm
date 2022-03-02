object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'DB View Form'
  ClientHeight = 351
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  DesignSize = (
    983
    351)
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
    Height = 290
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSourceCustomer
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 282
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Customers'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 378
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Phone No'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 474
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Address'
    TabOrder = 4
  end
  object Button4: TButton
    Left = 565
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Country'
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 900
    Top = 304
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
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
