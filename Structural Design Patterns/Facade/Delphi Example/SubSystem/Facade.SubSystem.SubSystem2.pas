unit Facade.SubSystem.SubSystem2;

interface

type
  TSubSystem2 = class
  public
    function Operation1 : string;
    function OperationZ : string;
  end;

implementation

{ TSubSystem2 }

function TSubSystem2.Operation1: string;
begin
  Result := 'Subsystem2: Get ready!';
end;

function TSubSystem2.OperationZ: string;
begin
  Result := 'Subsystem2: Fire!';
end;

end.
