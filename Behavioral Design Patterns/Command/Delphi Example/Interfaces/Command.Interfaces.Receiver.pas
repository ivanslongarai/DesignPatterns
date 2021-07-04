unit Command.Interfaces.Receiver;

interface

type
  IReceiver = interface
    ['{16DA2585-7AA7-4316-A20B-EC7B7BC9F795}']
    function DoSomething(AString: string): IReceiver;
    function DoSomethingElse(AString: string): IReceiver;
  end;

implementation

end.
