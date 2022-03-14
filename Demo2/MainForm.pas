unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Login,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TDBViewFrm_u = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1CUST_NO: TIntegerField;
    FDQuery1CUSTOMER: TStringField;
    FDQuery1CONTACT_FIRST: TStringField;
    FDQuery1CONTACT_LAST: TStringField;
    FDQuery1PHONE_NO: TStringField;
    FDQuery1ADDRESS_LINE1: TStringField;
    FDQuery1ADDRESS_LINE2: TStringField;
    FDQuery1CITY: TStringField;
    FDQuery1STATE_PROVINCE: TStringField;
    FDQuery1COUNTRY: TStringField;
    FDQuery1POSTAL_CODE: TStringField;
    FDQuery1ON_HOLD: TStringField;
    FDQuery2: TFDQuery;
    FDTable1: TFDTable;
    Panel1: TPanel;
    BtnActivateQuery1: TButton;
    BtnActivateQuery2: TButton;
    BtnActiveTable: TButton;
    BtnClearGrid: TButton;
    BitBtn1: TBitBtn;
    FDStoredProc1: TFDStoredProc;
    BtnActiveStoredProc: TButton;
    LblActivateItem: TLabel;
    procedure BtnActiveTableClick(Sender: TObject);
    procedure BtnClearGridClick(Sender: TObject);
    procedure BtnActivateQuery1Click(Sender: TObject);
    procedure BtnActivateQuery2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnActiveStoredProcClick(Sender: TObject);
  private
    { Private declarations }
    fLoginEnabled : boolean;
  public
    { Public declarations }
  end;

var
  DBViewFrm_u: TDBViewFrm_u;

implementation

{$R *.dfm}

{______________________________________________________________________________}
procedure TDBViewFrm_u.FormCreate(Sender: TObject);
begin
  fLoginEnabled := True;
  FDConnection1.Params.Password.Empty;
  FDConnection1.LoginPrompt := True;
end;
{______________________________________________________________________________}
procedure TDBViewFrm_u.BtnActivateQuery1Click(Sender: TObject);
begin
  DataSource1.DataSet := FDQuery1;
  FDQuery1.Active := True;
  LblActivateItem.Caption := 'Query 1';
end;

procedure TDBViewFrm_u.BtnActivateQuery2Click(Sender: TObject);
begin
  DataSource1.DataSet := FDQuery2;
  FDQuery2.Active := True;
  LblActivateItem.Caption := 'Query 2';
end;

procedure TDBViewFrm_u.BtnActiveStoredProcClick(Sender: TObject);
begin
  DataSource1.DataSet := FDStoredProc1;
  FDStoredProc1.Active := True;
  LblActivateItem.Caption := 'Stored Proc';
end;

procedure TDBViewFrm_u.BtnActiveTableClick(Sender: TObject);
begin
  DataSource1.DataSet := FDTable1;
  FDTable1.Active := True;
  LblActivateItem.Caption := 'Table 1';
end;
{______________________________________________________________________________}
procedure TDBViewFrm_u.BtnClearGridClick(Sender: TObject);
begin
  DataSource1.DataSet.Close;
  LblActivateItem.Caption := 'No active';
end;

end.
