unit DBMocule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client;

type
  TSharedDataModule = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SharedDataModule: TSharedDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses DataPaths;



procedure TSharedDataModule.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Params.Clear;
  FDConnection1.Params.AddStrings(DataPaths.ConnectionParams);
  try
    FDConnection1.Open();
  except
    on Exception do begin
      raise Exception.Create('Invalid DB params configuration. Check Params in Datapaths unit');
    end;
  end;

end;

end.
