function RLock(oTable : TTable): Boolean;
//
// Testa se o registro est� travado ou n�o
//
begin
result := false;
try
  oTable.Edit;
except
  on E:EDBEngineError do
     begin
     if E.Errors[0].ErrorCode = 10241 then
        begin
        Result := True;
        end;
     end;
end;
end;
