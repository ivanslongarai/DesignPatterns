program pChainOfResponsibility;

uses
  Vcl.Forms,
  uMain in 'View\uMain.pas' {frmMain},
  ChainOfResponsibility.Interfaces.IHandler in 'Interfaces\ChainOfResponsibility.Interfaces.IHandler.pas',
  ChainOfResponsibility.AbstractClasses.AbstractHandler in 'AbstractClasses\ChainOfResponsibility.AbstractClasses.AbstractHandler.pas',
  ChainOfResponsibility.Handlers.MonkeyHandler in 'Handlers\ChainOfResponsibility.Handlers.MonkeyHandler.pas',
  ChainOfResponsibility.Util.StringClass in 'Util\ChainOfResponsibility.Util.StringClass.pas',
  ChainOfResponsibility.Handlers.SquirrelHandler in 'Handlers\ChainOfResponsibility.Handlers.SquirrelHandler.pas',
  ChainOfResponsibility.Handlers.DogHandler in 'Handlers\ChainOfResponsibility.Handlers.DogHandler.pas',
  ChainOfResponsibility.Clients.Client in 'Client\ChainOfResponsibility.Clients.Client.pas',
  ChainOfResponsibility.Util.Utils in 'Util\ChainOfResponsibility.Util.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
