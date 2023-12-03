unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    edt2: TEdit;
    zqry1: TZQuery;
    con1: TZConnection;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  Menu, Daftar;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
var
  username, password: string;
begin
  if edt1.text = '' then
    begin
    MessageDlg('Kolom username harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt2.text = '' then
    begin
    MessageDlg('Kolom password harus diisi', mtInformation, [mbOK], 0);
    end else
    begin
    username := edt1.Text;
    password := edt2.Text;

    zqry1 := TZQuery.Create(nil);
    try
    // Mengatur koneksi TZQuery dengan TZConnection yang telah diatur sebelumnya
    zqry1.Connection := Form5.con1;

    // Mengeksekusi query untuk memeriksa username dan password
    zqry1.SQL.Text := 'SELECT COUNT(*) FROM user WHERE username = :username AND password = MD5(:password)';
    zqry1.ParamByName('username').AsString := username;
    zqry1.ParamByName('password').AsString := password;
    zqry1.Open;

    // Memeriksa hasil query
    if zqry1.Fields[0].AsInteger > 0 then
    begin
      // Jika ada record dengan username dan password yang sesuai, login berhasil
      ShowMessage('Login berhasil!');
      Form3.Data1.Enabled := true;
      Form3.Laporan1.Enabled := true;
      Form3.Logout1.Enabled := true;
      Form3.Login1.Enabled := false;
      Form5.Close;
      // Tambahkan kode untuk membuka form utama atau aksi lainnya setelah login berhasil
    end
    else
    begin
      // Jika tidak ada record yang sesuai, login gagal
      ShowMessage('Username atau password salah!');
    end;
    finally
      // Membebaskan memori objek TZQuery
      zqry1.Free;
    end;
    end;
end;


procedure TForm5.btn2Click(Sender: TObject);
begin
Form6.Show;
end;

end.
