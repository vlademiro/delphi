program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Classes;

function EmbaralharString( aString:string ): string;
var
  i: integer;
  vPosicao: integer;
  vLista: TStringList;

begin

  Randomize;
  vLista := TStringList.Create;

  for i := 1 to Length(aString) do
    vLista.Add(aString[i]);

  Result := '';
  for i := 1 to Length(aString) do
  begin
    vPosicao := Random(vLista.Count);
    Result := Result + vLista.Strings[vPosicao];
    vLista.Delete(vPosicao);
  end;

  vLista.Free;
end;

var
  i:integer;
  sEntrada:string;

begin
  try

    writeln( EmbaralharString( 'vlademiro' ) );
    writeln( EmbaralharString( 'vlademiro' ) );
    writeln( EmbaralharString( 'vlademiro' ) );
    sEntrada := '';
    for i := 33 to 126 do begin
      sEntrada := sEntrada + chr(i);
    end;
    writeln( EmbaralharString( sEntrada ) );



    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
