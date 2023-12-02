unit Karyawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    edt2: TEdit;
    lbl5: TLabel;
    edt3: TEdit;
    lbl6: TLabel;
    cbb1: TComboBox;
    lbl2: TLabel;
    edt4: TEdit;
    con1: TZConnection;
    ds1: TDataSource;
    zqry1: TZQuery;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure editbersih;
    procedure editenable;
    procedure posisiawal;
  end;

var
  Form4: TForm4;
  id:string;

implementation

{$R *.dfm}

{ TForm4 }

procedure TForm4.editbersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
cbb1.Text := '';
edt4.Clear;
end;

procedure TForm4.editenable;
begin
edt1.Enabled := true;
edt2.Enabled := true;
edt3.Enabled := true;
edt4.Enabled := true;
cbb1.Enabled := True;
end;

procedure TForm4.posisiawal;
begin
editbersih;
btn1.Enabled := true;
btn2.Enabled := false;
btn3.Enabled := false;
btn4.Enabled := false;
btn5.Enabled := false;
edt1.Enabled := false;
edt2.Enabled := false;
edt3.Enabled := false;
edt4.Enabled := false;
cbb1.Enabled := false;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
editbersih;
editenable;
btn1.Enabled := False;
btn2.Enabled := True;
btn3.Enabled := false;
btn4.Enabled := false;
btn5.Enabled := true;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if edt1.text = '' then
    begin
    MessageDlg('Kolom nik harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt2.text = '' then
    begin
    MessageDlg('Kolom nama harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt3.text = '' then
    begin
    MessageDlg('Kolom alamat harus diisi', mtInformation, [mbOK], 0);
    end else
    if cbb1.text = '' then
    begin
    MessageDlg('Kolom jenis kelamin harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt4.text = '' then
    begin
    MessageDlg('Kolom telepon harus diisi', mtInformation, [mbOK], 0);
    end else
    begin
    zqry1.Append;
    zqry1.FieldByName('nik').AsString := edt1.Text;
    zqry1.FieldByName('nama').AsString := edt2.Text;
    zqry1.FieldByName('alamat').AsString := edt3.Text;
    zqry1.FieldByName('jk').AsString := cbb1.Text;
    zqry1.FieldByName('telepon').AsString := edt4.Text;
    zqry1.Post;
    zqry1.Close;
    zqry1.Open;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from karyawan');
    zqry1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN');
    posisiawal;
    end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
if edt1.text = '' then
    begin
    MessageDlg('Kolom nik harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt2.text = '' then
    begin
    MessageDlg('Kolom nama harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt3.text = '' then
    begin
    MessageDlg('Kolom alamat harus diisi', mtInformation, [mbOK], 0);
    end else
    if cbb1.text = '' then
    begin
    MessageDlg('Kolom jenis kelamin harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt4.text = '' then
    begin
    MessageDlg('Kolom telepon harus diisi', mtInformation, [mbOK], 0);
    end else
    begin
    zqry1.Edit;
    zqry1.FieldByName('nik').AsString := edt1.Text;
    zqry1.FieldByName('nama').AsString := edt2.Text;
    zqry1.FieldByName('alamat').AsString := edt3.Text;
    zqry1.FieldByName('jk').AsString := cbb1.Text;
    zqry1.FieldByName('telepon').AsString := edt4.Text;
    zqry1.Post;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from karyawan');
    zqry1.Open;
    ShowMessage('DATA BERHASIL DIUBAH');
    posisiawal;
    end;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from karyawan where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from karyawan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
editenable;
btn1.Enabled := true;
btn2.Enabled := false;
btn3.Enabled := true;
btn4.Enabled := true;
btn5.Enabled := true;
id := zqry1.Fields[0].AsString;
edt1.Text := zqry1.FieldByName('nik').AsString;
edt2.Text := zqry1.FieldByName('nama').AsString;
edt3.Text := zqry1.FieldByName('alamat').AsString;
cbb1.Text := zqry1.FieldByName('jk').AsString;
edt4.Text := zqry1.FieldByName('telepon').AsString;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
posisiawal;
end;

end.
