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
    BtnEnableLogin: TButton;
    BtnDisableLogin: TButton;
    procedure BtnActiveTableClick(Sender: TObject);
    procedure BtnClearGridClick(Sender: TObject);
    procedure BtnActivateQuery1Click(Sender: TObject);
    procedure BtnActivateQuery2Click(Sender: TObject);
    procedure BtnEnableLoginClick(Sender: TObject);
    procedure BtnDisableLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBViewFrm_u: TDBViewFrm_u;

implementation

{$R *.dfm}


procedure TDBViewFrm_u.BtnActivateQuery1Click(Sender: TObject);
begin
  DataSource1.DataSet.Close;
  DataSource1.DataSet := FDQuery1;
  FDQuery1.Active := True;
end;

procedure TDBViewFrm_u.BtnActivateQuery2Click(Sender: TObject);
begin
  DataSource1.DataSet.Close;
  DataSource1.DataSet := FDQuery2;
  FDQuery2.Active := True;
end;

procedure TDBViewFrm_u.BtnActiveTableClick(Sender: TObject);
begin
  DataSource1.DataSet.Close;
  DataSource1.DataSet := FDTable1;
  FDTable1.Active := True;
end;

procedure TDBViewFrm_u.BtnClearGridClick(Sender: TObject);
begin
  DataSource1.DataSet.Close;
end;

procedure TDBViewFrm_u.BtnDisableLoginClick(Sender: TObject);
begin
  FDConnection1.Params.Password := '221266';
  FDConnection1.LoginPrompt := False;
end;

procedure TDBViewFrm_u.BtnEnableLoginClick(Sender: TObject);
begin
  FDConnection1.Params.Password.Empty;
  FDConnection1.LoginPrompt := True;
end;

end.
