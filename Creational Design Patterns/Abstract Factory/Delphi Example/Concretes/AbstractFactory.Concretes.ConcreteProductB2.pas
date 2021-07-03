unit AbstractFactory.Concretes.ConcreteProductB2;

interface

uses
  AbstractFactory.Interfaces.IAbstractProductB,
  AbstractFactory.Interfaces.IAbstractProductA;

type
  TConcreteProductB2 = class(TInterfacedObject, IAbstractProductB)
  public
    function UsefulFunctionB: string;
    function AnotherUsefulFunctionB(ACollaborator: IAbstractProductA): string;
  end;

implementation

{ TConcreteProductB2 }

function TConcreteProductB2.AnotherUsefulFunctionB(ACollaborator
  : IAbstractProductA): string;
begin
  Result := 'The result of the B2 collaborating with the ' +
    ACollaborator.UsefulFunctionA;
end;

function TConcreteProductB2.UsefulFunctionB: string;
begin
  Result := 'The result of the product B2.';
end;

end.
