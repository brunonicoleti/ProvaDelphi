unit uspQuery;

interface

uses
  System.Classes, System.SysUtils, FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)

  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;

  protected

  public
    constructor Create(AOwner: TComponent); override;
    procedure GerarSQL;
  published

    property spCondicoes: TStringList read FspCondicoes write FspCondicoes;
    property spColunas: TStringList read FspColunas write FspColunas;
    property spTabelas: TStringList read FspTabelas write FspTabelas;
  end;

implementation

{ TspQuery }

constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FspCondicoes := TStringList.Create;
  FspColunas := TStringList.Create;
  FspTabelas := TStringList.Create;
end;

procedure TspQuery.GerarSQL;
begin

  Self.SQL.Add('Select ' + FspColunas.Text);
  Self.SQL.Add('From ' + FspTabelas.Text);
  Self.SQL.Add('Where ' + FspCondicoes.Text);

end;

end.
