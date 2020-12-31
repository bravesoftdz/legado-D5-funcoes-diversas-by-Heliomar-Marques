Function DataValida(StrD: string): Boolean;
//
// Testa se uma data � valida
//
var
  D : TDateTime;
begin
  Result := True;
  try
    D := StrToDate(StrD);
  except
    on EConvertError do Result:=False;
  end;
end;
