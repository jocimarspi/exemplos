unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  DBClient, StdCtrls, Mask, JvComponentBase, JvgHint, dblookup;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CHECK: TBooleanField;
    JvDBGrid1: TJvDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    ClientDataSet1NOME: TStringField;
    ClientDataSet1SEXO: TStringField;
    ClientDataSet1TIPO: TStringField;
    ClientDataSet1OBSERVACAO: TMemoField;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    ClientDataSet2DESCRICAO: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColumnResized(Grid: TJvDBGrid; ACol, NewWidth: Integer);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
   ClientDataSet1CHECK.AsBoolean := false;
   ClientDataSet1SEXO.AsString := 'Masculino';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   ClientDataSet1.CreateDataSet;
   ClientDataSet2.CreateDataSet;

   ClientDataSet2.Append;
   ClientDataSet2DESCRICAO.AsString := 'Cliente';
   ClientDataSet2.Post;

   ClientDataSet2.Append;
   ClientDataSet2DESCRICAO.AsString := 'Fornecedor';
   ClientDataSet2.Post;

   ClientDataSet2.Append;
   ClientDataSet2DESCRICAO.AsString := 'Transportadora';
   ClientDataSet2.Post;

   ClientDataSet2.Append;
   ClientDataSet2DESCRICAO.AsString := 'Funcionario';
   ClientDataSet2.Post;

   ClientDataSet2.Append;
   ClientDataSet2DESCRICAO.AsString := 'Outros';
   ClientDataSet2.Post;

   DBComboBox1.Items.Add('Feminino');
   DBComboBox1.Items.Add('Masculino');
end;

procedure TForm1.JvDBGrid1CellClick(Column: TColumn);
begin
   {if Column.FieldName = 'CHECK' then
   begin
      if ClientDataSet1.IsEmpty then
         exit;

      if ClientDataSet1.State = dsBrowse then
        ClientDataSet1.Edit;

      ClientDataSet1CHECK.AsBoolean := not ClientDataSet1CHECK.AsBoolean;
      ClientDataSet1.Post;
   end;}
end;

procedure TForm1.JvDBGrid1ColumnResized(Grid: TJvDBGrid; ACol,
  NewWidth: Integer);
begin
   if JvDBGrid1.Columns[Acol].FieldName = 'OBSERVACAO' then
      DBMemo1.Width := NewWidth;
end;

end.
