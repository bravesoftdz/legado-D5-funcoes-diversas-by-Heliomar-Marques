function ValidaCampo(Table: TTable; Text: Array of const;Indice:String):Boolean
//
// Faz valida��o de campos impedindo a inser��o de registros duplicados
//
// Esta fun��o deve ser colocada no Evento on SetText do Campo que voc� deseja
// fazer a valida��o
//
var
Tabela : TTable;
begin
Tabela := TTable.Create(Application);
Tabela.DatabaseName := Table.DataBaseName;
Tabela.TableName := Table.TableName;
Tabela.Open;
Tabela.IndexFieldNames := Indice;
if Tabela.FindKey(Text) then
   begin
   Result := False;
   Tabela.Free;
   Abort;
   end
else
   begin
   Result := True;
   Tabela.Free;
   end;
end;
