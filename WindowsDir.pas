function WindowsDir : String;
{Retorna o diretorio onde o windows est� instalado}
Var
  Buffer : Array[0..144] of Char;
Begin
GetWindowsDirectory(Buffer,144);
Result := StrPas(Buffer);
End;
