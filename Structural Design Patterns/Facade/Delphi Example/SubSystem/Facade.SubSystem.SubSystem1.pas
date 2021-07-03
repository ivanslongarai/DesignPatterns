unit Facade.SubSystem.SubSystem1;

interface

type
  TSubSystem1 = class
  public
    function Operation1 : string;
    function OperationN : string;
  end;

implementation

{ TSubSystem1 }

function TSubSystem1.Operation1: string;
begin
  Result := 'Subsystem1: Ready!';
end;

function TSubSystem1.OperationN: string;
begin
  Result := 'Subsystem1: Go!';
end;

end.
