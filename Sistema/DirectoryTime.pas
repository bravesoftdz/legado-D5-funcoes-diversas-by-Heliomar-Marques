function DirectoryTime(aDir: String): String;
//
// Retorna a hora da cria��o de um diret�rio
//
var
srFile: TSearchRec;
begin
if FindFirst('C:\WINDOWS',faDirectory,srFile)=0 then
   begin
   result := TimeToStr(FileDateToDateTime(srFile.Time));
   end;
end;
