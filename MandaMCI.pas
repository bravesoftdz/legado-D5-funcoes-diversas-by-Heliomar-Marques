procedure MandaMCI(Param: integer; Form_Handle: Integer);
//
// Envia um Comando para um Dispositivo MCI
//
// Qualquer dispositivo MCI (leia-se CD-Player, Gravador de Som, entre outros) pode ser controlado por esta fun��o. 
// Ela deve ser usada, obviamente, em comandos que n�o exigem retorno, como por exemplo: 'Play CDAudio'.
//
// O par�metro form_handle � conseguido da seguinte forma: <nome do form>.handle.
//
Var
Comando : Pchar;
begin
Case parmam of
     1: Comando :=  'OPEN CDAUDIO SHAREABLE'          // Abre o dispositivo CdPlayer para ser controlado.
     2: Comando :=  'CLOSE CDAUDIO'                   // Fecha o dispositivo CdPlayer, que n�o aceitar� mais comandos.
     3: Comando :=  'STATUS CDAUDIO MODE'             // Opera��o atual do CdPlayer: 'Playing', 'Stopped', entre outros.
     4: Comando :=  'PLAY CDAUDIO'                    // Executa um Play.
     5: Comando :=  'STOP CDAUDIO                     // Executa um Stop.
     6: Comando :=  'SEEK CDAUDIO TO START            // Move o CdPlayer para o in�cio do CD.
     7: Comando :=  'SEEK CDAUDIO TO                  // <numero da trilha> // Numero da trilha de �udio em que se deseja posicionar o CdPlayer.
     8: Comando :=  'SET CDAUDIO TIME FORMAT TMSF     // Deve ser executado sempre antes de um comando que retornar� dados.
     9: Comando :=  'STATUS CDAUDIO NUMBER OF TRACKS  // N�mero de trilhas de �udio do CD.
     10: Comando := 'STATUS CDAUDIO LENGTH            // Tempo total do CD.
     11: Comando := 'STATUS CDAUDIO LENGTH TRACK      // <numero da trilha> - Tempo total da trilha desejada.
     12: Comando := 'STATUS CDAUDIO CURRENT TRACK     // N�mero da trilha em que o CdPlayer se encontra.
     13: Comando := 'STATUS CDAUDIO POSITION          // Tempo da m�sica atual em que o CDPlayer se encontra.
end;
   mciSendString(Comando,nil,0,Form_Handle);
end;