object Form3: TForm3
  Left = 208
  Top = 173
  Width = 928
  Height = 480
  Caption = 'Halaman Utama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 144
    Top = 72
    object Fike1: TMenuItem
      Caption = 'File'
      object Login1: TMenuItem
        Caption = 'Login'
        OnClick = Login1Click
      end
      object Logout1: TMenuItem
        Caption = 'Logout'
        Enabled = False
        OnClick = Logout1Click
      end
      object Keluar1: TMenuItem
        Caption = 'Keluar'
        OnClick = Keluar1Click
      end
    end
    object Data1: TMenuItem
      Caption = 'Data'
      Enabled = False
      object DataMobil2: TMenuItem
        Caption = 'Data Pelanggan'
        OnClick = DataMobil2Click
      end
      object DataMerk1: TMenuItem
        Caption = 'Data Merk'
        OnClick = DataMerk1Click
      end
      object DataKaryawan1: TMenuItem
        Caption = 'Data Karyawan'
        OnClick = DataKaryawan1Click
      end
    end
    object Laporan1: TMenuItem
      Caption = 'Laporan'
      Enabled = False
    end
  end
end
