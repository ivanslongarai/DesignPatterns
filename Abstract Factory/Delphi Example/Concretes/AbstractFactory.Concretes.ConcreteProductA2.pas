unit AbstractFactory.Concretes.ConcreteProductA2;

interface

uses
  AbstractFactory.Interfaces.IAbstractProductA;

// Concrete Products are created by corresponding Concrete Factories.

// Produtos concretos são criados por correspondentes fabricas concretas

type
  TConcreteProductA2 = class(TInterfacedObject, IAbstractProductA)
  public
    function UsefulFunctionA: string;
  end;

implementation

{ ConcreteProductA2 }

function TConcreteProductA2.UsefulFunctionA: string;
begin
  Result := 'The result of the product A2.';
end;

end.
