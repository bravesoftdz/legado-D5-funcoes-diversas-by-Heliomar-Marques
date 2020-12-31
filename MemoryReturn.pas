Function MemoryReturn(Categoria: integer): integer;
//
// Retorna a memoria do sistema
// voce pode usar a tabela abaixo para fazer as devidas modifica��es
//
var
MemoryStatus: TMemoryStatus;
Retval : Integer;
begin
MemoryStatus.dwLength:= sizeof(MemoryStatus);
GlobalMemoryStatus(MemoryStatus);
if categoria > 8 then
   begin
   Retval := 0;
   end;
case categoria of
     1: Retval := MemoryStatus.dwTotalPhys;     // bytes de mem�ria f�sica
     2: Retval := MemoryStatus.dwLength;        // sizeof(MEMORYSTATUS)
     3: Retval := MemoryStatus.dwMemoryLoad;    // percentual de mem�ria em uso
     4: Retval := MemoryStatus.dwAvailPhys;     // bytes livres de mem�ria f�sica
     5: Retval := MemoryStatus.dwTotalPageFile; // bytes de pagina��o de arquivo
     6: Retval := MemoryStatus.dwAvailPageFile; // bytes livres de pagina��o de arquivo
     7: Retval := MemoryStatus.dwTotalVirtual;  // bytes em uso de espa�o de endere�o
     8: Retval := MemoryStatus.dwAvailVirtual;  // bytes livres
     end;
result := Retval;
end;
