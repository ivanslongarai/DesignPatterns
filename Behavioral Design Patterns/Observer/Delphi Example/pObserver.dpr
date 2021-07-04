program pObserver;

uses
  Vcl.Forms,
  Observer.View.Main in 'View\Observer.View.Main.pas' {frmMain},
  Observer.Interfaces.ObserverSubject in 'Interfaces\Observer.Interfaces.ObserverSubject.pas',
  Observer.Interfaces.Concretes.Subject in 'Concretes\Observer.Interfaces.Concretes.Subject.pas',
  Observer.Util.Utils in 'Util\Observer.Util.Utils.pas',
  Observer.Interfaces.Concretes.ConcreteObserverA in 'Concretes\Observer.Interfaces.Concretes.ConcreteObserverA.pas',
  Observer.Interfaces.Concretes.ConcreteObserverB in 'Concretes\Observer.Interfaces.Concretes.ConcreteObserverB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
