program pAdapter;

uses
  Vcl.Forms,
  uMain in 'View\uMain.pas' {frmMain},
  Adapter.Interfaces.ITarget in 'Interfaces\Adapter.Interfaces.ITarget.pas',
  Adapter.Classes.Adaptee in 'Classes\Adapter.Classes.Adaptee.pas',
  Adapter.Classes.Adapter in 'Classes\Adapter.Classes.Adapter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
