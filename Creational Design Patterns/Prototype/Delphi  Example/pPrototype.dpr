program pPrototype;

uses
  Vcl.Forms,
  Prototype.View.Main in 'View\Prototype.View.Main.pas' {frmMain},
  Prototype.Classes.Person in 'Classes\Prototype.Classes.Person.pas',
  Prototype.Classes.IdInfo in 'Classes\Prototype.Classes.IdInfo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
