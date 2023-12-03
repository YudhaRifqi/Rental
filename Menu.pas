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
    procedure Keluar1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
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

procedure TForm3.Keluar1Click(Sender: TObject);
begin
if Application.MessageBox('Benarkah Anda Akan Keluar Dari Aplikasi?', 'Konfirmasi', 4+32)=6
then Application.Terminate;
end;

procedure TForm3.Logout1Click(Sender: TObject);
begin
if MessageDlg('Logout?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
  Form3.Data1.Enabled := false;
  Form3.Laporan1.Enabled := false;
  Form3.logout1.Enabled := false;
  Form3.Login1.Enabled := true;
end;
end;

end.
