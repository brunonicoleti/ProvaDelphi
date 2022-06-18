unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uspQuery, Vcl.StdCtrls,
  FireDAC.Phys.MySQLDef, FireDAC.Phys, FireDAC.Phys.MySQL;

type
  TfTarefa1 = class(TForm)
    mmoColunas: TMemo;
    mmoTabelas: TMemo;
    mmoCondicoes: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mmoSQLGerado: TMemo;
    btnGerarSQL: TButton;
    Label4: TLabel;
    spQuery1: TspQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    procedure btnGerarSQLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.btnGerarSQLClick(Sender: TObject);
begin
  spQuery1.spColunas.AddStrings(mmoColunas.Lines);
  spQuery1.spTabelas.AddStrings(mmoTabelas.Lines);
  spQuery1.spCondicoes.AddStrings(mmoCondicoes.Lines);
  spQuery1.GerarSQL;
  mmoSQLGerado.Lines.AddStrings(spQuery1.SQL);
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
