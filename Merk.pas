unit Merk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edt1: TEdit;
    con1: TZConnection;
    ZQuery1: TZQuery;
    Button1: TButton;
    ds1: TDataSource;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    procedure Button2Click(Sender: TObject);
    procedure editbersih;
    procedure editenable;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id: string;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
if  edt1.Text = '' then
    begin
    MessageDlg('Kolom nama merk harus diisi', mtInformation, [mbOK], 0);
    end else
    begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('insert into merk values (null, "'+edt1.Text+'")');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('select * from merk');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN');
    posisiawal;
    end;
end;

procedure TForm1.editbersih;
begin
edt1.Clear;
end;

procedure TForm1.editenable;
begin
edt1.Enabled := true;
end;

procedure TForm1.posisiawal;
begin
editbersih;
edt1.Enabled := false;
Button1.Enabled := true;
Button2.Enabled := false;
Button3.Enabled := false;
Button4.Enabled := false;
Button5.Enabled := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
       editbersih;
       editenable;
       Button1.Enabled := false;
       Button2.Enabled := true;
       Button3.Enabled := false;
       Button4.Enabled := false;
       Button5.Enabled := true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if(edt1.Text='') then
    begin
      ShowMessage('INPUTAN WAJIB DIISI');
    end else
    if (edt1.Text = ZQuery1.Fields[1].AsString)then
    begin
      ShowMessage('DATA TIDAK ADA PERUBAHAN');
      posisiawal;
    end else
    begin

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('UPDATE merk set nama_merk="'+edt1.Text+'" where id="'+id+'"') ;
    Zquery1.ExecSQL;

    ZQuery1.SQL.Clear;
    Zquery1.SQL.Add('select * from merk');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DIUBAH');
    posisiawal;
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('delete from merk where id="'+id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from merk');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
editenable;
Button1.Enabled := true;
Button2.Enabled := false;
Button3.Enabled := true;
Button4.Enabled := true;
Button5.Enabled := true;
id := ZQuery1.Fields[0].AsString;
edt1.Text := Zquery1.Fields[1].AsString;
end;

end.
