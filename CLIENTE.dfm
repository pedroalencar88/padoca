object frmCliente: TfrmCliente
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'CADASTRO CLIENTE'
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
  object Label2: TLabel
    Left = 24
    Top = 232
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 272
    Width = 15
    Height = 13
    Caption = 'cpf'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 312
    Width = 50
    Height = 13
    Caption = 'data_nasc'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 352
    Width = 22
    Height = 13
    Caption = 'fone'
    FocusControl = DBEdit5
  end
  object Label1: TLabel
    Left = 24
    Top = 192
    Width = 68
    Height = 13
    Caption = 'codigo_cliente'
    FocusControl = DBEdit1
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 64
    Width = 856
    Height = 120
    DataSource = frmPrincipal.dsCLIENTE
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 24
    Width = 808
    Height = 25
    DataSource = frmPrincipal.dsCLIENTE
    VisibleButtons = [nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 208
    Width = 134
    Height = 21
    DataField = 'codigo_cliente'
    DataSource = frmPrincipal.dsCLIENTE
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 248
    Width = 654
    Height = 21
    DataField = 'nome'
    DataSource = frmPrincipal.dsCLIENTE
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 288
    Width = 186
    Height = 21
    DataField = 'cpf'
    DataSource = frmPrincipal.dsCLIENTE
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 328
    Width = 446
    Height = 21
    DataField = 'data_nasc'
    DataSource = frmPrincipal.dsCLIENTE
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 368
    Width = 329
    Height = 21
    DataField = 'fone'
    DataSource = frmPrincipal.dsCLIENTE
    TabOrder = 6
  end
end
