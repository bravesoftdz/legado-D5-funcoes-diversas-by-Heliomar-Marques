procedure SetAlias(sAlias, sPath: String; PersistentAlias: Boolean; sDriveType: PChar);
//
// Cria um alias em tempo de execu��o
//
// Use:
// SetAlias('Aplicacao','C:\APLIC',True,szParadox);
//
var
zAlias, zPath: array[0..127] of char;
dbEnv: DBIEnv;
dbRes: DBIResult;
begin
with dbEnv do
     begin
     StrPCopy(szWorkDir, sPath);
     StrPCopy(szIniFile,'');
     bForceLocalInit := True;
     StrPCopy(szLang,'');
     StrPCopy(szClientName,'dbClientName');
     end;
if DbiInit(@dbEnv) <> DBIERR_NONE then
   begin
   raise Exception.Create('Erro inicializando Database Engine. Alias n�o criado.');
   Exit;
   end
else
   begin
   dbRes := DbiAddAlias(nil, StrPCopy(zAlias, sAlias), sDriveType,StrPCopy(zPath, 'PATH:'+sPath), PersistentAlias);
   case dbRes of
        DBIERR_NONE: ShowMessage('Alias: '+sAlias + ' adicionado com sucesso.');
        DBIERR_INVALIDPARAM:
                            begin
                            raise Exception.Create('Um DriverType foi especificado, por�m foi passado um alias nulo.');
                            exit;
                            end;
        DBIERR_NAMENOTUNIQUE:
                             begin
                             raise Exception.Create(sAlias + ' j� existe. Use outro nome para o alias.');
                             exit;
                             end;
        DBIERR_UNKNOWNDRIVER:
                             begin
                             raise Exception.Create('N�o foi encontrado o nome do driver no arquivo de configura��o.');
                             exit;
                             end;
        end;
        if DbiExit <> DBIERR_NONE then
           begin
           raise Exception.Create('Alias criado, por�m houve um erro ao fechar o BDE. Desligue e reinicialize.');
           exit;
           end;
       end;
end;
