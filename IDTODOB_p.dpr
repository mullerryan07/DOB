program IDTODOB_p;

uses
  Vcl.Forms,
  IDTODOB_u in 'IDTODOB_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
