object FRMFUNCIONARIO: TFRMFUNCIONARIO
  Left = 0
  Top = 0
  Caption = 'CADASTRO DE FUNCIONARIO'
  ClientHeight = 462
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 90
    Height = 13
    Caption = 'codigo_funcionario'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 15
    Height = 13
    Caption = 'cpf'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 31
    Height = 13
    Caption = 'salario'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 134
    Height = 21
    DataField = 'codigo_funcionario'
    DataSource = DSFUNCIONARIO
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 654
    Height = 21
    DataField = 'nome'
    DataSource = DSFUNCIONARIO
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 186
    Height = 21
    DataField = 'cpf'
    DataSource = DSFUNCIONARIO
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 69
    Height = 21
    DataField = 'salario'
    DataSource = DSFUNCIONARIO
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 248
    Width = 436
    Height = 206
    DataSource = DSFUNCIONARIO
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 217
    Width = 430
    Height = 25
    DataSource = DSFUNCIONARIO
    TabOrder = 5
  end
  object QFUNCIONARIO: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO')
    Left = 88
    Top = 120
    object QFUNCIONARIOcodigo_funcionario: TFDAutoIncField
      FieldName = 'codigo_funcionario'
      Origin = 'codigo_funcionario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QFUNCIONARIOnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object QFUNCIONARIOcpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 14
    end
    object QFUNCIONARIOsalario: TBCDField
      FieldName = 'salario'
      Origin = 'salario'
      Required = True
      Precision = 4
      Size = 2
    end
  end
  object DSFUNCIONARIO: TDataSource
    DataSet = QFUNCIONARIO
    Left = 96
    Top = 128
  end
end
