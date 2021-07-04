unit Observer.Interfaces.Concretes.ConcreteObserverB;

interface

uses
  Observer.Interfaces.ObserverSubject;

// Concrete Observers react to the updates issued by the Subject they had
// been attached to.

// Os Observers Concretos reagem às atualizações emitidas pelo Subject nos quais
// eles foram anexados

type
  TConcreteObserverB = class(TInterfacedObject, IObserver)
  public
    procedure Update(ASubject: ISubject);
  end;

implementation

uses
  Observer.Interfaces.Concretes.Subject, Observer.Util.Utils;

{ TConcreteObserverB }

procedure TConcreteObserverB.Update(ASubject: ISubject);
begin
  if (ASubject.GetState = 0) or (ASubject.GetState >= 2) then
    TUtilsSingleton.WriteLog('ConcreteObserverB: Reacted to the event.');

end;

end.
