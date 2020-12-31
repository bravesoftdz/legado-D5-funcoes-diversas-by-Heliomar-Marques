function ExitWindowsEx(uFlags : integer;  		 // shutdown operation
                   dwReserved : word) : boolean; // reserved
  external 'user32.dll' name 'ExitWindowsEx';

procedure Tchau;
const
  EWX_LOGOFF   = 0; // D� "logoff" no usu�rio atual
  EWX_SHUTDOWN = 1; // "Shutdown" padr�o do sistema
  EWX_REBOOT   = 2; // D� "reboot" no equipamento
  EWX_FORCE    = 4; // For�a o t�rmino dos processos
  EWX_POWEROFF = 8; // Desliga o equipamento

begin
  ExitWindowsEx(EWX_FORCE, 0);
end;
