function ModificaCaracter(TEXTO:string):string;
//
// Elimina caracteres acentuados de um texto e retorna
// este texto em mai�sculas
//
var
i,tamanho:integer;
Texto_modificado:string;
Caracter:char;
begin
Texto := AnsiUpperCase(Texto);
Tamanho := Length(Texto);
for i :=1 to Tamanho do
    begin
    Caracter := Texto[i];
    case Caracter of
         '�','�','�','�','�': Texto_Modificdo := Texto_Modificdo + 'A';
         '�','�','�','�': Texto_Modificdo := Texto_Modificdo + 'E';
         '�','�','�','�': Texto_Modificdo := Texto_Modificdo + 'I';
         '�','�','�','�','�': Texto_Modificdo := Texto_Modificdo + 'O';
         '�','�','�','�': Texto_Modificdo := Texto_Modificdo + 'U';
         '�': Texto_Modificdo := Texto_Modificdo + 'C';
         '�': Texto_Modificdo := Texto_Modificdo + 'N';
         '�': Texto_Modificdo := Texto_Modificdo + 'Y';
         '�': Texto_Modificdo := Texto_Modificdo + 'a';
         '�': Texto_Modificdo := Texto_Modificdo + 'o';
    else
         Texto_Modificdo := Texto_Modificdo + Caracter;
    end;
    end;
result := Texto_Modificdo;
end;
