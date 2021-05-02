program firedac;

{
 Esse programa registra uma conex�o firedac no FDManager

 Aqui a conex�o n�o � testada, ela apenas � registrada,
 isso quer dizer que os par�metros podem conter erros que o programa ir�
 rodar normalmente.

 Os eventuais erros somente aparecer�o quando a conex�o for aberta, veremos
 isso nos pr�ximos exemplos.

}

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.ConsoleUI.Wait, Data.DB,
  Classes;   // Classes para o TStringList
var
  oParams: TStringlist;
  i:integer;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    oParams := TStringList.Create;
    oParams.Add('Database=C:\projetos\console\banco\EMPLOYEE.FDB');
    oParams.Add('Protocol=TCPIP');
    oParams.Add('Server=localhost');
    oParams.Add('User_Name=sysdba');
    oParams.Add('Password=masterkey');
    oParams.Add('Pooled=True');

    FDManager.AddConnectionDef('Firebird Pooled','FB',oParams);
    FDManager.Active := True;
    for i := 0 to FDManager.ConnectionDefs.Count-1 do
    begin
      writeln( FDManager.ConnectionDefs[i].Name );
    end;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  readln;
end.
