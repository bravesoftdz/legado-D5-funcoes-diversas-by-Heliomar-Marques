Function CheckState(ATable: TTable): String;
//
// Checa o estado de uma tabela
//
var
strMessage : String[48];
wrdMessageResult : word;
begin
ATable.UpdateRecord;
if ( ATable.Modified ) and ( ATable.State <> dsSetKey ) then
   begin
   if ATable.State = dsEdit then
      begin
      strMessage := 'Editando registro, ';
      end;
   if ATable.State = dsInsert then
      begin
      strMessage := 'Inserindo registro, ';
      end;
   if ATable.State = dsFilter then
      begin
      strMessage := 'Filtrando registros, ';
      end;
   if ATable.State = dsInactive then
      begin
      strMessage := 'Ociosa ';
      end;

   end
else
   begin
   strMessage := 'Tabela n�o est� em modo de Atualiza��o de dados';
   ATable.Cancel;
   end;
Result := strMessage;
end;
