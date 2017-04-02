unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.StdCtrls,
  Xml.XMLDoc, Xml.Win.msxmldom, Xml.omnixmldom, Xml.adomxmldom;

type
  TForm1 = class(TForm)
    XMLDocument1: TXMLDocument;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var aplicacao :IXMLNode;

    executaveis :IXMLNode;
    executavel :IXMLNode;

    bibliotecas :IXMLNode;
    biblioteca :IXMLNode;

    versao :IXMLNode;
    descricao :IXMLNode;
    infNo :IXMLNodeList;

    i :Integer;
begin
   Memo1.Clear;

   //Ativa o XMLDocument para podemos ler as informações do xml
   XMLDocument1.Active := true;
   //Busco o nó principal do xml
   aplicacao := XMLDocument1.DocumentElement;

   //Busca o nó onde está a lista de executáveis
   executaveis := aplicacao.ChildNodes.FindNode('executaveis');

   //Busca o nó onde está a lista de bibliotecas
   bibliotecas := aplicacao.ChildNodes.FindNode('bibliotecas');

   memo1.Lines.Add('[EXECUTAVEIS]');
   memo1.Lines.Add('');

   //Percorre todos os executáveis da lista
   for i := 0 to executaveis.ChildNodes.Count - 1 do
   begin
      executavel := executaveis.ChildNodes[i];
      //recupera os atributos do nó executavel
      infNo      := executavel.AttributeNodes;

      memo1.Lines.Add(executavel.Text);
      memo1.Lines.Add('-------------------------');
      memo1.Lines.Add('versão: '+infNo.FindNode('versao').Text);
      memo1.Lines.Add('descrição: '+infNo.FindNode('descricao').Text);
      memo1.Lines.Add('');
   end;

   memo1.Lines.Add('');
   memo1.Lines.Add('[BIBLIOTECAS]');
   memo1.Lines.Add('');

   //Percorre todas as bibliotecas
   for i := 0 to bibliotecas.ChildNodes.Count - 1 do
   begin
      biblioteca := bibliotecas.ChildNodes[i];

      //recupera os atributos do nó biblioteca
      infNo      := biblioteca.AttributeNodes;

      memo1.Lines.Add(biblioteca.Text);
      memo1.Lines.Add('-------------------------');
      memo1.Lines.Add('versão: '+infNo.FindNode('versao').Text);
      memo1.Lines.Add('descrição: '+infNo.FindNode('descricao').Text);
      memo1.Lines.Add('');
   end;
end;

end.
