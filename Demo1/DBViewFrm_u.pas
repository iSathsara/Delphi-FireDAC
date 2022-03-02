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
    procedure BtnAllClick(Sender: TObject);
    procedure BtnCustomersClick(Sender: TObject);
    procedure BtnPhoneNoClick(Sender: TObject);
    procedure BtnAddressClick(Sender: TObject);
    procedure BtnCountryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// SQL Queries
Const
  _ALL_DETAILS_ = 'SELECT * FROM CUSTOMER';
  _CUSTOMERS_   = 'SELECT CUST_NO,CUSTOMER FROM CUSTOMER';
  _PHONE_       = 'SELECT CUST_NO,CUSTOMER,PHONE_NO FROM CUSTOMER';
  _COUNTRY_     = 'SELECT CUST_NO,CUSTOMER,COUNTRY FROM CUSTOMER';
  _ADDRESS_     = 'SELECT CUST_NO,CUSTOMER,ADDRESS_LINE1,ADDRESS_LINE2,CITY, STATE_PROVINCE FROM CUSTOMER';

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

end.
