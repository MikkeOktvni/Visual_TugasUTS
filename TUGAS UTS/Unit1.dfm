object Form1: TForm1
  Left = 275
  Top = 166
  Width = 484
  Height = 467
  Caption = 'fiture_satuan'
  Color = clScrollBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 32
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl2: TLabel
    Left = 40
    Top = 64
    Width = 50
    Height = 13
    Caption = 'DISKRIPSI'
  end
  object lbl3: TLabel
    Left = 40
    Top = 264
    Width = 80
    Height = 13
    Caption = 'MASUKAN NAMA'
  end
  object edt1: TEdit
    Left = 120
    Top = 32
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 120
    Top = 64
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 40
    Top = 96
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 128
    Top = 96
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 216
    Top = 96
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 304
    Top = 96
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 136
    Width = 345
    Height = 120
    DataSource = DataModule2.dssatuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 144
    Top = 264
    Width = 233
    Height = 21
    TabOrder = 7
  end
end
