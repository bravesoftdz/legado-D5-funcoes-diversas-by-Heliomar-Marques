function LastPos(Substr, S : String) : Integer;
//
// Essa fun��o vai retornar a �ltima posi��o encontrada. Se a
// substring for maior que a string, com certeza � diferente.
// Se for igual, � checar se as strings s�o iguais. Se for
// menor, procura pelos "peda�os" da string original. � igual
// ao Pos, se n�o encontrar nada, resulta zero (0).
//
var
I : Integer;
begin
Result := 0;
if length (Substr) = length (S) then
   begin
   if Substr = S then
      begin
      Result := 1;
      end
   else
      begin
      Result := 0;
      end;
   end
else
  if length (Substr) < length (S) then
     begin
     I := length (S) - length (Substr);
     repeat
     if copy (S, I, length (Substr)) = Substr then
        begin
        Result := I;
        end;
     dec (I);
     until (I = 0) or (Result <> 0);
     end;
end;
