function DirectoryDate(aDir: String): String;
//
// Retorna a data da cria��o de um diret�rio
//
var
srFile: TSearchRec;
begin
if FindFirst('C:\WINDOWS',faDirectory,srFile)=0 then
   begin
   result := DateToStr(FileDateToDateTime(srFile.Time));
   end;
end;
