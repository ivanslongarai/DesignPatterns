program pCommand;

uses
  Vcl.Forms,
  Command.View.Main in 'View\Command.View.Main.pas' {frmMain},
  Command.Interfaces.ICommand in 'Interfaces\Command.Interfaces.ICommand.pas',
  Command.Commands.SimpleCommand in 'Commands\Command.Commands.SimpleCommand.pas',
  Command.Utils.Util in 'Utils\Command.Utils.Util.pas',
  Command.Commands.ComplexCommand in 'Commands\Command.Commands.ComplexCommand.pas',
  Command.Receivers.Receiver in 'Receivers\Command.Receivers.Receiver.pas',
  Command.Invokers.Invoker in 'Invoker\Command.Invokers.Invoker.pas',
  Command.Interfaces.Receiver in 'Interfaces\Command.Interfaces.Receiver.pas',
  Command.Interfaces.Invoker in 'Interfaces\Command.Interfaces.Invoker.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
