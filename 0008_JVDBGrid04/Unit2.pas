unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBClient;

type
  TForm2 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    JvDBGrid1: TJvDBGrid;
    ClientDataSet1CODIGO: TIntegerField;
    ClientDataSet1NOME: TStringField;
    ClientDataSet1TELEFONE: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
   ClientDataSet1.CreateDataSet;

   ClientDataSet1.Append;
   ClientDataSet1CODIGO.AsInteger := 1;
   ClientDataSet1NOME.AsString := 'Jocimar de Souza Medeiros';
   ClientDataSet1TELEFONE.AsString := '44 9999-2233';
   ClientDataSet1.Post;

   ClientDataSet1.Append;
   ClientDataSet1CODIGO.AsInteger := 2;
   ClientDataSet1NOME.AsString := 'Silvana Rodrigues de Mello';
   ClientDataSet1TELEFONE.AsString := '44 9899-2266';
   ClientDataSet1.Post;

end;

end.
