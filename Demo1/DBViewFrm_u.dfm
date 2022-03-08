object Form1: TForm1
  Left = 0
  Top = 0
  Cursor = crHandPoint
  Caption = 'DB View Form'
  ClientHeight = 561
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  DesignSize = (
    994
    561)
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
    Width = 763
    Height = 514
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
    Left = 421
    Top = 8
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Caption = 'Customers'
    TabOrder = 2
    OnClick = BtnCustomersClick
    ExplicitLeft = 414
  end
  object BtnPhoneNo: TButton
    Left = 517
    Top = 8
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Caption = 'Phone No'
    TabOrder = 3
    OnClick = BtnPhoneNoClick
    ExplicitLeft = 510
  end
  object BtnAddress: TButton
    Left = 613
    Top = 8
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Caption = 'Address'
    TabOrder = 4
    OnClick = BtnAddressClick
    ExplicitLeft = 606
  end
  object BtnCountry: TButton
    Left = 712
    Top = 8
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Caption = 'Country'
    TabOrder = 5
    OnClick = BtnCountryClick
    ExplicitLeft = 705
  end
  object BtnAll: TButton
    Left = 280
    Top = 8
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'All'
    TabOrder = 6
    OnClick = BtnAllClick
  end
  object PanelTop: TPanel
    Left = 801
    Top = 39
    Width = 185
    Height = 188
    Anchors = [akTop, akRight]
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 7
    DesignSize = (
      185
      188)
    object Label1: TLabel
      Left = 11
      Top = 21
      Width = 94
      Height = 15
      Anchors = []
      Caption = 'Customer No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 23
    end
    object EdtSearch: TEdit
      Left = 8
      Top = 40
      Width = 169
      Height = 23
      Cursor = crIBeam
      Hint = 'search here...'
      HelpType = htKeyword
      Anchors = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      TextHint = 'search here...'
    end
    object BtnSearch: TButton
      AlignWithMargins = True
      Left = 8
      Top = 93
      Width = 169
      Height = 25
      Cursor = crHandPoint
      Anchors = []
      Caption = '&Search'
      TabOrder = 1
      OnClick = BtnSearchClick
    end
    object BtnEditRecord: TButton
      AlignWithMargins = True
      Left = 8
      Top = 124
      Width = 169
      Height = 25
      Cursor = crHandPoint
      Anchors = []
      Caption = '&Edit'
      TabOrder = 2
      OnClick = BtnEditRecordClick
    end
    object BtnDelete: TButton
      AlignWithMargins = True
      Left = 8
      Top = 155
      Width = 169
      Height = 25
      Cursor = crHandPoint
      Anchors = []
      Caption = '&Delete'
      TabOrder = 3
      OnClick = BtnDeleteClick
    end
  end
  object PanelBottom: TPanel
    Left = 801
    Top = 248
    Width = 185
    Height = 301
    Anchors = [akTop, akRight, akBottom]
    BorderWidth = 2
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 8
    DesignSize = (
      185
      301)
    object Label3: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 8
      Width = 120
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 9
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 9
      Top = 70
      Width = 115
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Phone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 6
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 9
      Top = 131
      Width = 83
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Address'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 6
    end
    object EdtName: TEdit
      AlignWithMargins = True
      Left = 11
      Top = 29
      Width = 169
      Height = 23
      Cursor = crIBeam
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
    object EdtPhone: TEdit
      AlignWithMargins = True
      Left = 11
      Top = 91
      Width = 169
      Height = 23
      Cursor = crIBeam
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
    object EdtAddress: TEdit
      AlignWithMargins = True
      Left = 11
      Top = 152
      Width = 169
      Height = 23
      Cursor = crIBeam
      Anchors = [akTop, akRight]
      TabOrder = 2
    end
    object BtnInsert: TButton
      AlignWithMargins = True
      Left = 9
      Top = 205
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Insert'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtnInsertClick
    end
    object BtnEdit: TButton
      AlignWithMargins = True
      Left = 99
      Top = 205
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Update'
      TabOrder = 4
      OnClick = BtnEditClick
    end
    object BtnCancel: TButton
      AlignWithMargins = True
      Left = 11
      Top = 236
      Width = 169
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = BtnCancelClick
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 11
      Top = 270
      Width = 169
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Exit'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 6
    end
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
