program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
nVar : integer; // Vari�vel num�rica inteira
nCusto : double; // Vari�vel num�rica real
sNome : string; // Vari�vel string
cResp : char; // Vari�vel caracter
dDataNasc : TDate; // Vari�vel data
tHorario : TDateTime; // Vari�vel date/hora
bStatus : boolean;  // Vari�vel l�gica

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




