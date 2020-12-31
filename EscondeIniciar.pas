procedure EscondeIniciar(Visible:Boolean);
//
// Oculta ou exibe o bot�o "Inciar" da barra de
// tarefas
//
Var
taskbarhandle,
buttonhandle : HWND;
begin
taskbarhandle := FindWindow('Shell_TrayWnd', nil);
buttonhandle := GetWindow(taskbarhandle, GW_CHILD);
If Visible=True Then
   begin
   ShowWindow(buttonhandle, SW_RESTORE); {mostra o bot�o}
   end
else
   begin
   ShowWindow(buttonhandle, SW_HIDE); {esconde o bot�o}
   end;
end;
