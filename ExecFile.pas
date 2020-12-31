procedure ExecFile(F: String);
//
// Executa um aplicativo Associado
//
// Esta procedure requer a ShellApi na clausula Uses da unit.
//
// Declare a procedure na clausua private da unit e coloque-a apos a clausula
// implementation assim:  procedure Tform1.ExecFile(F: String);
//
// use a procedure assim:    ExecFile('c:\windows\Ladrilhos.bmp')
//
var
r: String;
begin
case ShellExecute(Handle, nil, PChar(F), nil, nil,SW_SHOWNORMAL) of
     ERROR_FILE_NOT_FOUND: r := 'O arquivo especificado n�o foi encontrado ou n�o existe!';
     ERROR_PATH_NOT_FOUND: r := 'O Caminho � inv�lido ou n�o existe!';
     ERROR_BAD_FORMAT: r := 'O Aplicativo est� corrompido ou n�o � um Aplicativo Win32 valido!';
     SE_ERR_ACCESSDENIED: r := 'O sistema negou acesso a este arquivo por algum motivo desconhecido!';
     SE_ERR_ASSOCINCOMPLETE: r := 'Este arquivo tem uma associa��o inv�lida ou incompleta a ele!';
     SE_ERR_DDEBUSY: r := 'A transa��o DDE n�o pode ser efetuada por j� haver outra Transa��o DDE em andamento';
     SE_ERR_DDEFAIL: r := 'N�o foi poss�vel efetuar a transa��o DDE!';
     SE_ERR_DDETIMEOUT: r := 'A transa��o DDE n�o pode ser efetuada porque o tempo requerido expirou!';
     SE_ERR_DLLNOTFOUND: r := 'Uma Biblioteca DLL necess�ria �o aplicativo associado n�o foi encontrada!';
     SE_ERR_NOASSOC: r := 'Este arquivo n�o tem nenhum aplicativo associado � ele!';
     SE_ERR_OOM: r := 'mem�ria insuficiente para prosseguir com esta opera��o!';
     SE_ERR_SHARE: r := 'Ocorreu uma viola��o de compartilhamento ao efetuar esta opera��o!';
else
     Exit;
end;
ShowMessage(r);
end;
