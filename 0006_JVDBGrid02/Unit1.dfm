object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'S'
  ClientHeight = 396
  ClientWidth = 645
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
    Width = 645
    Height = 371
    Align = alClient
    Ctl3D = True
    DataSource = DataSource1
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = JvDBGrid1CellClick
    AutoAppend = False
    PostOnEnterKey = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    CanDelete = False
    EditControls = <
      item
        ControlName = 'DBComboBox1'
        FieldName = 'SEXO'
        FitCell = fcCellSize
        LeaveOnEnterKey = True
        LeaveOnUpDownKey = True
      end
      item
        ControlName = 'DBMemo1'
        FieldName = 'OBSERVACAO'
        FitCell = fcDesignSize
        LeaveOnEnterKey = True
        LeaveOnUpDownKey = True
      end
      item
        ControlName = 'DBLookupComboBox1'
        FieldName = 'TIPO'
        FitCell = fcCellSize
        LeaveOnEnterKey = True
        LeaveOnUpDownKey = True
      end
      item
        ControlName = 'DBEdit1'
        FieldName = 'NOME'
        FitCell = fcCellSize
        LeaveOnEnterKey = True
        LeaveOnUpDownKey = True
      end>
    RowsHeight = 17
    TitleRowHeight = 17
    OnColumnResized = JvDBGrid1ColumnResized
    Columns = <
      item
        Expanded = False
        FieldName = 'CHECK'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVACAO'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 645
    Height = 25
    DataSource = DataSource1
    Align = alTop
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 145
    Top = 252
    Width = 121
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 2
    Visible = False
  end
  object DBMemo1: TDBMemo
    Left = 360
    Top = 80
    Width = 198
    Height = 89
    DataField = 'OBSERVACAO'
    DataSource = DataSource1
    ScrollBars = ssVertical
    TabOrder = 3
    Visible = False
    WantTabs = True
  end
  object DBComboBox1: TDBComboBox
    Left = 145
    Top = 209
    Width = 145
    Height = 21
    DataField = 'SEXO'
    DataSource = DataSource1
    TabOrder = 4
    Visible = False
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 145
    Top = 165
    Width = 145
    Height = 21
    DataField = 'TIPO'
    DataSource = DataSource1
    KeyField = 'DESCRICAO'
    ListField = 'DESCRICAO'
    ListSource = DataSource2
    TabOrder = 5
    Visible = False
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
    object ClientDataSet1NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 80
    end
    object ClientDataSet1SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Size = 10
    end
    object ClientDataSet1TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
    end
    object ClientDataSet1OBSERVACAO: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 40
    Top = 240
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 73
    object ClientDataSet2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 88
    Top = 120
  end
end
