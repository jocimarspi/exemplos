object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 276
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 14
    Width = 37
    Height = 13
    Caption = 'Estilos: '
  end
  object ComboBox1: TComboBox
    Left = 48
    Top = 8
    Width = 241
    Height = 21
    TabOrder = 0
    Text = 'ComboBox1'
    OnSelect = ComboBox1Select
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 80
    Width = 105
    Height = 81
    Caption = 'GroupBox1'
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 3
      Top = 24
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 3
      Top = 41
      Width = 97
      Height = 17
      Caption = 'CheckBox2'
      TabOrder = 1
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 119
    Top = 80
    Width = 114
    Height = 81
    Caption = 'RadioGroup1'
    Items.Strings = (
      'Op'#231#227'o 1'
      'Op'#231#227'o 2'
      'Op'#231#227'o 3')
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 167
    Width = 247
    Height = 100
    ActivePage = TabSheet1
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Button1: TButton
        Left = 3
        Top = 31
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
      end
      object ProgressBar1: TProgressBar
        Left = 3
        Top = 3
        Width = 150
        Height = 17
        Position = 50
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 4
    end
  end
end
