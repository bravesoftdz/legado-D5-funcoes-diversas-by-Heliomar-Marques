function EliminaBrancos(sTexto:String):String;
//
// Elimina todos os espa�os em branco da string
//(inclusive os espa�os entre as palavras)
//
var
nPos : Integer;
begin
nPos := 1;
while Pos(' ',sTexto) > 0 do
      begin
      nPos := Pos(' ',sTexto);
      (*Text[nPos] := ''; *)
      Delete(sTexto,nPos,1);
      end;
Result := sTexto;
end;
