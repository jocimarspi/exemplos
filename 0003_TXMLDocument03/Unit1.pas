unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, XMLIntf, msxmldom, XMLDoc, adomxmldom;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    XMLDocument1: TXMLDocument;
    Memo2: TMemo;
    Button2: TButton;
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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  atualizacao :IXMLNode;
  executaveis :IXMLNode;
  executavel :IXMLNode;
  bibliotecas :IXMLNode;
  biblioteca :IXMLNode;
  observacoes :IXMLNode;

  dadosObservacoes :IDOMCDATASection;

begin
  //Formata automaticamente o XML para que a visualiza��o no TMemmo fique
  // mais amig�vel
  XMLDocument1.Options := XMLDocument1.Options + [doNodeAutoIndent];

  //Ativa o componente TXMLDocument
  XMLDocument1.Active := true;

  //Cria o n� principal do xml
  atualizacao := XMLDocument1.AddChild('atualizacao');

  //Cria o n� dos executaveis dentro do n� principal
  executaveis := atualizacao.AddChild('executaveis');

  //Adiciona um executavel ao n� de executaveis
  executavel := executaveis.AddChild('executavel');
  executavel.SetAttributeNS('versao','','1.0.3.22');

  //Observe que n�o criamos um atributo "descricao" para o n� execut�vel como
  // o atributo "vers�o", mas adicionamos a descri��o do execut�vel direto para
  //o texto do n�.
  executavel.Text := 'M�dulo gerencial';

  //Adiciona um executavel ao n� de executaveis
  executavel := executaveis.AddChild('executavel');
  executavel.SetAttributeNS('versao','','1.0.3.123');
  executavel.Text := 'Configura��es da Aplica��o';

  //Cria o n� de bibliotecas dentro do n� principal
  bibliotecas := atualizacao.AddChild('bibliotecas');

  //Adiciona uma biblioteca ao n� de biblioteca
  biblioteca := bibliotecas.AddChild('biblioteca');
  biblioteca.SetAttributeNS('versao','','2.0.0.1');
  biblioteca.Text := 'Biblioteca de fun��es';

  //Adiciona uma biblioteca ao n� de biblioteca
  biblioteca := bibliotecas.AddChild('biblioteca');
  biblioteca.SetAttributeNS('versao','','1.2.0.4');
  biblioteca.Text := 'Biblioteca com rotinas de neg�cio da aplica��o';

  observacoes := atualizacao.AddChild('observacoes');

  //Cria um Blob de observa��es no
  dadosObservacoes := XMLDocument1.DOMDocument.createCDATASection('Nesta parte pode '+
    'ser escrito um texto muito longo que possua quebras de linhas, caraceres '+
    'especiais, incluindo "<" e ">", ou at� gravar textos de outro arquivo XML, HTML ou RTF.'+
    sLineBreak+
    'O CData � como se fosse um Blog no XML');

  //Adicionamos um novo n� em nosso XML onde ele possuira as observa��es que escremos
  // para dadosObservacoes
  observacoes.DOMNode.appendChild(dadosObservacoes);

  //Mostra o arquivo xml gerado
  Memo1.Lines.Text := XMLDocument1.XML.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  no :IXMLNode;
  atualizacao :IXMLNode;
begin
   //Para recuperar as observa��es que gravamos em CData basta encontrar
   // o n� de observacoes e pegar sua propriedade Text.
   // Consideramos aqui que o XMLDocument1 j� esta ativado e com o XMLs

   atualizacao := XMLDocument1.ChildNodes.FindNode('atualizacao');
   no          := atualizacao.ChildNodes.FindNode('observacoes');
   Memo2.Text := no.Text;
end;

end.
