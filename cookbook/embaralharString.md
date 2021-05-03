
````
function EmbaralharString(): string;
var
  i: integer;
  vPosicao: integer;
  vLista: TStringList;
  aString: string;
begin

  Randomize;
  aString := 'j0%ujrQzP@bImwo^7seRRU!XyT8@I!D!KsInl^NDi98$$@$Bw&';
  aString := aString + 'fg4D2@Rk&!h$p*aTVw!hfBGxDcxmomD*X4ZCRMaBMj&mkY2EI8';
  aString := aString + 'P4h|Gd2M5Xw+gJzJJ;*6^?}d@XQpT&Hjloir)B4oYRb5b[%l*x';
  aString := aString + '@h9yQ|#}Ddl5C6!@<>!u.SNp4WcheRpGzQ5&Pi9T@L{$(1p&xR';
  aString := aString + 'e.9dH}%sQX^19gX6asDTOI^nh2rt,zoSmOwuIbFazA[ahO<78A';
  vLista := TStringList.Create;

  for i := 1 to Length(aString) do
    vLista.Add(aString[i]);

  Result := '';
  readln;
  for i := 1 to Length(aString) do
  begin
    vPosicao := Random(vLista.Count);
    Result := Result + vLista.Strings[vPosicao];
    vLista.Delete(vPosicao);
  end;

  vLista.Free;
end;
````
