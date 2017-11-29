unit VENDA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, Vcl.Buttons, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls;

type
  TFRMVENDA = class(TForm)
    Label6: TLabel;
    QVALIDACPF: TFDQuery;
    EDTCPF: TMaskEdit;
    Button1: TButton;
    Label7: TLabel;
    QVALIDACPFCPF: TStringField;
    QVALIDACPFnome: TStringField;
    EDTNOME: TEdit;
    qproduto: TFDQuery;
    dsproduto: TDataSource;
    Label8: TLabel;
    qprodutoDESCRICAO: TStringField;
    EDTCODPROD: TEdit;
    EDTDESCPROD: TEdit;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    EDTQTDEPROD: TEdit;
    Label10: TLabel;
    EDTVRUNIT: TEdit;
    Label11: TLabel;
    EDTVRTOTAL: TEdit;
    QBUSCAPRODUTO: TFDQuery;
    QBUSCAPRODUTOcodigo_produto: TFDAutoIncField;
    QBUSCAPRODUTOdescricao: TStringField;
    QBUSCAPRODUTOpreco: TBCDField;
    QBUSCAPRODUTOqtde: TIntegerField;
    qprodutocodigo_produto: TFDAutoIncField;
    qprodutopreco: TBCDField;
    qprodutoqtde: TIntegerField;
    dsbuscaproduto: TDataSource;
    QTEMPPROD: TFDMemTable;
    DSTEMPPROD: TDataSource;
    DBGrid1: TDBGrid;
    QTEMPPRODcodigo_produto: TIntegerField;
    QTEMPPRODdescricao: TStringField;
    QTEMPPRODpreco: TFloatField;
    QTEMPPRODqtde: TFloatField;
    QTEMPPRODtotal: TFloatField;
    SpeedButton2: TSpeedButton;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GRAVARVENDA: TFDQuery;
    QVALIDACPFcodigo_cliente: TFDAutoIncField;
    QVALIDACPFdata_nasc: TSQLTimeStampField;
    QVALIDACPFfone: TStringField;
    GRAVARITEM_VENDA: TFDQuery;
    procedure EDTCPFExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EDTCODPRODExit(Sender: TObject);
    procedure EDTQTDEPRODExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMVENDA: TFRMVENDA;

implementation

{$R *.dfm}

uses DM, CLIENTE, FUNCIONARIO, LOGIN, PRINCIPAL, PRODUTO;

procedure TFRMVENDA.BitBtn1Click(Sender: TObject);
begin
  FRMCLIENTE.ShowModal;
end;

procedure TFRMVENDA.BitBtn2Click(Sender: TObject);
VAR
QTDEITEM : Integer;
VALORTOTAL : Extended;
CONT : Integer;
begin
  VALORTOTAL := 0;
  CONT := 0;
  QTDEITEM := QTEMPPROD.RecordCount;
  GRAVARVENDA.ParamByName('FUNCIONARIO').AsInteger := UsuarioLogado;
  GRAVARVENDA.ParamByName('CLIENTE').AsInteger     := QVALIDACPFcodigo_cliente.AsInteger;
  if QTDEITEM > 1 then
  begin
    QTEMPPROD.First;
    while NOT QTEMPPROD.EOF do
    BEGIN
      VALORTOTAL := VALORTOTAL + QTEMPPRODtotal.AsFloat;
      QTEMPPROD.Next;
    END;
    GRAVARVENDA.ParamByName('VALORTOTAL').AsFloat    := VALORTOTAL;
  end
  else
  begin
    GRAVARVENDA.ParamByName('VALORTOTAL').AsFloat    := QTEMPPRODtotal.AsFloat;
  end;

  try
    GRAVARVENDA.ExecSQL;
    ShowMessage('REGISTRO SALVO COM SUCESSO!!');

    if QTDEITEM > 1 then
    BEGIN
    QTEMPPROD.First;
    CONT := 1;
    while NOT QTEMPPROD.EOF do
    BEGIN
      GRAVARITEM_VENDA.ParamByName('NRITEM').AsInteger  := CONT;
      GRAVARITEM_VENDA.ParamByName('PRODUTO').AsInteger := QTEMPPRODcodigo_produto.AsInteger;
      GRAVARITEM_VENDA.ParamByName('QTDE').AsInteger    := QTEMPPRODqtde.AsInteger;
      GRAVARITEM_VENDA.ExecSQL;
      CONT := CONT + 1;
      QTEMPPROD.Next;
    END;



    END
    ELSE
    BEGIN
      GRAVARITEM_VENDA.ParamByName('NRITEM').AsInteger  := 1;
      GRAVARITEM_VENDA.ParamByName('PRODUTO').AsInteger := QTEMPPRODcodigo_produto.AsInteger;
      GRAVARITEM_VENDA.ParamByName('QTDE').AsInteger    := QTEMPPRODqtde.AsInteger;
      GRAVARITEM_VENDA.ExecSQL;
    END;



  except
  On E:Exception do
    ShowMessage('Ocorreu um erro ao incluir a venda ' + E.Message);
  end;

end;

procedure TFRMVENDA.BitBtn3Click(Sender: TObject);
begin
  FRMPRODUTO.ShowModal;
end;

procedure TFRMVENDA.Button1Click(Sender: TObject);
begin
  EDTCPF.Text := '888.888.888-88';
  EDTcpf.SetFocus;
  EDTNOME.SetFocus;
end;

procedure TFRMVENDA.EDTCODPRODExit(Sender: TObject);
begin

  QBUSCAPRODUTO.Close;
  QBUSCAPRODUTO.ParamByName('CODIGO_PRODUTO').AsString := EDTCODPROD.Text;
  QBUSCAPRODUTO.Open;
  if QBUSCAPRODUTO.IsEmpty then
  BEGIN
    ShowMessage('PRODUTO N�O CADASTRADO');
    //EDTNOME.Clear;
    //EDTCPF.SetFocus;
  END
  ELSE
  BEGIN
    EDTDESCPROD.Text := QBUSCAPRODUTOdescricao.AsString;
    EDTVRUNIT.Text := QBUSCAPRODUTOpreco.AsString;
  END;


end;

procedure TFRMVENDA.EDTCPFExit(Sender: TObject);
begin
  QVALIDACPF.Close;
  QVALIDACPF.ParamByName('CPF').AsString := EDTCPF.Text;
  QVALIDACPF.Open;
  if QVALIDACPF.IsEmpty then
  BEGIN
    ShowMessage('CLIENTE N�O CADASTRADO');
    EDTNOME.Clear;
    //EDTCPF.SetFocus;
  END
  ELSE
  BEGIN
    EDTNOME.Text := QVALIDACPFnome.AsString;
  END;

end;

procedure TFRMVENDA.EDTQTDEPRODExit(Sender: TObject);
VAR
  qtde : integer;
begin
  qtde := StrToInt(EDTQTDEPROD.Text);
  EDTVRTOTAL.Text := IntToStr(qtde*QBUSCAPRODUTOpreco.AsInteger);
end;

procedure TFRMVENDA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      FRMVENDA.Release;
//      FRMVENDA := nil;
end;

procedure TFRMVENDA.SpeedButton2Click(Sender: TObject);
begin
    QTEMPPROD.Append;
    QTEMPPRODcodigo_produto.AsInteger := QBUSCAPRODUTOcodigo_produto.AsInteger;
    QTEMPPRODdescricao.AsString       := QBUSCAPRODUTOdescricao.AsString;
    QTEMPPRODqtde.AsInteger           := StrToInt(EDTQTDEPROD.Text);
    QTEMPPRODpreco.AsFloat            := QBUSCAPRODUTOpreco.AsFloat;
    QTEMPPRODtotal.AsFloat            := StrToFloat(EDTVRTOTAL.Text);
    QTEMPPROD.Post;
    EDTCODPROD.Clear;
    EDTDESCPROD.Clear;
    EDTVRUNIT.Clear;
    EDTVRTOTAL.Clear;
    EDTQTDEPROD.Clear;

end;

end.
