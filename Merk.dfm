object Form1: TForm1
  Left = 243
  Top = 184
  Width = 700
  Height = 480
  Caption = 'Merk'
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
  object Label1: TLabel
    Left = 304
    Top = 48
    Width = 47
    Height = 19
    Caption = 'MERK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 200
    Top = 116
    Width = 59
    Height = 13
    Caption = 'NAMA MERK'
  end
  object edt1: TEdit
    Left = 272
    Top = 112
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 128
    Top = 208
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 208
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 304
    Top = 208
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 392
    Top = 208
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 480
    Top = 208
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = Button5Click
  end
  object DBGrid1: TDBGrid
    Left = 128
    Top = 264
    Width = 425
    Height = 120
    DataSource = ds1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
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
    Left = 600
    Top = 72
  end
  object ZQuery1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from merk')
    Params = <>
    Left = 544
    Top = 104
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 544
    Top = 48
  end
end
