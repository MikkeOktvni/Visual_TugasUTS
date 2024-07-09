object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 179
  Width = 234
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Mikke Kuliah\SEMESTER 4\Visual 2\TUGAS\TUGAS UTS\libmysql.dll'
    Left = 32
    Top = 16
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from satuan')
    Params = <>
    Left = 104
    Top = 16
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 104
    Top = 72
  end
end
