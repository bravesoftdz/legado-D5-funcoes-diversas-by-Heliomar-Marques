function GetWindowsDirectoryStr: string;
//
// Retorna o path corrente do diret�rio
// do Windows
//
const
fsPathName = 255;
var
Buff: array [0..fsPathName] of char;
begin
GetWindowsDirectory( Buff, fsPathName );
Result := StrPas( Buff );
end;
