program ProvaDelphiApp;

uses
  Vcl.Forms,
  unPrincipal in 'unPrincipal.pas' {Form1},
  ufTarefa2 in 'ufTarefa2.pas' {fTarefa2},
  unThContador in 'Claasses\unThContador.pas',
  ufTarefa3 in 'ufTarefa3.pas' {fTarefa3},
  ufTarefa1 in 'ufTarefa1.pas' {fTarefa1},
  unLote in 'Claasses\unLote.pas',
  unErrors in 'Claasses\unErrors.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
