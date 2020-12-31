function GetDefaultPrinterName : string;
//
// Retorna o nome da impressora padr�o do Windows
//
begin
if(Printer.PrinterIndex > 0)then
  begin
  Result := Printer.Printers[Printer.PrinterIndex];
  end
else
  begin
  Result := 'Nenhuma impressora Padr�o foi detectada';
  end;
end;
