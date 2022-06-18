unit unThContador;

interface

{$M+}

uses
  System.Classes, Vcl.ComCtrls;

type
  TThContador = class(TThread)

  private
    FProgressBar: TProgressBar;
    FIntervalo: integer;

    FPosition: integer;
    procedure Atualizar;
  protected
    procedure Execute; override;

  public
    constructor Create(AIntervalo: Integer; AProgressBar: TProgressBar); overload;
    destructor Destroy; override;
  published

    class procedure Contar(AIntervalo: Integer; AProgressBar: TProgressBar; var AContador: TThContador);
  end;

implementation

{ TThContador }

procedure TThContador.Atualizar;
begin
  FProgressBar.Position := FPosition;
end;

class procedure TThContador.Contar(AIntervalo: Integer;
  AProgressBar: TProgressBar; var AContador: TThContador);
begin
  if (Assigned(AContador)) then
    AContador.Terminate;

  AContador := TThContador.Create(AIntervalo, AProgressBar);

  AContador.Start;
end;

constructor TThContador.Create(AIntervalo: Integer; AProgressBar: TProgressBar);
begin
  inherited Create(true);
  FreeOnTerminate := true;
  FIntervalo := AIntervalo;
  FProgressBar := AProgressBar;
end;

destructor TThContador.Destroy;
begin
  WaitFor;
  inherited;
end;

procedure TThContador.Execute;
var
  i: Integer;
begin
  inherited;
  FPosition := 0;

  for i := 0 to 100 do
  begin
    Sleep(FIntervalo);
    Synchronize(Atualizar);
    inc(FPosition);
    if (Terminated) then
      Break;
  end;
end;

end.
