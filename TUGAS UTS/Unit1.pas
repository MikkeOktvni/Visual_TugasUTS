unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    edt3: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
 if edt1.Text = '' then
  begin
  ShowMessage('Nama satuan Tidak Boleh Kosong!');
  end else
  if DataModule2.Zsatuan.Locate('nama',edt1.Text,[]) then
  begin
  ShowMessage('Nama satuan '+edt1.Text+' Sudah Ada Didalam Sistem');
  end else
  Begin // simpan
    with DataModule2.Zsatuan do
    begin
    SQL.Clear;
    SQL.Add('insert into satuan (nama,deskripsi) values(:nama, :deskripsi)');
    ParamByName('nama').AsString := edt1.Text;
    ParamByName('deskripsi').AsString := edt2.Text;
    ExecSQL ;
    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
    end;
  ShowMessage('Data Berhasil Disimpan!');
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
 if edt1.Text = '' then
  begin
    ShowMessage('Nama Satuan Tidak Boleh Kosong!');
  end
  else if not DataModule2.Zsatuan.Locate('nama', edt1.Text, []) then
  begin
    ShowMessage('Nama Satuan ' + edt1.Text + ' Tidak Ditemukan Dalam Sistem');
  end
  else
  begin
    // Update data
    with DataModule2.Zsatuan do
    begin
      SQL.Clear;
      SQL.Add('update satuan set deskripsi = :deskripsi where nama = :nama');
      ParamByName('nama').AsString := edt1.Text;
      ParamByName('deskripsi').AsString := edt2.Text;
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil Diubah!');
  end;
  end;

procedure TForm1.btn3Click(Sender: TObject);
begin
 if edt1.Text = '' then
  begin
    ShowMessage('Nama Satuan Tidak Boleh Kosong!');
  end
  else if not DataModule2.Zsatuan.Locate('nama', edt1.Text, []) then
  begin
    ShowMessage('Nama Satuan ' + edt1.Text + ' Tidak Ditemukan Dalam Sistem');
  end
  else
  begin
    // Delete data
    with DataModule2.Zsatuan do
    begin
      SQL.Clear;
      SQL.Add('delete from satuan where nama = :nama');
      ParamByName('nama').AsString := edt1.Text;
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil Dihapus!');
  end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edt1.Text := '';
edt2.Text := '';
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
 edt1.Text := DataModule2.Zsatuan.FieldByName('nama').AsString;
 edt2.Text := DataModule2.Zsatuan.FieldByName('deskripsi').AsString;
end;
end.
