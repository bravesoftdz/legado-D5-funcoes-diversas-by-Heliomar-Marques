function MaskString(Valor: String) : String;
{coloca uma m�scara n�merica em uma String num�rica}
begin
Result := FormatMaskText('!aaaaaaaaaaaaaa;0; ',(FormatFloat('#,##0.00',StrToFloat(valor))));
end;

