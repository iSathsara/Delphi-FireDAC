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
    Width = 177
    Height = 81
    TabOrder = 0
    object BtnFirst: TButton
      Left = 16
      Top = 16
      Width = 65
      Height = 25
      Caption = 'First'
      TabOrder = 0
    end
    object BtnPrev: TButton
      Left = 96
      Top = 16
      Width = 66
      Height = 25
      Caption = 'Prev'
      TabOrder = 1
    end
    object BtnLast: TButton
      Left = 15
      Top = 47
      Width = 66
      Height = 25
      Caption = 'Last'
      TabOrder = 2
    end
    object BtnNext: TButton
      Left = 96
      Top = 47
      Width = 66
      Height = 25
      Caption = 'Next'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 183
    Top = 0
    Width = 185
    Height = 81
    TabOrder = 1
    object RadEnable: TRadioButton
      Left = 16
      Top = 20
      Width = 57
      Height = 17
      Caption = 'Enable'
      TabOrder = 0
    end
    object RadDisable: TRadioButton
      Left = 104
      Top = 20
      Width = 65
      Height = 17
      Caption = 'Disable'
      TabOrder = 1
    end
    object BtnScanForward: TButton
      Left = 8
      Top = 43
      Width = 83
      Height = 25
      Caption = 'Scan Forward'
      TabOrder = 2
    end
    object BtnScanBackward: TButton
      Left = 97
      Top = 43
      Width = 80
      Height = 25
      Caption = 'Scan Back'
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 374
    Top = 0
    Width = 719
    Height = 81
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    ExplicitWidth = 715
    object SpinEdit1: TSpinEdit
      Left = 16
      Top = 13
      Width = 81
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object SpinEdit2: TSpinEdit
      Left = 112
      Top = 13
      Width = 73
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object Button1: TButton
      Left = 16
      Top = 43
      Width = 81
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
    end
    object Button2: TButton
      Left = 112
      Top = 43
      Width = 73
      Height = 25
      Caption = 'Button2'
      TabOrder = 3
    end
    object Button3: TButton
      Left = 232
      Top = 12
      Width = 129
      Height = 25
      Caption = 'Button3'
      TabOrder = 4
    end
    object Button4: TButton
      Left = 232
      Top = 43
      Width = 129
      Height = 25
      Caption = 'Button4'
      TabOrder = 5
    end
    object Button5: TButton
      Left = 375
      Top = 12
      Width = 121
      Height = 25
      Caption = 'Button5'
      TabOrder = 6
    end
    object Button6: TButton
      Left = 375
      Top = 43
      Width = 121
      Height = 25
      Caption = 'Button6'
      TabOrder = 7
    end
  end
  object DBNavigator1: TDBNavigator
    AlignWithMargins = True
    Left = 0
    Top = 87
    Width = 1090
    Height = 25
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 0
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
    Panels = <
      item
        Width = 250
      end
      item
        Width = 250
      end
      item
        Text = 'State = dsBrowse'
        Width = 250
      end
      item
        Width = 250
      end>
    ExplicitTop = 558
  end
  object FDQuery1: TFDQuery
    AfterOpen = FDQuery1AfterOpen
    AfterClose = FDQuery1AfterClose
    Connection = SharedDataModule.FDConnection1
    Left = 208
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    OnStateChange = DataSource1StateChange
    OnDataChange = DataSource1DataChange
    Left = 112
    Top = 240
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 336
    Top = 232
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'XML Files (*.xml)|*.xml|CDS Files (*.cds)|*.cds|All ClientDataSe' +
      't Files (*.xml,*.cds)|*.xml;*.cds|All Files (*.*)|*.*'
    InitialDir = 'c:\program files\common files\borland shared\data'
    Title = 'select Client Dataset to Navigate'
    Left = 400
    Top = 328
  end
  object MainMenu1: TMainMenu
    Left = 544
    Top = 272
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
