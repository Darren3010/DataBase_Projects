unit DataBases_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    BtnNext: TButton;
    BtnPrevious: TButton;
    BtnLast: TButton;
    BtnFirst: TButton;
    BtnDisplay: TButton;
    BtnRecord: TButton;
    BtnNumber: TButton;
    RichEdit1: TRichEdit;
    BtnDelete: TButton;
    BtnTotal: TButton;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
    procedure BtnPreviousClick(Sender: TObject);
    procedure BtnLastClick(Sender: TObject);
    procedure BtnFirstClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnDisplayClick(Sender: TObject);
    procedure BtnRecordClick(Sender: TObject);
    procedure BtnNumberClick(Sender: TObject);
    procedure BtnTotalClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses DMDataBases_u;
{$R *.dfm}

procedure TForm5.BtnDeleteClick(Sender: TObject);
VAR
  sInput: String;
begin
  sInput := InputBox('Confirmation', 'Y/N', '');
  if UpperCase(sInput) = 'Y' then
  begin
    with DMDataBases do
      TblDataBases.Delete;
    showmessage('Delete successful');
  end
  else
  begin
    showmessage('Delete terminated');
  end;

end;

procedure TForm5.BtnDisplayClick(Sender: TObject);
VAR
  sKey: String;
begin
  RichEdit1.Paragraph.Tabcount := 2;
  RichEdit1.Paragraph.Tab[0] := 90;
  RichEdit1.Paragraph.Tab[1] := 90;
  RichEdit1.Lines.Add('Product Name' + #9 + 'Units in stock');
  RichEdit1.Lines.Add
    (#7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 +
      #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 +
      #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7);
  sKey := InputBox('Product ID', 'Enter a product ID', '');
  with DMDataBases do
  begin
    TblDataBases.First;
    while not TblDataBases.eof do
    begin
      if pos(sKey, TblDataBases['ProductID']) > 0 then
      begin
        RichEdit1.Lines.Add(TblDataBases['Product Name'] + #9 + inttostr
            (TblDataBases['Units in stock']));
      end; // if end

      TblDataBases.Next;
    end; // while end

  end; // with end
end;

procedure TForm5.BtnFirstClick(Sender: TObject);
begin
  with DMDataBases do
    TblDataBases.First;

end;

procedure TForm5.BtnLastClick(Sender: TObject);
begin
  with DMDataBases do
    TblDataBases.Last;
end;

procedure TForm5.BtnNextClick(Sender: TObject);
begin
  with DMDataBases do
    TblDataBases.Next;
end;

procedure TForm5.BtnNumberClick(Sender: TObject);
VAR
  iAdjust, iUnits: integer;
  sProductId, sName, sUnits: String;
begin
  iAdjust := StrToInt(InputBox('Number of units',
      'Enter the no. of units that have arrived', ''));
  with DMDataBases do
  begin
    TblDataBases.Edit;
    sName := TblDataBases['Product Name'];
    TblDataBases['Units in stock'] := TblDataBases['Units in stock'] + iAdjust;
    iUnits := TblDataBases['Units in stock'];
    sUnits := inttostr(iUnits);
    sProductId := (copy(sName, 1, 2)) + (copy(sUnits, 1, 2));
    sProductId := UpperCase(sProductId);
    TblDataBases['ProductID'] := sProductId;
    TblDataBases.Post;
    TblDataBases.Refresh;
  end;
end;

procedure TForm5.BtnPreviousClick(Sender: TObject);
begin
  with DMDataBases do
    TblDataBases.prior;
end;

procedure TForm5.BtnRecordClick(Sender: TObject);
VAR
  sProductId, sName, sUnits: String;
  iUnits: integer;
  dArrived: TDate;
begin

  sName := InputBox('Product Name', 'Enter the product name', '');
  iUnits := StrToInt(InputBox('Units in stock', 'Enter the no. of units', ''));
  sUnits := inttostr(iUnits);
  sProductId := (copy(sName, 1, 2)) + (copy(sUnits, 1, 2));
  sProductId := UpperCase(sProductId);
  dArrived := Date;
  with DMDataBases do
  begin
    TblDataBases.Edit;
    TblDataBases.Last;
    TblDataBases.insert;
    TblDataBases['ProductID'] := sProductId;
    TblDataBases['Product Name'] := sName;
    TblDataBases['Units in stock'] := iUnits;
    TblDataBases['When the product arrived'] := dArrived;
    TblDataBases.Post;
    TblDataBases.Refresh;
  end; // with end
end;

procedure TForm5.BtnTotalClick(Sender: TObject);
VAR
  iTotal, iNo: integer;
begin
  iTotal := 0;
  with DMDataBases do
  begin
    TblDataBases.First;
    while not TblDataBases.eof do
    begin
      iNo := TblDataBases['Units in stock'];
      iTotal := iTotal + iNo;
      TblDataBases.Next;
    end;
    RichEdit1.Lines.Add('The total amount of stock in the store is: ' + inttostr
        (iTotal));
  end;
end;

procedure TForm5.Button1Click(Sender: TObject);
VAR
  num: integer;
begin
  num := DMDataBases.TblDataBases.RecordCount;
  showmessage(inttostr(num));
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
  DBGrid1.Columns[0].Width := 100;
  DBGrid1.Columns[1].Width := 200;
  DBGrid1.Columns[2].Width := 150;
  DBGrid1.Columns[3].Width := 200;
end;

end.
