function UserName : String;
//
// Retorna o usu�rio que est� logado na rede
//
// Esta fun��o funciona tanto no Win9x quanto no NT
//
var
lpBuffer : Array[0..20] of Char;
nSize    : dWord;
Achou    : boolean;
erro     : dWord;
begin
nSize      := 120;
Achou      := GetUserName(lpBuffer,nSize);
if (Achou) then
   begin
   result   := lpBuffer;
   end
else
   begin
   Erro   :=GetLastError();
   result :=IntToStr(Erro);
   end;
end;


