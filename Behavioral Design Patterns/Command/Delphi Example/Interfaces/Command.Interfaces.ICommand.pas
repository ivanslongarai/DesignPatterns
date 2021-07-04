unit Command.Interfaces.ICommand;

interface

// The Command interface declares a method for executing a command.
// A interface ICommand declara um método para executar um comando.

type
  ICommand = interface
    ['{6A5907A4-A391-4C27-8AA2-ADBB6B79F4C0}']
    function Execute: ICommand;
  end;

implementation

end.
