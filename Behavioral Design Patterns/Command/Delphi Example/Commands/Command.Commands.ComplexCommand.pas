unit Command.Commands.ComplexCommand;

interface

uses
  Command.Interfaces.ICommand, Command.Interfaces.Receiver;

// Some commands can delegate more complex operations to other
// objects, called "receivers."

// Alguns commands podem delegar operações mais complexas para outros objetos, chamados "receivers."

type
  TComplexCommand = class(TInterfacedObject, ICommand)
  private
    // Context data, required for launching the receiver's methods.
    FA: string;
    FB: string;
    FReceiver: IReceiver;
  public
    // Complex commands can accept one or several receiver objects along
    // with any context data via the constructor.

    // Comandos complexos podem aceitar um ou vários objetos receiver junto
    // com quaisquer dados de contexto por meio do construtor.

    constructor Create(AReceiver: IReceiver; AStringA, AStringB: string);
    function Execute: ICommand;
  end;

implementation

uses
  Command.Utils.Util;

{ TComplexCommand }

constructor TComplexCommand.Create(AReceiver: IReceiver;
  AStringA, AStringB: string);
begin
  FReceiver := AReceiver;
  FA := AStringA;
  FB := AStringB;
end;

// Commands can delegate to any methods of a receiver.

// Os comandos podem delegar a qualquer método de um receptor.

function TComplexCommand.Execute: ICommand;
begin
  TUtilsSingleton.WriteLog
    ('ComplexCommand: Complex stuff should be done by a receiver object.');
  FReceiver.DoSomething(FA);
  FReceiver.DoSomethingElse(FB);
end;

end.
