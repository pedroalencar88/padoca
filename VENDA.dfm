object frmVenda: TfrmVenda
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'REALIZAR VENDA'
  ClientHeight = 414
  ClientWidth = 888
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
    Width = 67
    Height = 13
    Caption = 'codigo_venda'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 53
    Height = 13
    Caption = 'funcionario'
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 31
    Height = 13
    Caption = 'cliente'
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 58
    Height = 13
    Caption = 'data_venda'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 46
    Height = 13
    Caption = 'valortotal'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 134
    Height = 21
    DataField = 'codigo_venda'
    DataSource = frmPrincipal.dsVENDA
    TabOrder = 0
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 134
    Height = 21
    DataField = 'data_venda'
    DataSource = frmPrincipal.dsVENDA
    TabOrder = 1
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 184
    Width = 69
    Height = 21
    DataField = 'valortotal'
    DataSource = frmPrincipal.dsVENDA
    TabOrder = 2
  end
  object DateTimePicker1: TDateTimePicker
    Left = 168
    Top = 144
    Width = 145
    Height = 21
    Date = 43019.831732986110000000
    Time = 43019.831732986110000000
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 256
    Width = 481
    Height = 120
    DataSource = frmPrincipal.dsVENDA
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 67
    Width = 145
    Height = 21
    KeyField = 'codigo_funcionario'
    ListField = 'nome'
    ListSource = frmPrincipal.dsFUNCIONARIO
    TabOrder = 5
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 101
    Width = 145
    Height = 21
    KeyField = 'codigo_cliente'
    ListField = 'nome'
    ListSource = frmPrincipal.dsCLIENTE
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 216
    Top = 21
    Width = 240
    Height = 25
    TabOrder = 7
  end
  object DateTimePicker2: TDateTimePicker
    Left = 344
    Top = 216
    Width = 186
    Height = 21
    Date = 43019.869974456020000000
    Time = 43019.869974456020000000
    TabOrder = 8
  end
  object MonthCalendar1: TMonthCalendar
    Left = 344
    Top = 50
    Width = 225
    Height = 160
    Date = 43019.878148194450000000
    TabOrder = 9
  end
end
