unit Command.Interfaces.Invoker;

interface

uses
  Command.Interfaces.ICommand;

type
  IInvoker = interface
    function SetOnStart(ACommand: ICommand): IInvoker;
    function SetOnFinish(ACommand: ICommand): IInvoker;
    function DoSomethingImportant: IInvoker;
  end;

implementation

end.
