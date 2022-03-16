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
    BtnScanForward: TButton;
    BtnScanBackward: TButton;
    BtnMoveBy: TButton;
    BtnSearch: TButton;
    BtnGetBookmark: TButton;
    BtnGotoBookmark: TButton;
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
    RadioControls: TRadioGroup;
    SpnMoveRecord: TSpinEdit;
    EdtSearch: TEdit;
    BtnEditMode: TButton;
    BtnPostMode: TButton;
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
    procedure BtnScanForwardClick(Sender: TObject);
    procedure BtnScanBackwardClick(Sender: TObject);
    procedure BtnMoveByClick(Sender: TObject);
    procedure BtnGetBookmarkClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnGotoBookmarkClick(Sender: TObject);
    procedure BtnEditModeClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
    fBookmark : TBookmark;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  StopWatch : TStopwatch;

implementation

{$R *.dfm}

// Stopwatch procedures
// stopwatch comes with System.Diagnostics
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

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
  BtnEditMode.Enabled := True;

  // this will activate the db navigator
  DBNavigator1.DataSource := DataSource1;
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
// Top panel 2 - Controls
procedure TForm2.BtnScanBackwardClick(Sender: TObject);
begin
  Start;
  if RadioControls.ItemIndex = 0 then begin

    FDQuery1.Last;
    while not FDQuery1.Bof do
      FDQuery1.Prior;

  end else begin
    // disable scan when ItemIndex = 1
    FDQuery1.DisableControls;
  end;
  Complete;
end;

procedure TForm2.BtnScanForwardClick(Sender: TObject);
begin
  Start;
  if RadioControls.ItemIndex = 0 then begin   // ItemIndex represents the Enable button in GUI.

    FDQuery1.First;

    while not FDQuery1.Eof do
      FDQuery1.Next;

  end else begin
    // disable scan when ItemIndex = 1
    FDQuery1.DisableControls;
  end;
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
// Panel 3 Controls
procedure TForm2.BtnMoveByClick(Sender: TObject);
begin
  Start;
  FDQuery1.MoveBy(SpnMoveRecord.Value);        // Use MoveBy() to move through records
  SpnMoveRecord.Value := FDQuery1.RecNo;
  Complete;
end;

// Bookmark
procedure TForm2.BtnGetBookmarkClick(Sender: TObject);
begin
  fBookmark := FDQuery1.GetBookmark;
  BtnGetBookmark.Enabled := True;
  BtnGotoBookmark.Enabled := True;
end;

procedure TForm2.BtnGotoBookmarkClick(Sender: TObject);
begin
  Start;
  FDQuery1.GotoBookmark(fBookmark);
  Complete;
end;

// Search
procedure TForm2.BtnSearchClick(Sender: TObject);
var RecNo: Integer;
begin
  Start;

  if EdtSearch.Text <> EmptyStr then begin

    RecNo := StrToInt(EdtSearch.Text);


    while (not FDQuery1.Eof) and (not FDQuery1.Locate('CUST_NO', RecNo, [])) do begin

      if not FDQuery1.Locate('CUST_NO', RecNo, []) then begin
        ShowMessage('Record not found!');
        FDQuery1.First;
        break;
      end;

      FDQuery1.Next;
    end;

  end else
    ShowMessage('Input Field is empty!');

  Complete;
end;

// Edit Mode
procedure TForm2.BtnEditModeClick(Sender: TObject);
begin
  Start;
  FDQuery1.Edit;
  Complete;
  BtnPostMode.Enabled := True;
  BtnEditMode.Enabled := False;
end;

// Post Mode


end.
