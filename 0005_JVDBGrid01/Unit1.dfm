object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 489
  ClientWidth = 397
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
    Top = 25
    Width = 397
    Height = 464
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = JvDBGrid1CellClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CHECK'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 341
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 397
    Height = 25
    DataSource = DataSource1
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 24
    ExplicitTop = 41
    ExplicitWidth = 240
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = ClientDataSet1AfterInsert
    Left = 40
    Top = 193
    object ClientDataSet1CHECK: TBooleanField
      DisplayLabel = 'Sel.'
      FieldName = 'CHECK'
    end
    object ClientDataSet1DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 80
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 40
    Top = 240
  end
end
