function Padr(s:string;n:integer):string;
{alinha uma string � direita}
begin
Result:=Format('%'+IntToStr(n)+'.'+IntToStr(n)+'s',[s]);
end;
