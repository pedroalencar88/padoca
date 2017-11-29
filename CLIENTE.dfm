object FRMCLIENTE: TFRMCLIENTE
  Left = 0
  Top = 0
  Caption = 'CADASTRO DE CLIENTE'
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
    Width = 68
    Height = 13
    Caption = 'codigo_cliente'
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
    Width = 50
    Height = 13
    Caption = 'data_nasc'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 22
    Height = 13
    Caption = 'fone'
    FocusControl = DBEdit5
  end
  object Image1: TImage
    Left = 339
    Top = 8
    Width = 105
    Height = 105
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 134
    Height = 21
    DataField = 'codigo_cliente'
    DataSource = DSCLIENTE
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 306
    Height = 21
    DataField = 'nome'
    DataSource = DSCLIENTE
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 186
    Height = 21
    DataField = 'cpf'
    DataSource = DSCLIENTE
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 186
    Height = 21
    DataField = 'data_nasc'
    DataSource = DSCLIENTE
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 184
    Width = 186
    Height = 21
    DataField = 'fone'
    DataSource = DSCLIENTE
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 248
    Width = 436
    Height = 206
    DataSource = DSCLIENTE
    TabOrder = 5
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
    DataSource = DSCLIENTE
    TabOrder = 6
  end
  object QCLIENTE: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 64
    Top = 104
    object QCLIENTEcodigo_cliente: TFDAutoIncField
      FieldName = 'codigo_cliente'
      Origin = 'codigo_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QCLIENTEnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object QCLIENTEcpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 14
    end
    object QCLIENTEdata_nasc: TSQLTimeStampField
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      Required = True
    end
    object QCLIENTEfone: TStringField
      FieldName = 'fone'
      Origin = 'fone'
      Required = True
      Size = 25
    end
  end
  object DSCLIENTE: TDataSource
    DataSet = QCLIENTE
    Left = 72
    Top = 112
  end
end
