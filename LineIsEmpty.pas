function LineIsEmpty(Text:string):boolean;
// Testa se uma linha de texto est� vazia ou n�o
var
  i:byte;
begin
for i:=1 to length(Text) do
    begin
    if Text[i]<>' ' then
       begin
       result := False;
       exit;
       end;
     end;
Result := True;
end;
