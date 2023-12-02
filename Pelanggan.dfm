object Form2: TForm2
  Left = 325
  Top = 102
  Width = 736
  Height = 568
  Caption = 'Pelanggan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 336
    Top = 32
    Width = 65
    Height = 13
    Caption = 'PELANGGAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 208
    Top = 219
    Width = 79
    Height = 13
    Caption = 'TANGGAL LAHIR'
  end
  object lbl3: TLabel
    Left = 256
    Top = 125
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl4: TLabel
    Left = 264
    Top = 92
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl5: TLabel
    Left = 248
    Top = 151
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label1: TLabel
    Left = 216
    Top = 184
    Width = 72
    Height = 13
    Caption = 'TEMPAT LAHIR'
  end
  object lbl6: TLabel
    Left = 216
    Top = 251
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl7: TLabel
    Left = 256
    Top = 285
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object lbl8: TLabel
    Left = 240
    Top = 317
    Width = 44
    Height = 13
    Caption = 'TELEPON'
  end
  object edt1: TEdit
    Left = 304
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 304
    Top = 120
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 304
    Top = 152
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 304
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 304
    Top = 280
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 304
    Top = 312
    Width = 161
    Height = 21
    TabOrder = 5
  end
  object cbb1: TComboBox
    Left = 304
    Top = 248
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object dtp1: TDateTimePicker
    Left = 304
    Top = 216
    Width = 186
    Height = 21
    Date = 45261.675370856480000000
    Time = 45261.675370856480000000
    TabOrder = 7
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 400
    Width = 705
    Height = 120
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 144
    Top = 352
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 232
    Top = 352
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 320
    Top = 352
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 408
    Top = 352
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 496
    Top = 352
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 13
    OnClick = btn5Click
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 552
    Top = 184
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pelanggan')
    Params = <>
    Left = 560
    Top = 248
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'visual3_rentalmobil'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Zeos703\libmysql.dll'
    Left = 608
    Top = 152
  end
end
