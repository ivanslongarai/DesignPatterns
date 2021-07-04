unit Command.Invokers.Invoker;

interface

uses
  Command.Interfaces.ICommand;

type
  TInvoker = class
  private
    FOnStart: ICommand;
    FOnFinish: ICommand;
  public
    // Initialize commands.

    // Inicializa comandos.

    function SetOnStart(ACommand: ICommand): TInvoker;
    function SetOnFinish(ACommand: ICommand): TInvoker;

    // The Invoker does not depend on concrete command or receiver classes.
    // The Invoker passes a request to a receiver indirectly, by executing a
    // command.

    // O Invoker não depende de comandos concretos ou classes receptoras.
    // O Invoker passa uma solicitação para um receptor indiretamente, executando um
    // comando.

    function DoSomethingImportant: TInvoker;
  end;

implementation

uses
  Command.Utils.Util;

{ TInvoker }

function TInvoker.DoSomethingImportant: TInvoker;
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

function TInvoker.SetOnFinish(ACommand: ICommand): TInvoker;
begin
  FOnFinish := ACommand;
  Result := Self;
end;

function TInvoker.SetOnStart(ACommand: ICommand): TInvoker;
begin
  FOnStart := ACommand;
  Result := Self;
end;

end.
