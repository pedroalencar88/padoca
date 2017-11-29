unit PRINCIPAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons,
  dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TFRMMENU = class(TForm)
    MainMenu1: TMainMenu;
    PRODUTOS1: TMenuItem;
    VENDAS1: TMenuItem;
    FUNCIONARIOS1: TMenuItem;
    SAIR1: TMenuItem;
    CADASTRARFUNCIONRIO1: TMenuItem;
    CADASTRARPRODUTOS1: TMenuItem;
    REALIZARVENDA1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image2: TImage;
    SpeedButton4: TSpeedButton;
    CLIENTES1: TMenuItem;
    CADASTRARCLIENTE1: TMenuItem;
    procedure SAIR1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CADASTRARPRODUTOS1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure REALIZARVENDA1Click(Sender: TObject);
    procedure CADASTRARCLIENTE1Click(Sender: TObject);
    procedure CADASTRARFUNCIONRIO1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMMENU: TFRMMENU;

implementation

{$R *.dfm}

uses DM, LOGIN, PRODUTO, VENDA, CLIENTE, FUNCIONARIO, RELATORIO;

procedure TFRMMENU.CADASTRARCLIENTE1Click(Sender: TObject);
begin
  FRMCLIENTE.ShowModal;
end;

procedure TFRMMENU.CADASTRARFUNCIONRIO1Click(Sender: TObject);
begin
  FRMFUNCIONARIO.ShowModal;
end;

procedure TFRMMENU.CADASTRARPRODUTOS1Click(Sender: TObject);
begin
  FRMPRODUTO.ShowModal;
end;

procedure TFRMMENU.REALIZARVENDA1Click(Sender: TObject);
begin
  FRMVENDA.ShowModal;
end;

procedure TFRMMENU.SAIR1Click(Sender: TObject);
begin
  FRMLOGIN.Close;
end;

procedure TFRMMENU.SpeedButton1Click(Sender: TObject);
begin
  FRMPRODUTO.ShowModal;
end;

procedure TFRMMENU.SpeedButton2Click(Sender: TObject);
begin
  FRMVENDA := TFRMVENDA.create ( application );
  FRMVENDA.ShowModal;
end;

procedure TFRMMENU.SpeedButton4Click(Sender: TObject);
begin
  FRMRELATORIO.Show;
end;

end.
