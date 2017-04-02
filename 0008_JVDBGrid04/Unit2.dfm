object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 300
  ClientWidth = 507
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
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 0
    Width = 507
    Height = 300
    Align = alClient
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    ShowCellHint = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 257
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end>
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 40
    object ClientDataSet1CODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object ClientDataSet1NOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object ClientDataSet1TELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 368
    Top = 96
  end
end
