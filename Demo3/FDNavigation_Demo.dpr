program FDNavigation_Demo;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form2},
  DBMocule in 'DBMocule.pas' {SharedDataModule: TDataModule},
  DataPaths in 'DataPaths.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSharedDataModule, SharedDataModule);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
