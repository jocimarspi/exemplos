unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    XMLDocument1: TXMLDocument;
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
var
  atualizacao :IXMLNode;
  executaveis :IXMLNode;
  executavel :IXMLNode;
  bibliotecas :IXMLNode;
  biblioteca :IXMLNode;
begin
  //Ativa o componente TXMLDocument
  XMLDocument1.Active := true;

  //Cria o nó principal do xml
  atualizacao := XMLDocument1.AddChild('atualizacao');

  //Cria o nó dos executaveis dentro do nó principal
  executaveis := atualizacao.AddChild('executaveis');

  //Adiciona um executavel ao nó de executaveis
  executavel := executaveis.AddChild('executavel');
  executavel.SetAttributeNS('versao','','1.0.3.22');
  executavel.SetAttributeNS('descricao','','Modulo gerencial');
  executavel.Text := 'gerencial.exe';

  //Adiciona um executavel ao nó de executaveis
  executavel := executaveis.AddChild('executavel');
  executavel.SetAttributeNS('versao','','1.0.3.123');
  executavel.SetAttributeNS('descricao','','Configuracoes da Aplicacao');
  executavel.Text := 'configuracoes.exe';

  //Cria o nó de bibliotecas dentro do nó principal
  bibliotecas := atualizacao.AddChild('bibliotecas');

  //Adiciona uma biblioteca ao nó de biblioteca
  biblioteca := bibliotecas.AddChild('biblioteca');
  biblioteca.SetAttributeNS('versao','','2.0.0.1');
  biblioteca.SetAttributeNS('descricao','','Biblioteca de funcoes');
  biblioteca.Text := 'funcoes.dll';

  //Adiciona uma biblioteca ao nó de biblioteca
  biblioteca := bibliotecas.AddChild('biblioteca');
  biblioteca.SetAttributeNS('versao','','1.2.0.4');
  biblioteca.SetAttributeNS('descricao','','Biblioteca com rotinas de negocio da aplicacao');
  biblioteca.Text := 'app.dll';

  //Mostra o arquivo xml gerado
  Memo1.Lines.Text := XMLDocument1.XML.Text;
end;

end.
