function GetToggleState(Key: integer): boolean;
//
// Testa se uma certa tecla est� pressionada ou n�o
//
begin
Result := Odd(GetKeyState(Key));
end;
end;