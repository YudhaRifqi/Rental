program Rental;

uses
  Forms,
  Merk in 'Merk.pas' {Form1},
  Pelanggan in 'Pelanggan.pas' {Form2},
  Menu in 'Menu.pas' {Form3},
  Karyawan in 'Karyawan.pas' {Form4},
  Login in 'Login.pas' {Form5},
  Daftar in 'Daftar.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
