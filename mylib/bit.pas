unit bit;

uses SysUtils;

function Dec2Bin( const num:integer ):string;
var 
quociente, resto, temp : integer;
binario : string;
begin
    binario := '';
    temp:=num;
    while (temp <> 0) do
        begin
            quociente := temp div 2;
            resto := temp mod 2;
            case resto of
                { O primeiro resto da divisao ira para ultimo digito binario
                 e assim sucessivamente }
                0: binario := '0' + binario;
                1: binario := '1' + binario;
            end;
        temp := quociente;
    end;
    Dec2Bin := FormatFloat( '00000000' , StrToInt(binario) );
end;
