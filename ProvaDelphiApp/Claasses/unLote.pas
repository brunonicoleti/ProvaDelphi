unit unLote;

interface

uses
  System.Classes, System.SysUtils, Data.DB, DataSnap.DBClient, Vcl.StdCtrls,
  Vcl.DBGrids, unErrors, Vcl.Forms, Winapi.Windows;

type
  RLote = record
    edtTotal: TEdit;
    edtDivisoes: TEdit;
    grdLote: TDBGrid;
  end;

  TLote = class(TComponent)

  private
    FcdsDados: TClientDataSet;
    FdsrDados: TDataSource;
    FedtTotal: TEdit;
    FedtDivisoes: TEdit;
    FgrdLote: TDBGrid;

    FcdsDadosidProjeto: TIntegerField;
    FcdsDadosNomeProjeto: TStringField;
    FcdsDadosValor: TCurrencyField;

    procedure PopularDados;
    procedure CriarObjetos;
    procedure CheckComponentes(ALote: RLote);
  protected

  public
    constructor Create(AOwner: TComponent; ALote: RLote); reintroduce; overload;
    destructor Destroy; override;
    procedure CalculaTotal;
    procedure CalculaDivisoes;

  published

  end;
implementation

{ TLote }

procedure TLote.CalculaTotal;
var
  Total: Currency;
begin
  try
    FcdsDados.DisableControls;
    FcdsDados.First;
    Total := 0;
    while not FcdsDados.Eof do
    begin
      Total := Total + FcdsDadosValor.AsCurrency;
      FcdsDados.Next;
    end;
    FedtTotal.Text := CurrToStr(Total);
  finally
    FcdsDados.EnableControls;
  end;
end;

procedure TLote.CheckComponentes(ALote: RLote);
begin
  if (not Assigned(ALote.grdLote)) then
    raise MissingGridError.Create('Grid Lote não encontrado.');
  if (not Assigned(ALote.edtTotal)) then
    raise MissingEditError.Create('Edit Total não encontrado.');
  if (not Assigned(ALote.edtDivisoes)) then
    raise MissingEditError.Create('Edit Diviões não encontrado.');
end;

procedure TLote.CalculaDivisoes;
var
  Anterior, Atual, Total: Currency;
begin
  try
    FcdsDados.DisableControls;
    FcdsDados.First;
    Anterior := 0;
    Total := 0;
    while not FcdsDados.Eof do
    begin
      Atual := FcdsDadosValor.AsCurrency;
      if Anterior <> 0 then
        Total := Total + (Atual / Anterior);
      Anterior := Atual;
      FcdsDados.Next;
    end;
    FedtDivisoes.Text := CurrToStr(Total);
  finally
    FcdsDados.EnableControls;
  end;
end;

constructor TLote.Create(AOwner: TComponent; ALote: RLote);
begin
  inherited Create(AOwner);

  CheckComponentes(ALote);

  FgrdLote := ALote.grdLote;
  FedtTotal := ALote.edtTotal;
  FedtDivisoes := ALote.edtDivisoes;

  CriarObjetos;
  PopularDados;
end;

procedure TLote.CriarObjetos;
begin
  FcdsDados := TClientDataSet.Create(Owner);
  FdsrDados := TDataSource.Create(Self);

  FcdsDadosidProjeto := TIntegerField.Create(FcdsDados);
  FcdsDadosidProjeto.Name := 'FcdsDadosidProjeto';
  FcdsDadosidProjeto.FieldName := 'idProjeto';
  FcdsDadosidProjeto.Index := FcdsDados.FieldCount;
  FcdsDadosidProjeto.DataSet := FcdsDados;

  FcdsDadosNomeProjeto := TStringField.Create(FcdsDados);
  FcdsDadosNomeProjeto.Name := 'FcdsDadosNomeProjeto';
  FcdsDadosNomeProjeto.FieldName := 'NomeProjeto';
  FcdsDadosNomeProjeto.Index := FcdsDados.FieldCount;
  FcdsDadosNomeProjeto.DataSet := FcdsDados;

  FcdsDadosValor := TCurrencyField.Create(FcdsDados);
  FcdsDadosValor.Name := 'FcdsDadosValor';
  FcdsDadosValor.FieldName := 'Valor';
  FcdsDadosValor.Index := FcdsDados.FieldCount;
  FcdsDadosValor.DataSet := FcdsDados;

  FcdsDados.CreateDataSet;
  FdsrDados.DataSet := FcdsDados;
  FgrdLote.DataSource := FdsrDados;
end;

destructor TLote.Destroy;
begin
  FreeAndNil(FdsrDados);
  FreeAndNil(FcdsDados);
  inherited;
end;

procedure TLote.PopularDados;
var
  I: Integer;
  vlr: Integer;
begin
  for I := 0 to 9 do
  begin
    vlr := Random(100);
    FcdsDados.Append;
    FcdsDadosidProjeto.AsInteger := vlr;
    FcdsDadosNomeProjeto.AsString := 'Projeto ' + IntToStr(vlr);
    FcdsDadosValor.AsCurrency := vlr;
    FcdsDados.Post;
  end;
end;

end.
