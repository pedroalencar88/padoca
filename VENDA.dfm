object FRMVENDA: TFRMVENDA
  Left = 0
  Top = 0
  Caption = 'CADASTRO DE VENDA'
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
    Left = 232
    Top = 248
    Width = 67
    Height = 13
    Caption = 'codigo_venda'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 232
    Top = 288
    Width = 53
    Height = 13
    Caption = 'funcionario'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 232
    Top = 328
    Width = 31
    Height = 13
    Caption = 'cliente'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 232
    Top = 368
    Width = 58
    Height = 13
    Caption = 'data_venda'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 232
    Top = 408
    Width = 46
    Height = 13
    Caption = 'valortotal'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 232
    Top = 264
    Width = 134
    Height = 21
    DataField = 'codigo_venda'
    DataSource = DSVENDA
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 232
    Top = 304
    Width = 134
    Height = 21
    DataField = 'funcionario'
    DataSource = DSVENDA
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 232
    Top = 344
    Width = 134
    Height = 21
    DataField = 'cliente'
    DataSource = DSVENDA
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 232
    Top = 384
    Width = 446
    Height = 21
    DataField = 'data_venda'
    DataSource = DSVENDA
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 232
    Top = 424
    Width = 69
    Height = 21
    DataField = 'valortotal'
    DataSource = DSVENDA
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 242
    Width = 218
    Height = 212
    DataSource = DSVENDA
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object QVENDA: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM VENDA')
    Left = 296
    Top = 376
    object QVENDAcodigo_venda: TFDAutoIncField
      FieldName = 'codigo_venda'
      Origin = 'codigo_venda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QVENDAfuncionario: TIntegerField
      FieldName = 'funcionario'
      Origin = 'funcionario'
      Required = True
    end
    object QVENDAcliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'cliente'
      Required = True
    end
    object QVENDAdata_venda: TSQLTimeStampField
      FieldName = 'data_venda'
      Origin = 'data_venda'
      Required = True
    end
    object QVENDAvalortotal: TBCDField
      FieldName = 'valortotal'
      Origin = 'valortotal'
      Required = True
      Precision = 4
      Size = 2
    end
  end
  object DSVENDA: TDataSource
    DataSet = QVENDA
    Left = 304
    Top = 384
  end
end