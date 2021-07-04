unit Command.Receivers.Receiver;

interface

// The Receiver classes contain some important business logic. They know how
// to perform all kinds of operations, associated with carrying out a
// request. In fact, any class may serve as a Receiver.

// As classes Receiver contêm algumas lógicas de negócios importantes. Eles sabem como
// realizar todos os tipos de operações, associadas à realização de uma
// solicitação. Na verdade, qualquer classe pode servir como Receptor.

type
  TReceiver = class
  public
    function DoSomething(AString: string): TReceiver;
    function DoSomethingElse(AString: string): TReceiver;
  end;

implementation

uses
  Command.Utils.Util;

{ TReceiver }

function TReceiver.DoSomething(AString: string): TReceiver;
begin
  TUtilsSingleton.WriteLog('Receiver: Working on <' + AString + '>');
  Result := Self;
end;

function TReceiver.DoSomethingElse(AString: string): TReceiver;
begin
  TUtilsSingleton.WriteLog('Receiver: Also working on <' + AString + '>');
  Result := Self;
end;

end.
