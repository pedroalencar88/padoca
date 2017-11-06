unit LOGIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFRMLOGIN = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    LOGIN: TLabel;
    SENHA: TLabel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    QUSUARIO: TFDQuery;
    QUSUARIOCODIGO: TWideStringField;
    QUSUARIOUSUARIO: TWideStringField;
    QUSUARIOSENHA: TWideStringField;
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMLOGIN: TFRMLOGIN;

implementation

{$R *.dfm}

uses DM, PRINCIPAL;

procedure TFRMLOGIN.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('USU�RIO N�O INFORMADO');
    edit1.SetFocus;
  end;
end;

procedure TFRMLOGIN.Edit2Exit(Sender: TObject);
begin
  if Edit2.Text = '' then
  begin
    ShowMessage('SENHA N�O INFORMADA');
    edit2.SetFocus;
  end;
end;

procedure TFRMLOGIN.SpeedButton1Click(Sender: TObject);
begin
    QUSUARIO.Close;
    QUSUARIO.ParamByName('USUARIO').AsString := Edit1.Text;
    QUSUARIO.ParamByName('SENHA').AsString := Edit2.Text;
    QUSUARIO.Open;
    if QUSUARIO.IsEmpty then
    begin
      ShowMessage('USUARIO OU SENHA INV�LIDOS');
    end
    else
    begin
      dm.UsuarioLogado := QUSUARIOCODIGO.AsInteger;
      FRMLOGIN.Hide;
      FRMMENU.ShowModal;
    end;

end;

end.
