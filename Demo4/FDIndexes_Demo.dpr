program FDIndexes_Demo;

uses
  Vcl.Forms,
  MainForm_u in 'MainForm_u.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
