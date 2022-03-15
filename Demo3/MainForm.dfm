object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'FireDAC Navigation'
  ClientHeight = 583
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  DesignSize = (
    1101
    583)
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 266
    Height = 81
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object BtnFirst: TButton
      Left = 16
      Top = 16
      Width = 105
      Height = 25
      Caption = 'First'
      TabOrder = 0
      OnClick = BtnFirstClick
    end
    object BtnPrev: TButton
      Left = 144
      Top = 16
      Width = 97
      Height = 25
      Caption = 'Prior'
      TabOrder = 1
      OnClick = BtnPrevClick
    end
    object BtnLast: TButton
      Left = 15
      Top = 47
      Width = 106
      Height = 25
      Caption = 'Last'
      TabOrder = 2
      OnClick = BtnLastClick
    end
    object BtnNext: TButton
      Left = 144
      Top = 47
      Width = 97
      Height = 25
      Caption = 'Next'
      TabOrder = 3
      OnClick = BtnNextClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 272
    Top = 0
    Width = 192
    Height = 81
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    object BtnScanForward: TButton
      Left = 8
      Top = 43
      Width = 83
      Height = 25
      Caption = 'Scan Forward'
      TabOrder = 0
      OnClick = BtnScanForwardClick
    end
    object BtnScanBackward: TButton
      Left = 97
      Top = 43
      Width = 80
      Height = 25
      Caption = 'Scan Back'
      TabOrder = 1
      OnClick = BtnScanBackwardClick
    end
    object RadioControls: TRadioGroup
      Left = 10
      Top = 4
      Width = 159
      Height = 37
      Caption = 'Controls'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Enabled'
        'Disabled')
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 480
    Top = 0
    Width = 613
    Height = 81
    Anchors = [akLeft, akTop, akRight]
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 2
    object BtnMoveBy: TButton
      Left = 16
      Top = 43
      Width = 81
      Height = 25
      Caption = 'Move By'
      TabOrder = 0
      OnClick = BtnMoveByClick
    end
    object BtnSearch: TButton
      Left = 144
      Top = 43
      Width = 121
      Height = 25
      Caption = 'S E A R C H'
      TabOrder = 1
      OnClick = BtnSearchClick
    end
    object BtnGetBookmark: TButton
      Left = 320
      Top = 12
      Width = 129
      Height = 25
      Caption = 'Get Bookmark'
      TabOrder = 2
      OnClick = BtnGetBookmarkClick
    end
    object Button4: TButton
      Left = 320
      Top = 43
      Width = 129
      Height = 25
      Caption = 'Button4'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 463
      Top = 12
      Width = 121
      Height = 25
      Caption = 'Button5'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 463
      Top = 43
      Width = 121
      Height = 25
      Caption = 'Button6'
      TabOrder = 5
    end
    object SpnMoveRecord: TSpinEdit
      Left = 16
      Top = 13
      Width = 81
      Height = 24
      MaxValue = 50
      MinValue = -50
      TabOrder = 6
      Value = 0
    end
    object EdtSearch: TEdit
      Left = 144
      Top = 14
      Width = 121
      Height = 23
      TabOrder = 7
      TextHint = 'Record No'
    end
  end
  object DBNavigator1: TDBNavigator
    AlignWithMargins = True
    Left = 0
    Top = 87
    Width = 1090
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = -1
    Top = 118
    Width = 1094
    Height = 435
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object StatusBar1: TStatusBar
    AlignWithMargins = True
    Left = 3
    Top = 559
    Width = 1095
    Height = 21
    Color = clYellow
    Panels = <
      item
        Width = 250
      end
      item
        Width = 250
      end
      item
        Width = 250
      end
      item
        Width = 250
      end>
    ExplicitLeft = 8
  end
  object FDQuery1: TFDQuery
    AfterOpen = FDQuery1AfterOpen
    AfterClose = FDQuery1AfterClose
    Connection = SharedDataModule.FDConnection1
    SQL.Strings = (
      'SELECT * FROM Customer')
    Left = 328
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    OnStateChange = DataSource1StateChange
    OnDataChange = DataSource1DataChange
    Left = 336
    Top = 224
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 520
    Top = 216
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'XML Files (*.xml)|*.xml|CDS Files (*.cds)|*.cds|All ClientDataSe' +
      't Files (*.xml,*.cds)|*.xml;*.cds|All Files (*.*)|*.*'
    InitialDir = 'c:\program files\common files\borland shared\data'
    Title = 'select Client Dataset to Navigate'
    Left = 552
    Top = 336
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 176
    object File1: TMenuItem
      Caption = '&File'
      object Open: TMenuItem
        Caption = 'Open'
        ShortCut = 16451
        OnClick = OpenClick
      end
      object Close: TMenuItem
        Caption = 'Close'
        OnClick = CloseClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit: TMenuItem
        Caption = 'Exit'
        OnClick = ExitClick
      end
    end
  end
end
