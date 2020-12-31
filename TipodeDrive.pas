Function TipodeDrive(Unidade: String):String;
//
// Retorna o tipo de unidade referente a letra
// especificada.
//
Var
StrDrive : String;
StrDriveType : String;
intDriveType : Integer;
begin
StrDrive := Unidade;
If StrDrive[Length(StrDrive)] <> '\' Then
   begin
   StrDrive := StrDrive + ':\';
   end;
intDriveType := GetDriveType(PChar(StrDrive));
Case intDriveType Of
     0                : StrDriveType := 'Unidade inv�lida ou n�o encontrada.';
     1                : StrDriveType := 'Unidade n�o encontrada ou inv�lida.';
     DRIVE_REMOVABLE  : StrDriveType := 'Floppy Drive ou Disco Removivel.';
     DRIVE_FIXED      : StrDriveType := 'Disco R�gido.';
     DRIVE_REMOTE     : StrDriveType := 'Unidade de rede mapeada.';
     DRIVE_CDROM      : StrDriveType := 'Drive CD-ROM ou similar.';
     DRIVE_RAMDISK    : StrDriveType := 'Disco de RAM ou similar.';
end;
Result := StrDriveType;
end;
