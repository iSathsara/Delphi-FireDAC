object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'FireDAC Navigation'
  ClientHeight = 582
  ClientWidth = 1097
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  DesignSize = (
    1097
    582)
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
    Width = 715
    Height = 81
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
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
    Width = 1090
    Height = 434
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel4: TPanel
    Left = 0
    Top = 555
    Width = 1089
    Height = 25
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 5
    ExplicitTop = 553
    object LblElapseTime: TLabel
      Left = 0
      Top = 3
      Width = 140
      Height = 15
      Caption = 'Elapse Time: 2 miliseconds'
    end
    object LblNumberOfRecords: TLabel
      Left = 222
      Top = 3
      Width = 81
      Height = 15
      Caption = 'Record 19 of 19'
    end
    object LblStatus: TLabel
      Left = 486
      Top = 3
      Width = 90
      Height = 15
      Caption = 'State = dsBrowse'
    end
    object LblEofStatus: TLabel
      Left = 764
      Top = 3
      Width = 125
      Height = 14
      Alignment = taRightJustify
      Caption = 'BOF = False, EOF = True'
    end
  end
end
