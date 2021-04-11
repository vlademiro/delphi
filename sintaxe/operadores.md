# Operadores

## O que diferencia o operador de divisão `div` do operador de divisão `/` ?

:exclamation: O operador `div` resulta sempre um número inteiro e o operador `/` sempre retorna um tipo Double

``
program Hello;
var
    x,y:Integer;
begin
  x := 10;
  y := 2;
  writeln( x / y );
  writeln( x div y );
end.
``

Resulta em :
``
 5.00000000000000E+000                                                                                                                               
5 
``
