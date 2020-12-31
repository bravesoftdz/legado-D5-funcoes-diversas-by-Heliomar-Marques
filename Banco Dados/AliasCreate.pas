function AliasCreate(AliasName:String;Programa:String;DataType:String): Boolean;
{Como criar uma Alias tempor�rio ?
Digamos que voc� deseja criar um alias para acessar algumas bases de dados que est�o no diret�rio
onde esta o seu execut�vel e este alias n�o dever� ser gravado no BDE.}
begin
if not Session.IsAlias(AliasName) then
   begin
   {Verifica se j� existe o alias na mem�ria }
   Session.AddStandardAlias(AliasName,ExtractFilePath(Programa),Datatype);
   Result := True;
   end
else
   begin
   Result := False;
   end;
end;
 