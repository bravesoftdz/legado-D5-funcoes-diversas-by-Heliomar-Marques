procedure DBasePack(Ntable :TTable);
//
// Efetua um pack em tabelas Dbase
//
var
Error: DbiResult;
ErrorMsg: String;
Special: DBIMSG;
begin
Ntable.Active := False;
try
  Ntable.Exclusive := True;
  Ntable.Active := True;
  Error := DbiPackTable(Ntable.DBHandle, Ntable.Handle, nil, szdBASE, True);
  Ntable.Active := False;
  Ntable.Exclusive := False;
finally
  Ntable.Active := True;
end;
case Error of
     DBIERR_NONE:            ErrorMsg := 'Pack efetuado com Successo';
     DBIERR_INVALIDPARAM:    ErrorMsg := 'A especifica��o da tabela ou seu ponteiro � nulo ou inv�lido';
     DBIERR_INVALIDHNDL:     ErrorMsg := 'O Cabe�alho da tabela ou seu cursor � nulo ou inv�lido';
     DBIERR_NOSUCHTABLE:     ErrorMsg := 'Nome da tabela n�o encontrado ou inv�lido';
     DBIERR_UNKNOWNTBLTYPE:  ErrorMsg := 'Tipo de tabela desconhecido';
     DBIERR_NEEDEXCLACCESS:  ErrorMsg := 'A tabela n�o foi aberta em modo exclusivo';
else
     DbiGetErrorString(Error, Special);
     ErrorMsg := '[' + IntToStr(Error) + ']: ' + Special;
end;
MessageDlg(ErrorMsg, mtWarning, [mbOk], 0);
end;