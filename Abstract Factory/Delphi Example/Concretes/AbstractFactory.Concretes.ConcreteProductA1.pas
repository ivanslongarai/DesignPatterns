unit AbstractFactory.Concretes.ConcreteProductA1;

interface

uses
  AbstractFactory.Interfaces.IAbstractProductA;

// Concrete Products are created by corresponding Concrete Factories.

// Produtos concretos são criados por correspondentes fabricas concretas

type
  TConcreteProductA1 = class(TInterfacedObject, IAbstractProductA)
  public
    function UsefulFunctionA: string;
  end;

implementation

{ TConcreteProductA1 }

function TConcreteProductA1.UsefulFunctionA: string;
begin
  Result := 'The result of the product A1.';
end;

end.
