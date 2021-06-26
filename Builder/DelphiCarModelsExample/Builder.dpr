program Builder;

uses
  Vcl.Forms,
  Builder.Views.Main in 'Views\Builder.Views.Main.pas' {frmMain},
  Builder.Interfaces.IBuilder in 'Interfaces\Builder.Interfaces.IBuilder.pas',
  Builder.Interfaces.IEngine in 'Interfaces\Builder.Interfaces.IEngine.pas',
  Builder.Interfaces.IDirector in 'Interfaces\Builder.Interfaces.IDirector.pas',
  Builder.Concretes.Director in 'Concretes\Builder.Concretes.Director.pas',
  Builder.Interfaces.IGPS in 'Interfaces\Builder.Interfaces.IGPS.pas',
  Builder.ProductParts.Engine in 'ProductParts\Builder.ProductParts.Engine.pas',
  Builder.Concretes.Builder.Car in 'Concretes\Builder.Concretes.Builder.Car.pas',
  Builder.Concretes.Builder.Manual in 'Concretes\Builder.Concretes.Builder.Manual.pas',
  Builder.ProductParts.GPS in 'ProductParts\Builder.ProductParts.GPS.pas',
  Builder.Interfaces.ITripComputer in 'Interfaces\Builder.Interfaces.ITripComputer.pas',
  Builder.ProductParts.TripComputer in 'ProductParts\Builder.ProductParts.TripComputer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
