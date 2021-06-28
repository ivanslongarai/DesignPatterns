program Facade;

uses
  Vcl.Forms,
  uMain in 'View\uMain.pas' {frmMain},
  Facade.SubSystem.SubSystem1 in 'SubSystem\Facade.SubSystem.SubSystem1.pas',
  Facade.SubSystem.SubSystem2 in 'SubSystem\Facade.SubSystem.SubSystem2.pas',
  Facade.Facade.Facade in 'Facade\Facade.Facade.Facade.pas',
  Facade.Client.Client in 'Facade.Client.Client.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
