object FRMRELATORIO: TFRMRELATORIO
  Left = 0
  Top = 0
  Caption = 'CONSULTA DE VENDAS'
  ClientHeight = 389
  ClientWidth = 617
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
    Left = 256
    Top = 13
    Width = 59
    Height = 13
    Caption = 'DATA FINAL'
  end
  object Label2: TLabel
    Left = 24
    Top = 13
    Width = 68
    Height = 13
    Caption = 'DATA INICIAL'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 72
    Width = 561
    Height = 225
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DateTimePicker1: TDateTimePicker
    Left = 24
    Top = 32
    Width = 186
    Height = 21
    Date = 43068.716036342590000000
    Time = 43068.716036342590000000
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 256
    Top = 32
    Width = 186
    Height = 21
    Date = 43068.716036342590000000
    Time = 43068.716036342590000000
    TabOrder = 2
  end
  object Button1: TButton
    Left = 510
    Top = 28
    Width = 75
    Height = 25
    Caption = 'PESQUISAR'
    TabOrder = 3
    OnClick = Button1Click
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT'#9'VENDA.codigo_venda, '
      #9#9'VENDA.data_venda,'
      #9#9'VENDA.funcionario,'
      #9#9'FUNCIONARIO.nome, '
      #9#9'VENDA.cliente,'
      #9#9'CLIENTE.nome,'#9#9#9#9
      #9#9'ITEM_VENDA.nritem,'
      #9#9'ITEM_VENDA.produto,'
      #9#9'PRODUTO.descricao,'#9#9
      #9#9'PRODUTO.preco,'
      #9#9'ITEM_VENDA.qtde,'
      #9#9'VENDA.valortotal'
      #9#9'FROM VENDA'
      'LEFT JOIN ITEM_VENDA ON ITEM_VENDA.venda = VENDA.codigo_venda'
      
        'LEFT JOIN FUNCIONARIO ON FUNCIONARIO.codigo_funcionario = VENDA.' +
        'funcionario'
      'LEFT JOIN PRODUTO ON PRODUTO.codigo_produto = ITEM_VENDA.produto'
      'LEFT JOIN CLIENTE ON CLIENTE.codigo_cliente = VENDA.cliente'
      'ORDER BY VENDA.codigo_venda, ITEM_VENDA.nritem')
    Left = 392
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 480
    Top = 320
  end
end
