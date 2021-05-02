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
  WriteLn ( ShortInt ( 65 )   shr  8 ) ;
  for I := 1 to Length( sEntrada ) do
    begin
      write( Byte( sEntrada[I] ) , ' ' );
      writeln( Char( Byte( sEntrada[I] ) ));
      writeln( Char( Byte( sEntrada[I] ) xor (nStartKey shr 8)));
      writeln( 'shr 8 : ', nStartKey shr 8 );
      writeln('-----------------------------------------');
      Result := Result + Char( Byte( sEntrada[I] ) xor (nStartKey shr 8));
      nStartKey := ( Byte(Result[I]) + nStartKey) * nMultKey + nAddKey;
    end;
end;


begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    { Encriptando }
    writeln('Encriptando : ' , EncryptString('NIVIO CCE',5,1,1));

    write('Tecle enter para retornar');readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
