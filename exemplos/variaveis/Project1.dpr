program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
nVar : integer; // Variável numérica inteira
nCusto : double; // Variável numérica real
sNome : string; // Variável string
cResp : char; // Variável caracter
dDataNasc : TDate; // Variável data
tHorario : TDateTime; // Variável date/hora
bStatus : boolean;  // Variável lógica

begin
  try
    nVar := 12;
    nCusto := 10.40332;
    sNome := 'Pascal';
    cResp := 'A';
    dDataNasc := StrToDate('01/12/2020');
    tHorario := now;
    bStatus := true;

    writeln( nVar );
    writeln( nCusto:10:4 );
    writeln( sNome );
    writeln( cResp );
    writeln( DateToStr(dDataNasc) );
    writeln( DateTimeToStr(tHorario) );
    writeln('Tecle enter para finalizar');
    readln;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.




