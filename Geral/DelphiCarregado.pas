{ Estas fun��es servem para verificar
 se o delphi est� carregado ou n�o}
Function JanelaExiste(Classe,Janela:String) :Boolean;
var
  PClasse,PJanela : array[0..79] of char;
begin
  if Classe = '' then
    PClasse[0] := #0
  else
    StrPCopy(PClasse,Classe);
  if Janela = '' then
    PJanela[0] := #0
  else
    StrPCopy(PJanela,Janela);
  if FindWindow(PClasse,PJAnela) <> 0 then
    result := true
  else
    Result := false;
end;


Function DelphiCarregado : Boolean;
begin
Result :=  False;
if JanelaExiste('TPropertyInspector','Object Inspector') then
   begin
   result := True;
   end
else
   begin
   result := False;
   end;
end;


{ No evento OnCreate do form coloque:}

if not DelphiCarregado then
    showmessage('Delphi est� ativo, bom menino!')
  else
    begin
      Showmessage('Vc n�o poder� utilizar esta aplica��o! Mau garoto!');
      application.terminate;
    end;
