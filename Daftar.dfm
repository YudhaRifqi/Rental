object Form6: TForm6
  Left = 289
  Top = 172
  Width = 512
  Height = 264
  Caption = 'Daftar Akun'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 232
    Top = 32
    Width = 78
    Height = 13
    Caption = 'DAFTAR AKUN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 107
    Top = 92
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl3: TLabel
    Left = 106
    Top = 125
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object edt1: TEdit
    Left = 176
    Top = 88
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 176
    Top = 120
    Width = 185
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btn1: TButton
    Left = 104
    Top = 176
    Width = 121
    Height = 25
    Caption = 'DAFTAR'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 232
    Top = 176
    Width = 129
    Height = 25
    Caption = 'BATAL'
    TabOrder = 3
    OnClick = btn2Click
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 424
    Top = 64
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
    Left = 424
    Top = 128
  end
end
