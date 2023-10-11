unit IDTODOB_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Math;

type
  TForm1 = class(TForm)
    ID: TEdit;
    Button1: TButton;
    redOutput: TRichEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
iOld : integer;
sID, sYear, SMonth, sDay, sFullDOB, sCurrentDate, sCYear, sCMonth, sCDay : string;
begin
 redOutput.Clear;

 sID := ID.Text;

  sYear:=copy(sID,1,2);
  sMonth:=copy(sID,3,2);
  sDay:=copy(sID,5,2);

  if StrToInt(sYear) < 19 then
  begin
    sYear:='20'+sYear;
  end
  else
    sYear:='19'+sYear;

    sCurrentDate:=DateToStr(Date);
    sCYear:=copy(sCurrentDate,1,4);
    sCMonth:=copy(sCurrentDate,6,2);
    sCDay:=copy(sCurrentDate,9,2);

     iOld := StrToInt(sCYear) - StrToInt(sYear);

    if StrToInt(sCMonth) < StrToInt(sMonth) then
    iOld := iOld -1;


     redOutput.Lines.Add('Age: ' + IntToStr(iOld));
     redOutput.Lines.Add('DOB: ' + sYear + '/' + sMonth + '/' + sDay);

    end;


end.
