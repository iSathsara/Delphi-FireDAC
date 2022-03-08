object DBViewFrm_u: TDBViewFrm_u
  Left = 0
  Top = 0
  Caption = 'DB view with Login'
  ClientHeight = 534
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  DesignSize = (
    895
    534)
  TextHeight = 15
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 39
    Width = 745
    Height = 454
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 759
    Top = 39
    Width = 128
    Height = 454
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 2
    ExplicitLeft = 703
    ExplicitHeight = 392
    DesignSize = (
      128
      454)
    object BtnActivateQuery1: TButton
      Left = 8
      Top = 158
      Width = 113
      Height = 25
      Caption = 'Active Query 1'
      TabOrder = 0
      OnClick = BtnActivateQuery1Click
    end
    object BtnActivateQuery2: TButton
      Left = 8
      Top = 199
      Width = 113
      Height = 25
      Caption = 'Active Query 2'
      TabOrder = 1
      OnClick = BtnActivateQuery2Click
    end
    object BtnActiveTable: TButton
      Left = 8
      Top = 112
      Width = 113
      Height = 25
      Caption = 'Active Table'
      TabOrder = 2
      OnClick = BtnActiveTableClick
    end
    object BtnClearGrid: TButton
      Left = 8
      Top = 394
      Width = 113
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Clear'
      TabOrder = 3
      OnClick = BtnClearGridClick
      ExplicitTop = 400
    end
    object BtnEnableLogin: TButton
      Left = 8
      Top = 16
      Width = 113
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Enable DB Login'
      TabOrder = 4
      OnClick = BtnEnableLoginClick
    end
    object BtnDisableLogin: TButton
      Left = 8
      Top = 47
      Width = 113
      Height = 25
      Caption = 'Disable DB Login'
      TabOrder = 5
      OnClick = BtnDisableLoginClick
    end
  end
  object BitBtn1: TBitBtn
    Left = 767
    Top = 464
    Width = 113
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
    ExplicitTop = 469
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Program Files\Firebird\examples\empbuild\EMPLOYEE.FD' +
        'B'
      'User_Name=RESTOMAX'
      'DriverID=FB')
    LoginDialog = FDGUIxLoginDialog1
    LoginPrompt = False
    Left = 256
    Top = 120
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    Left = 440
    Top = 200
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 152
    Top = 232
    object FDQuery1CUST_NO: TIntegerField
      FieldName = 'CUST_NO'
      Origin = 'CUST_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1CUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Required = True
      Size = 25
    end
    object FDQuery1CONTACT_FIRST: TStringField
      FieldName = 'CONTACT_FIRST'
      Origin = 'CONTACT_FIRST'
      Size = 15
    end
    object FDQuery1CONTACT_LAST: TStringField
      FieldName = 'CONTACT_LAST'
      Origin = 'CONTACT_LAST'
    end
    object FDQuery1PHONE_NO: TStringField
      FieldName = 'PHONE_NO'
      Origin = 'PHONE_NO'
    end
    object FDQuery1ADDRESS_LINE1: TStringField
      FieldName = 'ADDRESS_LINE1'
      Origin = 'ADDRESS_LINE1'
      Size = 30
    end
    object FDQuery1ADDRESS_LINE2: TStringField
      FieldName = 'ADDRESS_LINE2'
      Origin = 'ADDRESS_LINE2'
      Size = 30
    end
    object FDQuery1CITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 25
    end
    object FDQuery1STATE_PROVINCE: TStringField
      FieldName = 'STATE_PROVINCE'
      Origin = 'STATE_PROVINCE'
      Size = 15
    end
    object FDQuery1COUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      Size = 15
    end
    object FDQuery1POSTAL_CODE: TStringField
      FieldName = 'POSTAL_CODE'
      Origin = 'POSTAL_CODE'
      Size = 12
    end
    object FDQuery1ON_HOLD: TStringField
      FieldName = 'ON_HOLD'
      Origin = 'ON_HOLD'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 464
    Top = 88
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CUSTOMER WHERE CUST_NO > 1010')
    Left = 272
    Top = 232
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'EMP_NO'
    Connection = FDConnection1
    TableName = 'EMPLOYEE'
    Left = 40
    Top = 232
  end
end
