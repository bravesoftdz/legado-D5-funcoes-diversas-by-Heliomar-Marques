function ExisteInt(Texto:String): Boolean;
{Testa se em uma string existe um numero inteiro valido ou n�o}
var
i:integer;
begin
try
  i := StrToInt(Texto);
  Result := True;
except
  Result := False;
end;
end;
