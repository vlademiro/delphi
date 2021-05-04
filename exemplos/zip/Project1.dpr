program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Zip,
  System.Classes,
  Vcl.Forms; { <-- Application.Exename }

var
  sCaminhoSalvar:string;
  oZip:TZipFile;
begin
  try
    try
      { TODO -oUser -cConsole Main : Insert code here }
      sCaminhoSalvar := ExtractFilePath(Application.ExeName) + 'Compactador.zip';
      oZip := TZipFile.Create();
      oZip.Open( sCaminhoSalvar, zmWrite );
      oZip.Add( ExtractFilePath(Application.ExeName) + 'Project1.dpr');
      writeln('Criando o arquivo ', sCaminhoSalvar );
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    FreeAndNil( oZip );
  end;
  writeln('Tecle ENTER');
  readln;
end.
