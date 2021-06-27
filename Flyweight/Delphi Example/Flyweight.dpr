program Flyweight;

uses
  Vcl.Forms,
  FactoryMethod.View.Main in 'View\FactoryMethod.View.Main.pas' {frmMain},
  Flyweight.Factory.FlyweightFactory in 'Factory\Flyweight.Factory.FlyweightFactory.pas',
  Flyweight.Util.Helper in 'Utils\Flyweight.Util.Helper.pas',
  Flyweight.Util.Utils in 'Utils\Flyweight.Util.Utils.pas',
  Flyweight.Util.Types in 'Utils\Flyweight.Util.Types.pas',
  Flyweight.Car in 'FlyweightClasses\Flyweight.Car.pas',
  Flyweight.Flyweight in 'FlyweightClasses\Flyweight.Flyweight.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
