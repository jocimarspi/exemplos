object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 392
  ClientWidth = 632
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
    Top = 16
    Width = 305
    Height = 329
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object Button1: TButton
    Left = 8
    Top = 359
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 328
    Top = 16
    Width = 297
    Height = 329
    Lines.Strings = (
      'Memo2')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button2: TButton
    Left = 89
    Top = 359
    Width = 128
    Height = 25
    Caption = 'Carregar Obser'#231#245'es'
    TabOrder = 3
    OnClick = Button2Click
  end
  object XMLDocument1: TXMLDocument
    Left = 64
    Top = 40
    DOMVendorDesc = 'MSXML'
  end
end
