unit MENUPRINCIPAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    FDConnection1: TFDConnection;
    CLIENTE: TFDQuery;
    CLIENTEcodigo_cliente: TFDAutoIncField;
    CLIENTEnome: TStringField;
    CLIENTEcpf: TStringField;
    CLIENTEdata_nasc: TSQLTimeStampField;
    CLIENTEfone: TStringField;
    FUNCIONARIO: TFDQuery;
    GERENTE: TFDQuery;
    VENDA: TFDQuery;
    PRODUTO: TFDQuery;
    ITEM_VENDA: TFDQuery;
    MainMenu1: TMainMenu;
    Image1: TImage;
    Cadastros1: TMenuItem;
    C1: TMenuItem;
    FUNCIONRIOS1: TMenuItem;
    SAIR1: TMenuItem;
    REALIZARVENDA1: TMenuItem;
    CADASTRODEPRODUTOS1: TMenuItem;
    CADASTRODEFUNCIONRIOS1: TMenuItem;
    CADASTRARCLIENTE1: TMenuItem;
    FUNCIONARIOcodigo_funcionario: TFDAutoIncField;
    FUNCIONARIOnome: TStringField;
    FUNCIONARIOcpf: TStringField;
    FUNCIONARIOsalario: TBCDField;
    FUNCIONARIOgerente: TIntegerField;
    GERENTEcodigo_gerente: TFDAutoIncField;
    GERENTEnome: TStringField;
    GERENTEcpf: TStringField;
    GERENTEsalario: TBCDField;
    VENDAcodigo_venda: TFDAutoIncField;
    VENDAfuncionario: TIntegerField;
    VENDAcliente: TIntegerField;
    VENDAdata_venda: TSQLTimeStampField;
    VENDAvalortotal: TBCDField;
    PRODUTOcodigo_produto: TFDAutoIncField;
    PRODUTOdescricao: TStringField;
    PRODUTOpreco: TBCDField;
    PRODUTOqtde: TIntegerField;
    ITEM_VENDAvenda: TIntegerField;
    ITEM_VENDAnritem: TIntegerField;
    ITEM_VENDAproduto: TIntegerField;
    ITEM_VENDAqtde: TIntegerField;
    dsCLIENTE: TDataSource;
    dsFUNCIONARIO: TDataSource;
    dsGERENTE: TDataSource;
    dsVENDA: TDataSource;
    dsPRODUTO: TDataSource;
    dsITEM_VENDA: TDataSource;
    procedure CADASTRARCLIENTE1Click(Sender: TObject);
    procedure SAIR1Click(Sender: TObject);
    procedure CADASTRODEPRODUTOS1Click(Sender: TObject);
    procedure REALIZARVENDA1Click(Sender: TObject);
    procedure CADASTRODEFUNCIONRIOS1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses CLIENTE, FUNCIONARIO, PRODUTO, VENDA;

procedure TfrmPrincipal.CADASTRARCLIENTE1Click(Sender: TObject);
begin
    frmCliente.Show;
end;

procedure TfrmPrincipal.CADASTRODEFUNCIONRIOS1Click(Sender: TObject);
begin
    frmFuncionario.Show;
end;

procedure TfrmPrincipal.CADASTRODEPRODUTOS1Click(Sender: TObject);
begin
      frmProduto.Show;
end;

procedure TfrmPrincipal.REALIZARVENDA1Click(Sender: TObject);
begin
    frmVenda.Show;
end;

procedure TfrmPrincipal.SAIR1Click(Sender: TObject);
begin
    Close;
end;

end.
