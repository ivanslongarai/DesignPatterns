unit Command.Commands.SimpleCommand;

interface

uses
  Command.Interfaces.ICommand;

// Some commands can implement simple operations on their own.

// Alguns comandos podem implementar simples operações eles mesmos

type
  TSimpleCommand = class(TInterfacedObject, ICommand)
  private
    FPayload: string;
  public
    constructor Create(ASimpleCommand: string);
    function Execute: ICommand;
  end;

implementation

uses
  Command.Utils.Util;

{ TSimpleCommand }

constructor TSimpleCommand.Create(ASimpleCommand: string);
begin
  FPayload := ASimpleCommand;
end;

function TSimpleCommand.Execute: ICommand;
begin
  Result := Self;
  TUtilsSingleton.WriteLog
    ('SimpleCommand: See, I can do simple things like printing <' +
    FPayload + '>');
end;

end.
