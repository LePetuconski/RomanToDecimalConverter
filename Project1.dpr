program Project1;

uses
  Vcl.Forms,
  UConversor in 'D:\Documents\Embarcadero\Studio\Projects\UConversor.pas' {Form1},
  UConvert3 in 'UConvert3.pas';


{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
