program FireDac_Demo_3;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form2},
  DBMocule in 'DBMocule.pas' {DataModule3: TDataModule},
  DataPaths in 'DataPaths.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.Run;
end.
