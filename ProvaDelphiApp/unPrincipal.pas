unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    Tarefas: TMainMenu;
    ItemTarefas: TMenuItem;
    Tarefa1: TMenuItem;
    Tarefa2: TMenuItem;
    Tarefa3: TMenuItem;
    procedure Tarefa2Click(Sender: TObject);
    procedure Tarefa3Click(Sender: TObject);
    procedure Tarefa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, ufTarefa3;

procedure TForm1.Tarefa1Click(Sender: TObject);
begin
  Application.CreateForm(TfTarefa1, fTarefa1);
end;

procedure TForm1.Tarefa2Click(Sender: TObject);
begin
  Application.CreateForm(TfTarefa2, fTarefa2);
end;

procedure TForm1.Tarefa3Click(Sender: TObject);
begin
  Application.CreateForm(TfTarefa3, fTarefa3);
end;

end.
