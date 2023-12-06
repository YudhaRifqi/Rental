unit Pelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm2 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    cbb1: TComboBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ds1: TDataSource;
    zqry1: TZQuery;
    con1: TZConnection;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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
  Form2: TForm2;
   id:string;

implementation

uses
  Merk;

{$R *.dfm}

{ TForm2 }

procedure TForm2.editbersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
dtp1.DateTime := Now;
cbb1.Text := '';
edt5.Clear;
edt6.Clear;
end;

procedure TForm2.editenable;
begin
edt1.Enabled := true;
edt2.Enabled := true;
edt3.Enabled := true;
edt4.Enabled := true;
dtp1.Enabled := True;
cbb1.Enabled := True;
edt5.Enabled := true;
edt6.Enabled := true;
end;

procedure TForm2.posisiawal;
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
dtp1.Enabled := false;
cbb1.Enabled := false;
edt5.Enabled := false;
edt6.Enabled := false;

end;

procedure TForm2.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
editbersih;
editenable;
btn1.Enabled := False;
btn2.Enabled := True;
btn3.Enabled := false;
btn4.Enabled := false;
btn5.Enabled := true;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btn2Click(Sender: TObject);
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
    MessageDlg('Kolom tempat lahir harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt5.text = '' then
    begin
    MessageDlg('Kolom email harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt6.text = '' then
    begin
    MessageDlg('Kolom telepon harus diisi', mtInformation, [mbOK], 0);
    end else
    begin
    zqry1.Append;
    zqry1.FieldByName('nik').AsString := edt1.Text;
    zqry1.FieldByName('nama').AsString := edt2.Text;
    zqry1.FieldByName('alamat').AsString := edt3.Text;
    zqry1.FieldByName('tempat_lahir').AsString := edt4.Text;
    zqry1.FieldByName('tgl_lahir').AsDateTime := dtp1.Date;
    zqry1.FieldByName('jk').AsString := cbb1.Text;
    zqry1.FieldByName('email').AsString := edt5.Text;
    zqry1.FieldByName('telepon').AsString := edt6.Text;
    zqry1.Post;
    zqry1.Close;
    zqry1.Open;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from pelanggan');
    zqry1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN');
    posisiawal;
    end;
end;

procedure TForm2.btn3Click(Sender: TObject);
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
    MessageDlg('Kolom tempat lahir harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt5.text = '' then
    begin
    MessageDlg('Kolom email harus diisi', mtInformation, [mbOK], 0);
    end else
    if edt6.text = '' then
    begin
    MessageDlg('Kolom telepon harus diisi', mtInformation, [mbOK], 0);
    end else
    begin
    zqry1.Edit;
    zqry1.FieldByName('nik').AsString := edt1.Text;
    zqry1.FieldByName('nama').AsString := edt2.Text;
    zqry1.FieldByName('alamat').AsString := edt3.Text;
    zqry1.FieldByName('tempat_lahir').AsString := edt4.Text;
    zqry1.FieldByName('tgl_lahir').AsDateTime := dtp1.Date;
    zqry1.FieldByName('jk').AsString := cbb1.Text;
    zqry1.FieldByName('email').AsString := edt5.Text;
    zqry1.FieldByName('telepon').AsString := edt6.Text;
    zqry1.Post;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from pelanggan');
    zqry1.Open;
    ShowMessage('DATA BERHASIL DIUBAH');
    posisiawal;
    end;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from pelanggan where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pelanggan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
editenable;
btn1.Enabled := true;
btn2.Enabled := false;
btn3.Enabled := true;
btn4.Enabled := true;
btn5.Enabled := true;
id := zqry1.Fields[0].AsString;
edt1.Text := zqry1.fieldByName('nik').AsString;
edt2.Text := zqry1.FieldByName('nama').AsString;
edt3.Text := zqry1.FieldByName('alamat').AsString;
edt4.Text := zqry1.FieldByName('tempat_lahir').AsString;
dtp1.DateTime := zqry1.FieldByName('tgl_lahir').AsDateTime;
cbb1.Text := zqry1.FieldByName('jk').AsString;
edt5.Text := zqry1.FieldByName('email').AsString;
edt6.Text := zqry1.FieldByName('telepon').AsString;
end;

end.
