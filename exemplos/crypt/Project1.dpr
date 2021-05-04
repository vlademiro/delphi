program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function EncryptString( const sEntrada: string; nStartKey: integer;
                nMultKey, nAddKey: integer ): string;
var
  I : byte;
const
  ASCII_MAX = 250;
begin
  { Fonte : http://theclub.com.br/Restrito/Revistas/201011/meto1011.aspx }
  Result := '';
  for I := 1 to Length( sEntrada ) do
    begin
    {
      writeln('----------->',chr(158));
      writeln('----------->',chr(154));
      write( 'Debug : Char(Byte(sEntrada[I])) : ' , sEntrada[I] );
      writeln( ' => ' , (nStartKey shr 8 mod ASCII_MAX + Byte(sEntrada[I]) ) ,
               ' => ' , Chr(nStartKey shr 8 mod ASCII_MAX + Byte(sEntrada[I]) ) );
               }
      Result := Result + Char(Ord(sEntrada[i])+ASCII_MAX);
      nStartKey := ( Byte(Result[I]) + nStartKey) * nMultKey + nAddKey;
    end;
end;

var
  sOriginal:string;
  sFile:TextFile;
begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    write('Informe o nome a encriptar :');readln( sOriginal );
    if sOriginal = '' then
      sOriginal := 'VLADEMIRO';
    { Encriptando }
    writeln('Encriptando : ' , EncryptString( sOriginal,5,51,21));
    assignfile( sFile , 'out.txt' );
    rewrite( sFile );
    writeln( sFile,EncryptString( sOriginal,5,51,21) );
    closefile(sFile);

    write('Tecle enter para retornar');readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
