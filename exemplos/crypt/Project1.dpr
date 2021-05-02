program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function EncryptString( const sEntrada: string; nStartKey: integer;
                nMultKey, nAddKey: integer ): string;
var
  I : byte;
begin
  { Fonte : http://theclub.com.br/Restrito/Revistas/201011/meto1011.aspx }
  Result := '';
  for I := 1 to Length( sEntrada ) do
    begin
      write( 'Debug : Char(Byte(sEntrada[I])) : ' , Char( Byte( sEntrada[I] )));
      writeln( ' xor ' , (nStartKey shr 8 mod 255 ) );
      Result := Result + Char( Byte( sEntrada[I] ) xor (nStartKey shr 8 mod 255 ));
      nStartKey := ( Byte(Result[I]) + nStartKey) * nMultKey + nAddKey;
    end;
end;

var
  sOriginal:string;
begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    write('Informe o nome a encriptar :');readln( sOriginal );
    { Encriptando }
    writeln('Encriptando : ' , EncryptString( sOriginal,5,51,21));

    write('Tecle enter para retornar');readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
