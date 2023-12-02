object Form4: TForm4
  Left = 252
  Top = 156
  Width = 763
  Height = 487
  Caption = 'Karyawan'
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
  object lbl4: TLabel
    Left = 272
    Top = 92
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl3: TLabel
    Left = 258
    Top = 125
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl5: TLabel
    Left = 248
    Top = 151
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl6: TLabel
    Left = 216
    Top = 189
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl2: TLabel
    Left = 245
    Top = 222
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
  object cbb1: TComboBox
    Left = 304
    Top = 184
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object edt4: TEdit
    Left = 304
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 144
    Top = 259
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 232
    Top = 259
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 320
    Top = 259
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 408
    Top = 259
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 496
    Top = 259
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 305
    Width = 729
    Height = 128
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
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
  object ds1: TDataSource
    DataSet = zqry1
    Left = 552
    Top = 184
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 592
    Top = 72
  end
end
