object frmFuncionario: TfrmFuncionario
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'CADASTRO FUNCION'#193'RIO'
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
    Top = 176
    Width = 90
    Height = 13
    Caption = 'codigo_funcionario'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 216
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 256
    Width = 15
    Height = 13
    Caption = 'cpf'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 296
    Width = 31
    Height = 13
    Caption = 'salario'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 336
    Width = 38
    Height = 13
    Caption = 'gerente'
    FocusControl = DBEdit5
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 650
    Height = 25
    DataSource = frmPrincipal.dsFUNCIONARIO
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 654
    Height = 120
    DataSource = frmPrincipal.dsFUNCIONARIO
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 192
    Width = 134
    Height = 21
    DataField = 'codigo_funcionario'
    DataSource = frmPrincipal.dsFUNCIONARIO
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 232
    Width = 654
    Height = 21
    DataField = 'nome'
    DataSource = frmPrincipal.dsFUNCIONARIO
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 272
    Width = 186
    Height = 21
    DataField = 'cpf'
    DataSource = frmPrincipal.dsFUNCIONARIO
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 312
    Width = 69
    Height = 21
    DataField = 'salario'
    DataSource = frmPrincipal.dsFUNCIONARIO
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 352
    Width = 134
    Height = 21
    DataField = 'gerente'
    DataSource = frmPrincipal.dsFUNCIONARIO
    TabOrder = 6
  end
end
