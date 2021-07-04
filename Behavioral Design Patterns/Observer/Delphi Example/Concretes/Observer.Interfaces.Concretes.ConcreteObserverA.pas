unit Observer.Interfaces.Concretes.ConcreteObserverA;

interface

uses
  Observer.Interfaces.ObserverSubject;

// Concrete Observers react to the updates issued by the Subject they had
// been attached to.

// Os Observers Concretos reagem às atualizações emitidas pelo Subject nos quais
// eles foram anexados

type
  TConcreteObserverA = class(TInterfacedObject, IObserver)
  public
    procedure Update(ASubject: ISubject);
  end;

implementation

uses
  Observer.Interfaces.Concretes.Subject, Observer.Util.Utils;

{ TConcreteObserverA }

procedure TConcreteObserverA.Update(ASubject: ISubject);
begin
  if ASubject.GetState < 3 then
    TUtilsSingleton.WriteLog('ConcreteObserverA: Reacted to the event.');

end;

end.
