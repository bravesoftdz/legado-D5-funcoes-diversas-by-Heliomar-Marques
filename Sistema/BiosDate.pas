function BiosDate: String;
// Retorna a data da fabrica��o do Chip da Bios do sistema
begin
   result := string(pchar(ptr($FFFF5)));
end;
