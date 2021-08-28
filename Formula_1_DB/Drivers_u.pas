unit Drivers_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls;

type
  TFrmDrivers = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Panel1: TPanel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    RichEdit1: TRichEdit;
    Button11: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDrivers: TFrmDrivers;

implementation

uses DMDrivers_u;
{$R *.dfm}

procedure TFrmDrivers.Button10Click(Sender: TObject);
begin
  with dmdrivers do
  begin
    tbldrivers.first;
  end;
end;

procedure TFrmDrivers.Button11Click(Sender: TObject);
var
  sAns: String;
begin
  sAns := inputbox('Delete', 'Y/N', '');
  with dmdrivers do
  begin
    if uppercase(sAns) = 'Y' then
    begin
      tbldrivers.Delete;
    end
    else
    begin
      showmessage('Delete terminated.');
    end;

  end;

end;

procedure TFrmDrivers.Button1Click(Sender: TObject);
var
  iCount: Integer;
begin
  iCount := 0;
  RichEdit1.Lines.Add('Driver:' + #9'Podiums');
  RichEdit1.Lines.Add
    (#7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 +
      #7 + #7 + #7 + #7 + #7);
  with dmdrivers do
  begin
    tbldrivers.first;
    while not tbldrivers.eof do
    begin
      if tbldrivers['Podiums'] > 49 then
      begin
        RichEdit1.Lines.Add(tbldrivers['Driver'] + #9 + inttostr
            (tbldrivers['Podiums']));
        iCount := iCount + 1;
      end;
      tbldrivers.Next;
    end; // while end
    RichEdit1.Lines.Add
      (#7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 +
        #7 + #7 + #7 + #7 + #7);
    RichEdit1.Lines.Add(
      'The total no. of F1 Drivers with 50 or more podiums is: ' + inttostr
        (iCount));

  end; // With end
end;

procedure TFrmDrivers.Button2Click(Sender: TObject);
begin
  RichEdit1.Lines.Add('Driver' + #9 + 'Wins');
  RichEdit1.Lines.Add
    (#7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 +
      #7 + #7 + #7 + #7 + #7);
  with dmdrivers do
  begin
    tbldrivers.first;
    while not tbldrivers.eof do
    begin
      if tbldrivers['Wins'] > 0 then
      begin
        RichEdit1.Lines.Add(tbldrivers['Driver'] + #9 + inttostr
            (tbldrivers['Wins']));
      end; // if end
      tbldrivers.Next;
    end; // while end
    RichEdit1.Lines.Add
      (#7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 +
        #7 + #7 + #7 + #7 + #7);
  end; // with end
end;

procedure TFrmDrivers.Button3Click(Sender: TObject);
var
  sTeam: String;
begin
  RichEdit1.Lines.Add('Drivers in this team are: ');
  RichEdit1.Lines.Add
    (#7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 + #7 +
      #7 + #7 + #7 + #7 + #7);
  sTeam := inputbox('Team', 'Enter a team name', '');
  with dmdrivers do
  begin
    tbldrivers.first;
    while not tbldrivers.eof do
    begin
      if pos(sTeam, tbldrivers['Team']) > 0 then
      begin
        RichEdit1.Lines.Add(tbldrivers['Driver'] + #9 + tbldrivers['Team']);
      end; // if end
      tbldrivers.Next;
    end; // While end

  end; // with end
end;

procedure TFrmDrivers.Button4Click(Sender: TObject);
var
  sDriver: String;
begin
  sDriver := inputbox('Driver', 'Enter a Drivers name', '');
  with dmdrivers do
  begin
    tbldrivers.first;
    while not tbldrivers.eof do
    begin
      if pos(sDriver, tbldrivers['Driver']) > 0 then
      begin
        RichEdit1.Lines.Add(tbldrivers['Team'] + #9 + tbldrivers['Driver']
            + #9 + inttostr(tbldrivers['Wins']));
      end; // if end
      tbldrivers.Next;
    end; // while end

  end; // with end
end;

procedure TFrmDrivers.Button5Click(Sender: TObject);
begin
  with dmdrivers do
  begin
    tbldrivers.Edit;
    tbldrivers['Wins'] := tbldrivers['Wins'] + 1;
    tbldrivers.Post;
    tbldrivers.Refresh;

  end;
end;

procedure TFrmDrivers.Button6Click(Sender: TObject);
VAR
  iID, iWins, iSeasons, iPodiums: Integer;
  sDriver, sTeam: String;
begin
  sDriver := inputbox('Driver', 'Enter a driver', '');
  sTeam := inputbox('Team', 'Enter a team', '');
  iWins := strtoint(inputbox('Wins', 'Enter the number of wins', ''));
  iPodiums := strtoint(inputbox('Podiums', 'Enter the number of podiums', ''));
  iSeasons := strtoint(inputbox('Seasons', 'Enter the amount of seasons', ''));
  with dmdrivers do
  begin
    // tbldrivers.Edit;
    tbldrivers.Last;
    tbldrivers.Insert;
    tbldrivers['ID'] := tbldrivers.RecordCount + 1;
    tbldrivers['Driver'] := sDriver;
    tbldrivers['Team'] := sTeam;
    tbldrivers['Seasons'] := iSeasons;
    tbldrivers['Wins'] := iWins;
    tbldrivers['Podiums'] := iPodiums;
    tbldrivers.Post;
    tbldrivers.Refresh;

  end;
end;

procedure TFrmDrivers.Button7Click(Sender: TObject);
begin
  with dmdrivers do
  begin
    tbldrivers.Next;
  end;
end;

procedure TFrmDrivers.Button8Click(Sender: TObject);
begin
  with dmdrivers do
  begin
    tbldrivers.Last;
  end;
end;

procedure TFrmDrivers.Button9Click(Sender: TObject);
begin
  with dmdrivers do
  begin
    tbldrivers.Prior;
  end;
end;

procedure TFrmDrivers.FormActivate(Sender: TObject);
begin
  DBGrid1.Columns[0].Width := 30;
  DBGrid1.Columns[1].Width := 150;
  DBGrid1.Columns[2].Width := 180;
  DBGrid1.Columns[3].Width := 100;
  DBGrid1.Columns[4].Width := 120;
  DBGrid1.Columns[5].Width := 110;
  RichEdit1.paragraph.tabcount := 2;
  RichEdit1.paragraph.Tab[0] := 100;
  RichEdit1.paragraph.Tab[1] := 100;

end;

procedure TFrmDrivers.FormCreate(Sender: TObject);
begin
  FrmDrivers.Position := podesktopcenter;
end;

end.
