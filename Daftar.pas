unit Daftar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, IdHashMessageDigest, frxClass,
  frxDBSet;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl4: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    zqry1: TZQuery;
    con1: TZConnection;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
var
  username: string;
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
    zqry1.SQL.Text := 'SELECT COUNT(*) AS count FROM user WHERE username = :username';
    zqry1.ParamByName('username').AsString := username;
    zqry1.Open;

    if zqry1.FieldByName('count').AsInteger > 0 then
    begin
      ShowMessage('Username sudah terdaftar.');
      edt1.Clear;
      edt2.Clear;
      Exit; // Jangan lanjutkan menyimpan data jika sudah terdaftar

    end;
    zqry1.SQL.Clear;
    zqry1.Close;
    zqry1.SQL.Add('insert into user (id, username, password, level) values(null, "'+edt1.Text+'",MD5("'+edt2.Text+'"), 1)');
    zqry1.ExecSQL;
    ShowMessage('Akun Berhasil Dibuat');
    Form6.Close;
    end;

end;

procedure TForm6.btn2Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
Form6.Close;
end;

end.

