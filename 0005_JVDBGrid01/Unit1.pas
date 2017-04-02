unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  DBClient;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CHECK: TBooleanField;
    ClientDataSet1DESCRICAO: TStringField;
    JvDBGrid1: TJvDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure JvDBGrid1CellClick(Column: TColumn);
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
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   ClientDataSet1.CreateDataSet;
end;

procedure TForm1.JvDBGrid1CellClick(Column: TColumn);
begin
   if Column.FieldName = 'CHECK' then
   begin
      if ClientDataSet1.IsEmpty then
         exit;

      if ClientDataSet1.State = dsBrowse then
        ClientDataSet1.Edit;

      ClientDataSet1CHECK.AsBoolean := not ClientDataSet1CHECK.AsBoolean;
      ClientDataSet1.Post;
   end;
end;

end.
