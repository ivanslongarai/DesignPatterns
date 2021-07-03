unit Facade.Facade.Facade;

interface

uses
  Facade.SubSystem.SubSystem1, Facade.SubSystem.SubSystem2;

type
  TFacade = class
  protected
    FSubSystem1: TSubSystem1;
    FSubSystem2: TSubSystem2;
  public
    constructor Create(ASubSystem1: TSubSystem1; ASubSystem2: TSubSystem2);
    function Operation: string;
  end;

implementation

{ TFacade }

constructor TFacade.Create(ASubSystem1: TSubSystem1; ASubSystem2: TSubSystem2);
begin
  FSubSystem1 := ASubSystem1;
  FSubSystem2 := ASubSystem2;
end;

// The Facade's methods are convenient shortcuts to the sophisticated
// functionality of the subsystems. However, clients get only to a
// fraction of a subsystem's capabilities.

// Os métodos do facade são convenientes atalhos para uma sofisticada funcionalidade dos sub-sistemas
// Contudo, os clients recebem somente uma fração das capacidades dos sub-sistemas

function TFacade.Operation: string;
begin
  Result := 'Facade initializes subsystems:' + '|' + FSubSystem1.Operation1() +
    '|' + FSubSystem2.Operation1() + '|' +
    'Facade orders subsystems to perform the action:' + '|' +
    FSubSystem1.OperationN() + '|' + FSubSystem2.OperationZ();
end;

end.
