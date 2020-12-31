function MapeaPasta(Server,Alias,senha:Pchar): String;
//
// mapea uma pasta via programa��o
//
// usea-a assim:
// MapeaPasta('\\ALPHAMG01\Extra','E:',' ')
// 
var
err : DWord;
PServer, PSenha, PLetra : PChar;
Begin
PServer := Server;
PLetra := Alias;
PSenha := senha;
ERR := WNetAddConnection ( PServer , PSenha , PLetra );
case ERR of
     ERROR_ACCESS_DENIED :             result := 'Acesso negado.';
     ERROR_ALREADY_ASSIGNED :          result := 'A letra do drive especificada j� est� conectada.';
     ERROR_BAD_DEV_TYPE :              result := 'O tipo de dispositivo e o tipo de recurso n�o s�o compat�veis.';
     ERROR_BAD_DEVICE :                result := 'Letra inv�lida.';
     ERROR_BAD_NET_NAME :              result := 'Nome do servidor n�o � v�lido ou n�o pode ser localizado.';
     ERROR_BAD_PROFILE :               result := 'Formato incorreto de par�metros.';
     ERROR_CANNOT_OPEN_PROFILE :       result := 'Conex�o permanente n�o dispon�vel.';
     ERROR_DEVICE_ALREADY_REMEMBERED : result := 'Uma entrada para o dispositivo especificado j� est� no perfil do usu�rio.';
     ERROR_EXTENDED_ERROR :            result := 'Erro de rede.';
     ERROR_INVALID_PASSWORD :          result := 'Senha especificada inv�lida.';
     ERROR_NO_NET_OR_BAD_PATH :        result := 'A opera��o n�o foi conclu�da porque a rede n�o foi inicializada ou caminho � inv�lido.';
     ERROR_NO_NETWORK :                result := 'A rede n�o est� presente.';
else
   result := 'A Conex�o '+ server+ ' na unidade '+ Alias+' Foi efetuada corretamente';
end;
end;
