object Form7: TForm7
  Left = 276
  Top = 133
  Width = 763
  Height = 591
  Caption = 'Mobil'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 336
    Top = 32
    Width = 36
    Height = 13
    Caption = 'MOBIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 256
    Top = 92
    Width = 27
    Height = 13
    Caption = 'MERK'
  end
  object lbl3: TLabel
    Left = 218
    Top = 151
    Width = 66
    Height = 13
    Caption = 'NAMA_MOBIL'
  end
  object lbl5: TLabel
    Left = 256
    Top = 182
    Width = 24
    Height = 13
    Caption = 'PLAT'
  end
  object lbl6: TLabel
    Left = 248
    Top = 215
    Width = 34
    Height = 13
    Caption = 'TAHUN'
  end
  object lbl2: TLabel
    Left = 245
    Top = 247
    Width = 38
    Height = 13
    Caption = 'WARNA'
  end
  object lbl7: TLabel
    Left = 201
    Top = 279
    Width = 82
    Height = 13
    Caption = 'HARGA PERHARI'
  end
  object lbl8: TLabel
    Left = 224
    Top = 122
    Width = 59
    Height = 13
    Caption = 'NAMA MERK'
  end
  object edt1: TEdit
    Left = 304
    Top = 146
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 304
    Top = 178
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 304
    Top = 210
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object cbb1: TComboBox
    Left = 304
    Top = 88
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    OnChange = cbb1Change
  end
  object edt4: TEdit
    Left = 304
    Top = 242
    Width = 153
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 144
    Top = 345
    Width = 75
    Height = 26
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 232
    Top = 345
    Width = 75
    Height = 26
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 320
    Top = 345
    Width = 75
    Height = 26
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 408
    Top = 345
    Width = 75
    Height = 26
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 496
    Top = 345
    Width = 75
    Height = 26
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 417
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
  object edt5: TEdit
    Left = 304
    Top = 274
    Width = 153
    Height = 21
    TabOrder = 11
  end
  object edt6: TEdit
    Left = 304
    Top = 116
    Width = 153
    Height = 21
    Enabled = False
    TabOrder = 12
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      
        'SELECT mobil.id, mobil.merk_id, merk.nama_merk, mobil.nama_mobil' +
        ', mobil.plat, mobil.tahun, mobil.warna, mobil.harga_perhari FROM' +
        ' mobil INNER JOIN merk ON mobil.merk_id = merk.id;')
    Params = <>
    Left = 592
    Top = 72
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 552
    Top = 184
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
  object mobil: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from mobil')
    Params = <>
    Left = 656
    Top = 80
  end
  object merk: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from merk')
    Params = <>
    Left = 552
    Top = 112
  end
end
