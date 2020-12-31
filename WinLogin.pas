function WinLogin: String;
//
// Retorna o Usuario que est� logado na rede
//
// Esta fun��o requer a unit DBitypes na clausula Uses da unit
//
var
dwUserNameLen : DWord;
FUserName: String;
begin
dwUserNameLen := dbiMaxUserNameLen + 1; //DBiTypes
SetLength(FUserName, dwUserNameLen);
if GetUserName(PChar(FUserName), dwUserNameLen) then //AdvApi32.Dll
   Begin
   SetLength(FUserName, dwUserNameLen);
   end
else
   Begin
   SetLength(FUserName, 0);
   end;
Result := FUserName;
end;
