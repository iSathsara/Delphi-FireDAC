unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Samples.Spin, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, Vcl.Menus, FireDAC.Comp.UI,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Diagnostics,
  DBMocule, TypInfo, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnFirst: TButton;
    BtnPrev: TButton;
    BtnLast: TButton;
    BtnNext: TButton;
    RadEnable: TRadioButton;
    RadDisable: TRadioButton;
    BtnScanForward: TButton;
    BtnScanBackward: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    File1: TMenuItem;                            // main menu main item
    Open: TMenuItem;                             // main menu sub-item
    Close: TMenuItem;                            // main menu sub-item
    N1: TMenuItem;                               // horizontal line in Menu
    Exit: TMenuItem;                             // main menu sub-item
    StatusBar1: TStatusBar;
    procedure FDQuery1AfterOpen(DataSet: TDataSet);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CloseClick(Sender: TObject);
    procedure FDQuery1AfterClose(DataSet: TDataSet);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure ExitClick(Sender: TObject);
    procedure OpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnFirstClick(Sender: TObject);
    procedure BtnLastClick(Sender: TObject);
    procedure BtnPrevClick(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  StopWatch : TStopwatch;

implementation

{$R *.dfm}

// Stopwatch procedures
{______________________________________________________________________________}
procedure Start;
begin
  StopWatch := TStopwatch.StartNew;
end;

procedure Complete;
begin
  StopWatch.Stop;
  Form2.StatusBar1.Panels[0].Text:= 'Elapsed Time: '+StopWatch.ElapsedMilliseconds.ToString+' miliseconds';
end;
{______________________________________________________________________________}
procedure TForm2.FormCreate(Sender: TObject);
begin
  FDQuery1.Active := True;
end;
{______________________________________________________________________________}
{______________________________________________________________________________}

// FDQuery
{______________________________________________________________________________}
procedure TForm2.FDQuery1AfterClose(DataSet: TDataSet);
begin
  Open.Enabled := True;
  Close.Enabled := False;
end;

procedure TForm2.FDQuery1AfterOpen(DataSet: TDataSet);
begin
  Open.Enabled := False;
  Close.Enabled := True;
end;
{______________________________________________________________________________}
{______________________________________________________________________________}

// DataSource
{______________________________________________________________________________}
procedure TForm2.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  // Display details in statusbar
  StatusBar1.Panels[1].Text:= 'Records '+IntToStr(FDQuery1.RecNo)+' of '+IntToStr(FDQuery1.RecordCount);
  StatusBar1.Panels[3].Text:= 'BOF = '+BoolToStr(FDQuery1.Bof, True)+' '+' EOF = '+BoolToStr(FDQuery1.Eof, True);
end;

procedure TForm2.DataSource1StateChange(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := 'Status: '+GetEnumName(TypeInfo(TDataSetState),Ord(FDQuery1.State));
end;
{______________________________________________________________________________}
{______________________________________________________________________________}
// Top panel 1 operations
procedure TForm2.BtnFirstClick(Sender: TObject);
begin
  Start;
  FDQuery1.First;
  Complete;
end;

procedure TForm2.BtnLastClick(Sender: TObject);
begin
  Start;
  FDQuery1.Last;
  Complete;
end;

procedure TForm2.BtnPrevClick(Sender: TObject);
begin
  Start;
  FDQuery1.Prior;
  Complete;
end;

procedure TForm2.BtnNextClick(Sender: TObject);
begin
  Start;
  FDQuery1.Next;
  Complete;
end;
{______________________________________________________________________________}
{______________________________________________________________________________}
// Main menu operations
procedure TForm2.CloseClick(Sender: TObject);
begin
  FDQuery1.Close;
end;

procedure TForm2.ExitClick(Sender: TObject);
begin
  // close the form

end;

procedure TForm2.OpenClick(Sender: TObject);
begin
  Start;
  FDQuery1.Open();
  Complete;
end;
{______________________________________________________________________________}
{______________________________________________________________________________}

end.
