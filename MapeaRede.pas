Function MapeaRede(Letra,Path,provedor:Pchar):String;
//
//  mapea um Drive via programa��o
//
//  Local = Letra atribuida a unidade
//  Path =  Caminho do mapeamento
//  Provedor = Provedor da rede
//
var
NRW: TNetResource;
begin
with NRW do
     begin
     dwType := RESOURCETYPE_ANY;
     lpLocalName := Letra;
     lpRemoteName := Path;
     lpProvider := provedor;
     end;
WNetAddConnection2(NRW, ' ', ' ', CONNECT_UPDATE_PROFILE);
Case GetLastError() of
     5:    Result := 'Acesso Negado';
     66:   Result := 'Tipo de dispositivo local ou recurso inv�lido';
     67:   Result := 'Caminho n�o encontrado ou inv�lido';
     85:   Result := 'Este mapeamento j� existe';
     86:   Result := 'Senha n�o encontrada ou inv�lida';
     1200: Result := 'Letra atribu�da a unidade j� � reservada ou inv�lida';
     1202: Result := 'Um mapeamento com esta letra j� existe';
     1203: Result := 'Rede ou caminho n�o encontrado ou inv�lido';
     1204: Result := 'Provedor n�o encontrado ou inv�lido';
     1205: Result := 'N�o foi poss�vel abrir o perfil';
     1206: Result := 'Perfil do usu�rio n�o encontrado ou inv�lido';
     1208: Result := 'Ocorreu um Erro espec�fico na rede';
     170:  Result := 'Rede congestionada';
     2138: Result := 'Rede n�o encontrada ou fora do ar'
else
     Result := 'Unidade mapeada com sucesso';
end;
end;