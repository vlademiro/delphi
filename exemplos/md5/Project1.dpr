program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  IdHashMessageDigest; // <-- Para o hash

var
idMD5: TIdHashMessageDigest5;
sSenha: String;

begin
  try

    sSenha := 'MinhaSenha';
    idMD5 := TIdHashMessageDigest5.Create;

    writeln('String original : ', sSenha );
    writeln('String criptografada : ', idMD5.HashStringAsHex(sSenha));
    writeln('Tecle enter para finalizar');
    readln;

    idMD5.Free;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.




