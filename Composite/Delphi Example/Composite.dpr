program Composite;

uses
  Vcl.Forms,
  Composite.Main in 'View\Composite.Main.pas' {frmMain},
  Composite.Component in 'Components\Composite.Component.pas',
  Composite.Leaf in 'Components\Composite.Leaf.pas',
  Composite.CompositeComponent in 'Composite\Composite.CompositeComponent.pas',
  Composite.Clients.Client in 'Clients\Composite.Clients.Client.pas',
  Composite.Interfaces.IClient in 'Interfaces\Composite.Interfaces.IClient.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
