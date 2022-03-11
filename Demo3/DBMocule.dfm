object SharedDataModule: TSharedDataModule
  OnCreate = DataModuleCreate
  Height = 294
  Width = 444
  PixelsPerInch = 96
  object FDConnection1: TFDConnection
    Left = 88
    Top = 56
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 272
    Top = 56
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 184
    Top = 176
  end
end
