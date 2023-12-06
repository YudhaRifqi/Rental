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
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45266.342275833300000000
    ReportOptions.LastChange = 45266.342275833300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 528
    Top = 72
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 313.700990000000000000
          Top = 11.338590000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA MOBIL')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 86.929190000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'MERK')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 173.858380000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PLAT')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 464.882190000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TAHUN')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'WARNA')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 714.331170000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'HARGA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 68.031540000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'nama_merk'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."nama_merk"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 173.858380000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'nama_mobil'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."nama_mobil"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 336.378170000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'plat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."plat"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 464.882190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'tahun'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."tahun"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 585.827150000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'warna'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."warna"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 714.331170000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'harga_perhari'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."harga_perhari"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = ds1
    Left = 568
    Top = 24
  end
end
