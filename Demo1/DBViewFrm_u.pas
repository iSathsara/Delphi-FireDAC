unit DBViewFrm_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DataModule_u, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSourceCustomer: TDataSource;
    FDQueryCustomers: TFDQuery;
    BtnCustomers: TButton;
    BtnPhoneNo: TButton;
    BtnAddress: TButton;
    BtnCountry: TButton;
    BitBtn1: TBitBtn;
    BtnAll: TButton;
    EdtSearch: TEdit;
    BtnSearch: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BtnInsert: TButton;
    BtnCancel: TButton;
    EdtName: TEdit;
    EdtPhone: TEdit;
    EdtAddress: TEdit;
    procedure BtnAllClick(Sender: TObject);
    procedure BtnCustomersClick(Sender: TObject);
    procedure BtnPhoneNoClick(Sender: TObject);
    procedure BtnAddressClick(Sender: TObject);
    procedure BtnCountryClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnInsertClick(Sender: TObject);
  private
    { Private declarations }
    function ProcessStr(aKeyword : String): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// SQL Queries
Const
  _ALL_DETAILS_ = 'SELECT * FROM CUSTOMER CSTMR';
  _CUSTOMERS_   = 'SELECT CSTMR.CUST_NO,CSTMR.CUSTOMER FROM CUSTOMER CSTMR';
  _PHONE_       = 'SELECT CSTMR.CUST_NO,CSTMR.CUSTOMER,CSTMR.PHONE_NO FROM CUSTOMER CSTMR';
  _COUNTRY_     = 'SELECT CSTMR.CUST_NO,CSTMR.CUSTOMER,CSTMR.COUNTRY FROM CUSTOMER CSTMR';
  _ADDRESS_     = 'SELECT CSTMR.CUST_NO,CSTMR.CUSTOMER,CSTMR.ADDRESS_LINE1,CSTMR.ADDRESS_LINE2,CSTMR.CITY, CSTMR.STATE_PROVINCE FROM CUSTOMER CSTMR';

procedure TForm1.BtnAllClick(Sender: TObject);
begin
  FDQueryCustomers.Close;                               // close
  FDQueryCustomers.SQL.Clear;                           // clear previous statements
  FDQueryCustomers.SQL.Add(_ALL_DETAILS_);              // query
  FDQueryCustomers.Open;                                // execute query
end;

procedure TForm1.BtnCountryClick(Sender: TObject);
begin
  FDQueryCustomers.Close;
  FDQueryCustomers.SQL.Clear;
  FDQueryCustomers.SQL.Add(_COUNTRY_);
  FDQueryCustomers.Open;
end;

procedure TForm1.BtnCustomersClick(Sender: TObject);
begin
  FDQueryCustomers.Close;
  FDQueryCustomers.SQL.Clear;
  FDQueryCustomers.SQL.Add(_CUSTOMERS_);
  FDQueryCustomers.Open;
end;

procedure TForm1.BtnPhoneNoClick(Sender: TObject);
begin
  FDQueryCustomers.Close;
  FDQueryCustomers.SQL.Clear;
  FDQueryCustomers.SQL.Add(_PHONE_);
  FDQueryCustomers.Open;
end;

procedure TForm1.BtnAddressClick(Sender: TObject);
begin
  FDQueryCustomers.Close;
  FDQueryCustomers.SQL.Clear;
  FDQueryCustomers.SQL.Add(_ADDRESS_);
  FDQueryCustomers.Open;
end;

procedure TForm1.BtnSearchClick(Sender: TObject);
Var
  keyword: String;
begin
  keyword := EdtSearch.Text;
//  keyword := ProcessStr(keyword);

  if keyword <> EmptyStr then begin
    FDQueryCustomers.Close;
    FDQueryCustomers.SQL.Clear;
    FDQueryCustomers.SQL.Add('SELECT * FROM CUSTOMER CSTMR WHERE CSTMR.CUST_NO = '+keyword);
    if FDQueryCustomers.RowsAffected > 0 then
      FDQueryCustomers.Open
    else
      ShowMessage('No Records Found!');
  end else
    ShowMessage('Input field is empty!');

  EdtSearch.Text := '';
end;
{______________________________________________________________________________}
{______________________________________________________________________________}
procedure TForm1.BtnInsertClick(Sender: TObject);
Var
  CustomerNo : Integer;
  CustName   : String;
  CustPhone  : String;
  CustAddress: String;
begin
  CustName := EdtName.Text;
  CustPhone := EdtPhone.Text;
  CustAddress := EdtAddress.Text;

  FDQueryCustomers.Close;
  FDQueryCustomers.SQL.Clear;
  FDQueryCustomers.SQL.Add('INSERT INTO CUSTOMER (CUSTOMER,PHONE_NO,ADDRESS_LINE1)');
  FDQueryCustomers.SQL.Add('VALUES ('''+CustName+''','''+CustPhone+''','''+CustAddress+''')');
  FDQueryCustomers.ExecSQL;      // execSQL is used instead of Open.

  EdtName.Text := '';
  EdtPhone.Text := '';
  EdtAddress.Text := '';

  FDQueryCustomers.Close;
  FDQueryCustomers.SQL.Clear;
  FDQueryCustomers.SQL.Add(_ALL_DETAILS_);
  FDQueryCustomers.Open;
end;
{______________________________________________________________________________}

{______________________________________________________________________________}
function TForm1.ProcessStr(aKeyword : String): String;
begin
  Result := ''+aKeyword+'';
end;

end.
