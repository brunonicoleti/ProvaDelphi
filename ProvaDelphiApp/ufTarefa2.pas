unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, unThContador;

type
  TfTarefa2 = class(TForm)
    btnRunTasks: TButton;
    edtIntervalo1: TEdit;
    edtIntervalo2: TEdit;
    Milisegundos: TLabel;
    Interações: TLabel;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    procedure btnRunTasksClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Contador1: TThContador;
    Contador2: TThContador;
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.btnRunTasksClick(Sender: TObject);
begin
  TThContador.Contar(StrToIntDef(edtIntervalo1.Text, 10), ProgressBar1, Contador1);
  TThContador.Contar(StrToIntDef(edtIntervalo2.Text, 10), ProgressBar2, Contador2);
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
