unit Unit1;
{
 ***********************************************************************************
 *  Exemplo de como utiliar o XMLDataBind do delphi para manipular arquivos XML    *
 *                                                                                 *
 *  Autor: Jocimar B. A. Huss                                                      *
 *  Data: 05/08/2012                                                               *
 ***********************************************************************************
 }
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, StdCtrls, msxmldom, XMLDoc;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    XMLDocument1: TXMLDocument;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses shiporder;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   pedido :IXMLShipordertype;
   item :IXMLItemtype;
begin
   //Cria uma nova instância da estrutura de classes para criar um novo XML
   pedido := Newshiporder();

   //Informações do pedido
   pedido.Orderid := '123456';
   pedido.Orderperson := 'Livraria X';

   //Infomações do destinatário do pedido
   pedido.Shipto.Name := 'Jocimar B. A. Huss ';
   pedido.Shipto.Address := 'R. Carapicuiba 23';
   pedido.Shipto.City := 'Mandaguari PR';
   pedido.Shipto.Country := 'Brasil';

   //Inclui um novo item ao pedido
   item := pedido.Item.Add;
   item.Title := 'Programacacao em Delphi';
   item.Quantity := 4;
   item.Price := '102,33';
   item.Note := 'Nao aborda versoes mais antigas da IDE delphi';

   //Inclui um novo item ao pedido
   item := pedido.Item.Add;
   item.Title := 'Programacacao em Java - Iniciante';
   item.Quantity := 1;
   item.Price := '140,00';
   item.Note := 'Somente o basico do java';

   Memo1.Text :=  pedido.XML;

   memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'shiporder.xml');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   pedido :IXMLShipordertype;
   i :Integer;
begin
   OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);

   //Pergunda qual arquivo xml deseja abrir
   if not OpenDialog1.Execute then
      exit;

   //Cria uma nova instância da estrutura de classes para fazermo o bind
   pedido := Loadshiporder(OpenDialog1.FileName);

   memo1.Clear;

   //Informações do pedido
   memo1.Lines.Add('[Informações do pedido]');
   memo1.Lines.Add('Código do pedido: ' + pedido.Orderid);
   memo1.Lines.Add('Pessoa do Pedido: '+pedido.Orderperson);

   memo1.Lines.Add('');
   memo1.Lines.Add('[Dados do destinatário do pedido]');

   //Infomações do destinatário do pedido
   memo1.Lines.Add('Nome: ' + pedido.Shipto.Name);
   memo1.Lines.Add('Endereço: ' + pedido.Shipto.Address);
   memo1.Lines.Add('Cidade: ' + pedido.Shipto.City);
   memo1.Lines.Add('Pais: ' + pedido.Shipto.Country);
   memo1.Lines.Add('');

   //Inclui um novo item ao pedido
   memo1.Lines.Add('[Itens do pedido]');
   for i := 0 to pedido.Item.Count - 1 do
   begin
     memo1.Lines.Add('Titulo: ' + pedido.Item[i].Title);
     memo1.Lines.Add('Quantidade: ' + IntToStr(pedido.Item[i].Quantity));
     memo1.Lines.Add('Preço: ' + pedido.Item[i].Price);
     memo1.Lines.Add('Observação: ' + pedido.Item[i].Note);

     memo1.Lines.Add('');
   end;
end;


end.

