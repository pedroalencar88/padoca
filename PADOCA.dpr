program PADOCA;

uses
  Vcl.Forms,
  MENUPRINCIPAL in 'MENUPRINCIPAL.pas' {frmPrincipal},
  CLIENTE in 'CLIENTE.pas' {frmCliente},
  PRODUTO in 'PRODUTO.pas' {frmProduto},
  VENDA in 'VENDA.pas' {frmVenda},
  FUNCIONARIO in 'FUNCIONARIO.pas' {frmFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.CreateForm(TfrmVenda, frmVenda);
  Application.CreateForm(TfrmFuncionario, frmFuncionario);
  Application.Run;
end.
