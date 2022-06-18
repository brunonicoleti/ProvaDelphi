unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, unLote;

type
  TfTarefa3 = class(TForm)
    grdLote: TDBGrid;
    edtTotal: TEdit;
    edtDivisoes: TEdit;
    btnObterTotal: TButton;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnObterTotalClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FLote: TLote;
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.btnObterTotalClick(Sender: TObject);
begin
  FLote.CalculaTotal;
end;

procedure TfTarefa3.Button1Click(Sender: TObject);
begin
  FLote.CalculaDivisoes;
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FLote);
  Action := caFree;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
var
  Lote: RLote;
begin
  Lote.grdLote := grdLote;
  Lote.edtTotal := edtTotal;
  Lote.edtDivisoes := edtDivisoes;

  try
    FLote := TLote.Create(Self, Lote);
  except on e: exception do
    begin
      Application.MessageBox(pChar(e.Message), 'Atenção...', MB_ICONERROR+MB_OK);
      Close;
    end;
  end;
end;

end.
