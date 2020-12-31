Function DesconectaRede(Letra:Pchar;Forcada:boolean):String;
//
//  Disconecta uma unidade mapeada via programa��o
//
//  Letra = Letra atribuida a unidade
//  Forcada =  For�a o cancelamento do mapeamento
//
begin
WNetCancelConnection2(Letra,0,Forcada);
Case GetLastError() of
     1205: Result := 'N�o foi poss�vel abrir o perfil';
     1206: Result := 'Perfil do usu�rio n�o encontrado ou inv�lido';
     1208: Result := 'Ocorreu um Erro espec�fico na rede';
     2138: Result := 'Rede n�o encontrada ou fora do ar';
     2250: Result := 'Mapeamento inv�lido ou n�o encontrado';
     2401: Result := 'Existem muitos arquivos abertos';
else
     Result := 'Unidade disconectada com sucesso';
end;
end;