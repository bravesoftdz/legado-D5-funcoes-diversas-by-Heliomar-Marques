function NomeDoComputador : string;
//
// Retorna o nome do computador
//
const
MAX_COMPUTER_LENGTH = 30;
var
pNome : PChar;
len : DWord;
begin
Result := '';
try
  len := MAX_COMPUTER_LENGTH + 1;
  GetMem(pNome,len);
  if GetComputerName(pNome, len) then
     begin
     Result := pNome
     end
  else
     begin
     Result := 'N�o foi poss�vel obter o nome deste computador...';
     end;
  finally
     FreeMem(pNome, len);
  end;
end;
