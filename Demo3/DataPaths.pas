unit DataPaths;

interface

uses System.SysUtils, System.Classes, System.IOUtils;

type
  // exception class
  EFireDacException = class(Exception);

const
  // database file path
  // change this path, if DB is not found
  FDEmpDBPath = 'C:\Program Files\Firebird\examples\empbuild\EMPLOYEE.FDB';

var
  ConnectionParams : TStrings;

procedure ValidatePath(Path: String);

implementation

{______________________________________________________________________________}
procedure ValidatePath(Path: String);
var
  Found: Boolean;
  Msg: String;
begin

  // check for DB file
  if Path.EndsWith('.FDB') then
    Found := TFile.Exists(Path)
  else
    Found := TDirectory.Exists(Path);

  // if not found...
  if not Found then begin
    Msg := Format('Invalid Path : %s. Not found'+'Check FDEmpDBPath in DataPaths.pas file',[Path]);
    raise EFireDacException.Create(Msg);
  end;
end;
{______________________________________________________________________________}
Initialization
  // initialize DB Params
  ConnectionParams := TStrings.Create;
  DataPaths.ValidatePath(FDEmpDBPath);
  ConnectionParams.Add('Database='+FDEmpDBPath);
  ConnectionParams.Add('User_Name=RESTOMAX');
  ConnectionParams.Add('Password=221266');
  ConnectionParams.Add('Protocol=local');
  ConnectionParams.Add('DriverID=FB');

Finalization
  if Assigned(ConnectionParams) then
    ConnectionParams.Free;

end.
