object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 304
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    635
    304)
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 609
    Height = 257
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitWidth = 521
  end
  object Button1: TButton
    Left = 8
    Top = 271
    Width = 113
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Criar Novo XML'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 127
    Top = 271
    Width = 113
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Carregar um XML'
    TabOrder = 2
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivos XML|*.xml'
    Left = 344
    Top = 256
  end
  object XMLDocument1: TXMLDocument
    Options = [doNodeAutoIndent, doAttrNull, doAutoPrefix, doNamespaceDecl]
    Left = 40
    Top = 144
    DOMVendorDesc = 'MSXML'
  end
end
