object DMDrivers: TDMDrivers
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object ConDrivers: TADOConnection
    Left = 88
    Top = 56
  end
  object TblDrivers: TADOTable
    Left = 32
    Top = 16
  end
  object DSCDrivers: TDataSource
    Left = 144
    Top = 16
  end
end
