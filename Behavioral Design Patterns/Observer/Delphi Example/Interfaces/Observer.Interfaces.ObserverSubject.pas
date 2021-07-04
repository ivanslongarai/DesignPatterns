unit Observer.Interfaces.ObserverSubject;

interface

type
  ISubject = interface;

  // Receive update from subject
  // Recebe update do subject
  IObserver = interface
    ['{F7D673F8-7ECB-4BA3-A00C-47B8886A2A53}']
    procedure Update(ASubject: ISubject);
  end;

  ISubject = interface
    ['{E2E5BCA0-3E18-48D9-992B-FB7042F0D3EF}']

    // Attach an observer to the subject.
    // Anexa um observer ao subject.
    procedure Attach(AObserver: IObserver);

    // Detach an observer from the subject.
    // Separa um observer do subject.
    procedure Detach(AObserver: IObserver);

    // Notify all observers about an event.
    // Notifica todos observers sobre um evento
    procedure Notify;

    function GetState: Integer;
    procedure SomeBusinessLogic;
  end;

implementation

end.
