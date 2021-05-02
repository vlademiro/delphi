program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

procedure rotinaExit;
begin
  writeln('Dentro da rotinaExit');
  exit;
  writeln('Nao devo ser executado / abort');
end;

procedure rotinaAbort;
begin
  writeln('Dentro da rotinaAbort');
  abort;
  writeln('Nao devo ser executado / abort');
end;


begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    rotinaExit;
    writeln('Acabei de sair da rotina exit');
    rotinaAbort;
    writeln('Acabei de sair da rotina abort (não serei executado)');

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.




