object DataModule1: TDataModule1
  Height = 275
  Width = 351
  PixelsPerInch = 96
  object EmployeedbConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=EmployeeDB')
    Connected = True
    LoginPrompt = False
    Left = 140
    Top = 105
  end
end
