function TiraPontoeVirgula(sTexto:String):String;
//
// Remove ponto ou virgula de um valor num�rico
//
var
Temp_01 : string;
Temp_03, conta: Integer;
begin
Conta := 0;
Temp_03 := length(sTexto);
while conta < temp_03 do
      begin
      Conta := Conta + 1;
      Temp_01 := Copy(Stexto,conta,1);
      if Temp_01 = '.' then
         begin
         sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
         end;
      if Temp_01 = ',' then
         begin
         sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
         end;
      end;
Result := sTexto;
end;
