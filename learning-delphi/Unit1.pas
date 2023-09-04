unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;      // declarando qual vai ser o tipo da var
begin
  pessoa := TPessoa.Create;    //dando valor e instanciando(!!!) nossa variavel!
  try
     pessoa.Nome := 'Vit�ria';
     ShowMessage(pessoa.Nome);
  finally
     pessoa.Free;    // isso sou eu limpando o garbage colector.
     // sempre devemos fazer o free de uma variavel depois de instancia-la
  end;
end;

end.
