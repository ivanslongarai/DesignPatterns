unit Command.Invokers.Invoker;

interface

uses
  Command.Interfaces.ICommand, Command.Interfaces.Invoker;

type
  TInvoker = class(TInterfacedObject, IInvoker)
  private
    FOnStart: ICommand;
    FOnFinish: ICommand;
  public
    // Initialize commands.

    // Inicializa comandos.

    function SetOnStart(ACommand: ICommand): IInvoker;
    function SetOnFinish(ACommand: ICommand): IInvoker;

    // The Invoker does not depend on concrete command or receiver classes.
    // The Invoker passes a request to a receiver indirectly, by executing a
    // command.

    // O Invoker não depende de comandos concretos ou classes receptoras.
    // O Invoker passa uma solicitação para um receptor indiretamente, executando um
    // comando.

    function DoSomethingImportant: IInvoker;
  end;

implementation

uses
  Command.Utils.Util;

{ IInvoker }

function TInvoker.DoSomethingImportant: IInvoker;
begin
  TUtilsSingleton.WriteLog
    ('Invoker: Does anybody want something done before I begin?');

  if Assigned(FOnStart) then
    FOnStart.Execute;

  TUtilsSingleton.WriteLog('Invoker: ...doing something really important...');

  TUtilsSingleton.WriteLog
    ('Invoker: Does anybody want something done after I finish?');

  if Assigned(FOnFinish) then
    FOnFinish.Execute;

  Result := Self;
end;

function TInvoker.SetOnFinish(ACommand: ICommand): IInvoker;
begin
  FOnFinish := ACommand;
  Result := Self;
end;

function TInvoker.SetOnStart(ACommand: ICommand): IInvoker;
begin
  FOnStart := ACommand;
  Result := Self;
end;

end.
