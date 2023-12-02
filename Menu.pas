unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm3 = class(TForm)
    mm1: TMainMenu;
    Fike1: TMenuItem;
    Data1: TMenuItem;
    Laporan1: TMenuItem;
    Login1: TMenuItem;
    Logout1: TMenuItem;
    Keluar1: TMenuItem;
    DataMobil2: TMenuItem;
    DataMerk1: TMenuItem;
    DataKaryawan1: TMenuItem;
    procedure DataMobil2Click(Sender: TObject);
    procedure DataMerk1Click(Sender: TObject);
    procedure DataKaryawan1Click(Sender: TObject);
    procedure Login1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Pelanggan, Merk, Karyawan, Login;

{$R *.dfm}

procedure TForm3.DataMobil2Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm3.DataMerk1Click(Sender: TObject);
begin
Form1.Show;
end;

procedure TForm3.DataKaryawan1Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm3.Login1Click(Sender: TObject);
begin
Form5.Show;
end;

end.
