object DMDataBases: TDMDataBases
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 204
  Width = 350
  object ConDataBases: TADOConnection
    Left = 56
    Top = 16
  end
  object TblDataBases: TADOTable
    Left = 56
    Top = 144
  end
  object DSCDataBases: TDataSource
    Left = 96
    Top = 144
  end
end
