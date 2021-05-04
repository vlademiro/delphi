object DM: TDM
  OldCreateOrder = False
  Height = 356
  Width = 495
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\delphi\exemplos\banco\EMPLOYEE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Left = 56
    Top = 88
  end
  object qryEmployee: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from employee')
    Left = 208
    Top = 176
  end
end
