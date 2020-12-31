function AbreviaNome(Nome: String): String; 
//
// Abrevia nomes que, em alguns casos, n�o 
// cabem em um determinado componente na tela 
// ou ficam muito grandes para serem impresso 
// em um relat�rio. 
//
// Ex: O nome Jos� Francisco Manoel da Siva � 
// abreviado, por esta fun��o, para Jos� F. M. da Silva. 
//
var 
  Nomes: array[1..20] of string; 
  i, TotalNomes: Integer; 
begin 
  Nome := Trim(Nome); 
  Result := Nome; 
  {Insere um espa�o para garantir que todas as letras sejam testadas} 
  Nome := Nome + #32; 
  {Pega a posi��o do primeiro espa�o} 
  i := Pos(#32, Nome); 
  if i > 0 then 
  begin 
    TotalNomes := 0; 
    {Separa todos os nomes} 
    while i > 0 do 
    begin 
      Inc(TotalNomes); 
      Nomes[TotalNomes] := Copy(Nome, 1, i - 1); 
      Delete(Nome, 1, i); 
      i := Pos(#32, Nome); 
    end; 
    if TotalNomes > 2 then 
    begin 
      {Abreviar a partir do segundo nome, exceto o �ltimo.} 
      for i := 2 to TotalNomes - 1 do 
      begin 
        {Cont�m mais de 3 letras? (ignorar de, da, das, do, dos, etc.)} 
        if Length(Nomes[i]) > 3 then 
          {Pega apenas a primeira letra do nome e coloca um ponto ap�s.} 
          Nomes[i] := Nomes[i][1] + '.'; 
      end; 
      Result := ''; 
      for i := 1 to TotalNomes do 
        Result := Result + Trim(Nomes[i]) + #32; 
      Result := Trim(Result); 
    end; 
  end; 
end; 
 
