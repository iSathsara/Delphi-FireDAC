program FDCrud_Demo;

uses
  Vcl.Forms,
  DBViewFrm_u in 'DBViewFrm_u.pas' {Form1},
  DataModule_u in 'DataModule_u.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
