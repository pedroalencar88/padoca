unit CLIENTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFRMCLIENTE = class(TForm)
    QCLIENTE: TFDQuery;
    QCLIENTEcodigo_cliente: TFDAutoIncField;
    QCLIENTEnome: TStringField;
    QCLIENTEcpf: TStringField;
    QCLIENTEdata_nasc: TSQLTimeStampField;
    QCLIENTEfone: TStringField;
    DSCLIENTE: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCLIENTE: TFRMCLIENTE;

implementation

{$R *.dfm}

uses DM;

end.
