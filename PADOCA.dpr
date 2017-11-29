program PADOCA;

uses
  Vcl.Forms,
  LOGIN in 'LOGIN.pas' {FRMLOGIN},
  DM in 'DM.pas' {DataModule1: TDataModule},
  PRINCIPAL in 'PRINCIPAL.pas' {FRMMENU},
  PRODUTO in 'PRODUTO.pas' {FRMPRODUTO},
  VENDA in 'VENDA.pas' {FRMVENDA},
  CLIENTE in 'CLIENTE.pas' {FRMCLIENTE},
  FUNCIONARIO in 'FUNCIONARIO.pas' {FRMFUNCIONARIO},
  RELATORIO in 'RELATORIO.pas' {FRMRELATORIO};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMLOGIN, FRMLOGIN);
  Application.CreateForm(TFRMMENU, FRMMENU);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFRMPRODUTO, FRMPRODUTO);
  Application.CreateForm(TFRMVENDA, FRMVENDA);
  Application.CreateForm(TFRMCLIENTE, FRMCLIENTE);
  Application.CreateForm(TFRMFUNCIONARIO, FRMFUNCIONARIO);
  Application.CreateForm(TFRMRELATORIO, FRMRELATORIO);
  Application.Run;
end.
