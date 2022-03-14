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
    BtnDelete: TButton;
    BtnEdit: TButton;
    BtnEditRecord: TButton;
    PanelTop: TPanel;
    PanelBottom: TPanel;
    procedure BtnAllClick(Sender: TObject);
    procedure BtnCustomersClick(Sender: TObject);
    procedure BtnPhoneNoClick(Sender: TObject);
    procedure BtnAddressClick(Sender: TObject);
    procedure BtnCountryClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnInsertClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnEditRecordClick(Sender: TObject);
  private
    { Private declarations }
    fCustomerNo: String;
    fName: String;
    fPhone: String;
    fAddress: String;
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
  // shortcut
  with FDQueryCustomers do begin
   Close;
   SQL.Clear;
   SQL.Add(_CUSTOMERS_);
   Open;
  end;
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
// INSERT RECORD
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
  FDQueryCustomers.SQL.Add('VALUES ('+QuotedStr(CustName)+','+QuotedStr(CustPhone)+','+QuotedStr(CustAddress)+')');
  FDQueryCustomers.ExecSQL;      // execSQL is used instead of Open.

  // success message.
    if FDQueryCustomers.RowsAffected > 0 then
       ShowMessage('Record Added')
    else
       ShowMessage('Record not added!');

  EdtName.Text := '';
  EdtPhone.Text := '';
  EdtAddress.Text := '';

  // shortcut
  with FDQueryCustomers do begin
    Close;
    SQL.Clear;
    SQL.Add(_ALL_DETAILS_);
    Open;
  end;

end;
{______________________________________________________________________________}
// DELETE RECORD
procedure TForm1.BtnDeleteClick(Sender: TObject);
Var
  keyword : String;
begin
  keyword := EdtSearch.Text;
  if keyword <> EmptyStr then begin
    FDQueryCustomers.Close;
    FDQueryCustomers.SQL.Clear;
    FDQueryCustomers.SQL.Add('DELETE FROM CUSTOMER WHERE CUST_NO = '+keyword);
    FDQueryCustomers.ExecSQL;

    // success message.
    if FDQueryCustomers.RowsAffected > 0 then
       ShowMessage('Delete successful')
    else
       ShowMessage('Delete Failed!');

    EdtSearch.Text := '';

    // shortcut
    with FDQueryCustomers do begin
      Close;
      SQL.Clear;
      SQL.Add(_ALL_DETAILS_);
      Open;
    end;

  end else
    ShowMessage('Customer Number is Empty!');

end;
{______________________________________________________________________________}
// UPDATE RECORD
procedure TForm1.BtnEditClick(Sender: TObject);
begin

  if not ((fName = EmptyStr) or (fPhone = EmptyStr) or (fAddress = EmptyStr)) then begin
    with FDQueryCustomers do begin
      Edit;     // put into edit mode
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CUSTOMER CUST');
      SQL.Add('SET CUST.CUSTOMER = '+QuotedStr(fName)+',CUST.PHONE_NO = '+QuotedStr(fPhone)+',CUST.ADDRESS_LINE1 = '+QuotedStr(fAddress));
      SQL.Add('WHERE CUST.CUST_NO = '+fCustomerNo);
      Post;    // post, instead of execsql.

      if RowsAffected > 0 then
        ShowMessage('Record Updated!')
      else
        ShowMessage('Record not updated!');
    end;

    // shortcut...
    with FDQueryCustomers do begin
      Close;
      SQL.Clear;
      SQL.Add(_ALL_DETAILS_);
      Open;
    end;
  end else
    ShowMessage('Fields Can not be empty!');

  EdtName.Text    := '';
  EdtPhone.Text   := '';
  EdtAddress.Text := '';

end;
{______________________________________________________________________________}
// Record to be Update
procedure TForm1.BtnEditRecordClick(Sender: TObject);
var
  CustNo: String;
begin
  CustNo := EdtSearch.Text;

  if CustNo <> EmptyStr then begin
    // Locate is used to capture Record data from the table, using ID.
    if FDQueryCustomers.Locate('CUST_NO', CustNo, []) then begin

      // Customer details related to CUST_NO
      EdtName.Text := FDQueryCustomers['CUSTOMER'];
      EdtPhone.Text := FDQueryCustomers['PHONE_NO'];
      EdtAddress.Text := FDQueryCustomers['ADDRESS_LINE1'];

      // assign values to private vars, used in Update operation.
      fCustomerNo := CustNo;
      fName := EdtName.Text;
      fAddress := EdtAddress.Text;
      fPhone := EdtPhone.Text;

      BtnInsert.Enabled := False;
    end;

  end else
    ShowMessage('Customer Number is empty!');

end;
{______________________________________________________________________________}
procedure TForm1.BtnCancelClick(Sender: TObject);
begin
  EdtName.Text := '';
  EdtPhone.Text := '';
  EdtAddress.Text := '';
end;

end.
