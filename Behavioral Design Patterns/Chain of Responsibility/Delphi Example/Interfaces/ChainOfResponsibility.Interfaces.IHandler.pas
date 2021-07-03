unit ChainOfResponsibility.Interfaces.IHandler;

interface

// The Handler interface declares a method for building the chain of
// handlers. It also declares a method for executing a request.

// A interface Handler declara um método para construir a cadeia de handlers
// Também declara um método para executar a solicitação

type
  IHandler = interface
    ['{7084ACF9-3368-4222-87ED-1B28B6455E06}']
    function SetNext(AHandler : IHandler): IHandler;
    function Handle(AObject: TObject): TObject;
  end;

implementation

end.
