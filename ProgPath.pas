function ProgPath(filename:String):string;
//
// Retorna o Path de onde o programa est� sendo executado
//
var
  st:string;
begin
   st:= application.ExeName;
   result:= extractfilepath(st)+filename;
end;
