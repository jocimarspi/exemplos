object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 308
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 553
    Height = 265
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 279
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object XMLDocument1: TXMLDocument
    ParseOptions = [poValidateOnParse]
    XML.Strings = (
      '<atualizacao>'
      '  <executaveis>'
      
        '    <executavel versao='#39'1.0.3.22'#39' descricao='#39'Modulo gerencial'#39'>g' +
        'erencial.exe</executavel>'
      
        '    <executavel versao='#39'1.0.3.123'#39' descricao='#39'Configuracoes da A' +
        'plicacao'#39'>configuracoes.exe</executavel>'
      '  </executaveis>'
      '  <bibliotecas>'
      
        '    <biblioteca versao='#39'2.0.0.1'#39' descricao='#39'Biblioteca de funcoe' +
        's'#39'>funcoes.dll</biblioteca>'
      
        '    <biblioteca versao='#39'1.2.0.4'#39' descricao='#39'Biblioteca com rotin' +
        'as de negocio da aplicacao'#39'>app.dll</biblioteca>'
      '  </bibliotecas>'
      '</atualizacao>')
    Left = 448
    Top = 64
    DOMVendorDesc = 'MSXML'
  end
end
