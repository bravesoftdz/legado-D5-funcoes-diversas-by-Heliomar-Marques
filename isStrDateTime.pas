function isStrDateTime(dateStr:string ): boolean;
//
// Testa se uma String tem um valor de Data v�lido
// ou n�o
//
begin
try
  strToDateTime(dateStr);
  result := true;
except
 result := false;
end;
end;
