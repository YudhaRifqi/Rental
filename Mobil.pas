unit Mobil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, frxClass, frxDBSet;

type
  TForm7 = class(TForm)
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
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    zqry1: TZQuery;
    ds1: TDataSource;
    con1: TZConnection;
    mobil: TZQuery;
    merk: TZQuery;
    lbl7: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    lbl8: TLabel;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure editbersih;
    procedure editenable;
    procedure posisiawal;
  end;

var
  Form7: TForm7;
  id : string;

implementation

{$R *.dfm}

procedure TForm7.editbersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Text := '';
end;

procedure TForm7.editenable;
begin
cbb1.Enabled := true;
edt1.Enabled := true;
edt2.Enabled := true;
edt3.Enabled := true;
edt4.Enabled := true;
edt5.Enabled := True;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
merk.First;
while not merk.Eof do
begin
  cbb1.Items.add(merk.FieldByName('id').AsString);
  merk.Next;
end;

end;

procedure TForm7.posisiawal;
begin
editbersih;
btn1.Enabled := true;
btn2.Enabled := false;
btn3.Enabled := false;
btn4.Enabled := false;
btn5.Enabled := false;
cbb1.Enabled := false;
edt1.Enabled := false;
edt2.Enabled := false;
edt3.Enabled := false;
edt4.Enabled := false;
edt5.Enabled := false;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
    if cbb1.text = '' then
    begin
    MessageDlg('Kolom merk harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt1.text = '' then
    begin
    MessageDlg('Kolom nama mobil diisi', mtInformation, [mbOK], 0);
    end else
    if edt2.text = '' then
    begin
    MessageDlg('Kolom plat harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt3.text = '' then
    begin
    MessageDlg('Kolom tahun harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt4.text = '' then
    begin
    MessageDlg('Kolom warna harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt5.text = '' then
    begin
    MessageDlg('Kolom harga perhari harus diisi', mtInformation, [mbOK], 0);
    end else
    begin
    mobil.Append;
    mobil.FieldByName('merk_id').AsString := cbb1.Text;
    mobil.FieldByName('nama_mobil').AsString := edt1.Text;
    mobil.FieldByName('plat').AsString := edt2.Text;
    mobil.FieldByName('tahun').AsString := edt3.Text;
    mobil.FieldByName('warna').AsString := edt4.Text;
    mobil.FieldByName('harga_perhari').AsString := edt5.Text;
    mobil.Post;
    zqry1.Close;
    zqry1.Open;

    mobil.SQL.Clear;
    mobil.SQL.Add('select * from mobil');
    mobil.Open;
    ShowMessage('DATA BERHASIL DISIMPAN');
    posisiawal;
    end;
end;

procedure TForm7.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
editbersih;
editenable;
btn1.Enabled := false;
btn2.Enabled := true;
btn3.Enabled := false;
btn4.Enabled := false;
btn5.Enabled := true;
end;

procedure TForm7.cbb1Change(Sender: TObject);
begin
merk.Locate('id', StrToInt(cbb1.Text), []);
edt6.Text := merk.FieldByName('nama_merk').AsString;

end;

procedure TForm7.btn3Click(Sender: TObject);
begin
if cbb1.text = '' then
    begin
    MessageDlg('Kolom merk harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt1.text = '' then
    begin
    MessageDlg('Kolom nama mobil diisi', mtInformation, [mbOK], 0);
    end else
    if edt2.text = '' then
    begin
    MessageDlg('Kolom plat harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt3.text = '' then
    begin
    MessageDlg('Kolom tahun harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt4.text = '' then
    begin
    MessageDlg('Kolom warna harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt5.text = '' then
    begin
    MessageDlg('Kolom harga perhari harus diisi', mtInformation, [mbOK], 0);
    end else
    begin
    ShowMessage('DATA BERHASIL DIUBAH');
    mobil.SQL.Clear;
    mobil.SQL.Add('Update mobil set merk_id= "'+cbb1.Text+'",nama_mobil="'+edt1.Text+'",plat="'+edt2.Text+'",tahun="'+edt3.Text+'",warna="'+edt4.Text+'",harga_perhari="'+edt5.Text+'" where id="'+id+'"');
    mobil. ExecSQL;

    mobil.SQL.Clear;
    mobil.SQL.Add('select * from mobil');
    mobil.Open;
    zqry1.Close;
    zqry1.Open;
    posisiawal;
    end;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from mobil where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT mobil.id, mobil.merk_id, merk.nama_merk, mobil.nama_mobil, mobil.plat, mobil.tahun, mobil.warna, mobil.harga_perhari');
zqry1.SQL.Add('FROM mobil INNER JOIN merk ON mobil.merk_id = merk.id');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
editenable;
btn1.Enabled := true;
btn2.Enabled := false;
btn3.Enabled := true;
btn4.Enabled := true;
btn5.Enabled := true;
id := zqry1.Fields[0].AsString;
cbb1.Text := zqry1.FieldByName('merk_id').AsString;
edt6.Text := zqry1.FieldByName('nama_merk').AsString;
edt1.Text := zqry1.FieldByName('nama_mobil').AsString;
edt2.Text := zqry1.FieldByName('plat').AsString;
edt3.Text := zqry1.FieldByName('tahun').AsString;
edt4.Text := zqry1.FieldByName('warna').AsString;
edt5.Text := zqry1.FieldByName('harga_perhari').AsString;
end;

end.
