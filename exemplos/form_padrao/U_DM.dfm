object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 468
  Width = 485
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\delphi\exemplos\banco\EMPLOYEE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    Left = 56
    Top = 72
  end
  object FDWaitCursor: TFDGUIxWaitCursor
    Provider = 'Console'
    Left = 160
    Top = 72
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 120
    Top = 208
  end
end
