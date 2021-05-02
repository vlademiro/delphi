program firedac;

{
Esse exemplo cria uma conexao no FDManager e abre a conexao
}

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  FireDAC.Comp.Client,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.ConsoleUI.Wait,
  Data.DB,
  Classes; // Classes para o TStringList
var
  oParams: TStringlist;
  conexao: TFDConnection;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    oParams := TStringList.Create;
    oParams.Add('Database=localhost:C:\projetos\console\banco\EMPLOYEE.FDB');
    oParams.Add('User_Name=sysdba');
    oParams.Add('Password=masterkey');
    oParams.Add('Pooled=True');

    FDManager.AddConnectionDef('Firebird Pooled','FB',oParams);
    FDManager.Active := True;
    writeln('Testando a conexão...');
    try
      conexao := TFDConnection.Create(nil);
      conexao.ConnectionDefName :='Firebird Pooled';
      conexao.Connected := true;
      writeln('Ok');

    except
      writeln('Falha na conexao');
    end;



  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  readln;
end.
