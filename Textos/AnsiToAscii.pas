function AnsiToAscii( str: String ): String;
//
// Converte um caractere da tabela Ansi para
// Ascii
//
var i: Integer;
begin
for i := 1 to Length (str) do
    begin
    case str[i] of
         '�': str[i] := 'a';
         '�': str[i] := 'e';
         '�': str[i] := 'i';
         '�': str[i] := 'o';
         '�': str[i] := 'u';
         '�': str[i] := 'a';
         '�': str[i] := 'e';
         '�': str[i] := 'i';
         '�': str[i] := 'o';
         '�': str[i] := 'u';
         '�': str[i] := 'a';
         '�': str[i] := 'e';
         '�': str[i] := 'i';
         '�': str[i] := 'o';
         '�': str[i] := 'u';
         '�': str[i] := 'a';
         '�': str[i] := 'e';
         '�': str[i] := 'i';
         '�': str[i] := 'o';
         '�': str[i] := 'u';
         '�': str[i] := 'a';
         '�': str[i] := 'o';
         '�': str[i] := 'n';
         '�': str[i] := 'c';
         '�': str[i] := 'A';
         '�': str[i] := 'E';
         '�': str[i] := 'I';
         '�': str[i] := 'O';
         '�': str[i] := 'U';
         '�': str[i] := 'A';
         '�': str[i] := 'E';
         '�': str[i] := 'I';
         '�': str[i] := 'O';
         '�': str[i] := 'U';
         '�': str[i] := 'A';
         '�': str[i] := 'E';
         '�': str[i] := 'I';
         '�': str[i] := 'O';
         '�': str[i] := 'U';
         '�': str[i] := 'A';
         '�': str[i] := 'E';
         '�': str[i] := 'I';
         '�': str[i] := 'O';
         '�': str[i] := 'U';
         '�': str[i] := 'A';
         '�': str[i] := 'O';
         '�': str[i] := 'N';
         '�': str[i] := 'C';
         end;
    end;
    Result := str;
end;
