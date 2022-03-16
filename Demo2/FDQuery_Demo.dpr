program FDQuery_Demo;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {DBViewFrm_u};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDBViewFrm_u, DBViewFrm_u);
  Application.Run;
end.
