unit Observer.Interfaces.Concretes.Subject;

interface

uses
  Observer.Interfaces.ObserverSubject, System.Generics.Collections;

type
  TSubject = class(TInterfacedObject, ISubject)
  private
    // List of subscribers. In real life, the list of subscribers can be
    // stored more comprehensively (categorized by event type, etc.).

    // Lista de subscribers. Na vida real, a lista de subscribers pode ser
    // armazenada de forma mais abrangente (categorizado por tipo de evento, etc.).
    FObservers: TList<IObserver>;

    // For the sake of simplicity, the Subject's state, essential to all
    // subscribers, is stored in this variable.

    // Por uma questão de simplicidade, o estado do subject, essencial para todos
    // assinantes, é armazenado nesta variável.
    FState: Integer;
    procedure SetState(const Value: Integer);
  public

    constructor Create;
    destructor Destroy; override;
    function GetState: Integer;

    property State: Integer read GetState write SetState;

    // The subscription management methods.
    // Métodos de gerenciamento de subscription.
    procedure Attach(AObserver: IObserver);
    procedure Detach(AObserver: IObserver);
    procedure Notify;

    // Usually, the subscription logic is only a fraction of what a Subject
    // can really do. Subjects commonly hold some important business logic,
    // that triggers a notification method whenever something important is
    // about to happen (or after it).

    // Normalmente, a lógica de subscription é apenas uma fração do que um Subject
    // pode realmente fazer. Os Subjects geralmente possuem alguma lógica de negócios importante,
    // que aciona um método de notificação sempre que algo importante esta
    // prestes a acontecer (ou depois).

    procedure SomeBusinessLogic;
  end;

implementation

uses
  Observer.Util.Utils, Winapi.Windows, System.Math, System.SysUtils;

{ TSubject }

procedure TSubject.Attach(AObserver: IObserver);
begin
  TUtilsSingleton.WriteLog('Subject: Attached an observer.');
  FObservers.Add(AObserver);
end;

constructor TSubject.Create;
begin
  FObservers := TList<IObserver>.Create;
end;

destructor TSubject.Destroy;
begin
  FObservers.Free;
  inherited;
end;

procedure TSubject.Detach(AObserver: IObserver);
begin
  FObservers.Remove(AObserver);
  TUtilsSingleton.WriteLog('Subject: Detached an observer.');
end;

function TSubject.GetState: Integer;
begin
  Result := FState;
end;

procedure TSubject.Notify;
var
  oIObserver: IObserver;
begin
  TUtilsSingleton.WriteLog('Subject: Notifying observers...');
  for oIObserver in FObservers do
    oIObserver.Update(Self);
end;

procedure TSubject.SetState(const Value: Integer);
begin
  FState := Value;
end;

procedure TSubject.SomeBusinessLogic;
begin
  TUtilsSingleton.WriteLog('Subject: I am doing something important.');
  FState := RandomRange(0, 10);
  Sleep(15);
  TUtilsSingleton.WriteLog('Subject: My state has just changed to: ' +
    FState.ToString);
  Notify;
end;

end.
