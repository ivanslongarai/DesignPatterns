unit AbstractFactory.Concretes.ConcreteFactory1;

interface

uses
  AbstractFactory.Interfaces.IAbstractFactory,
  AbstractFactory.Interfaces.IAbstractProductA,
  AbstractFactory.Interfaces.IAbstractProductB;

// Concrete Factories produce a family of products that belong to a single
// variant. The factory guarantees that resulting products are compatible.
// Note that signatures of the Concrete Factory's methods return an abstract
// product, while inside the method a concrete product is instantiated.

type
  TConcreteFactory1 = class(TInterfacedObject, IAbstractFactory)
  public
    function CreateProductA: IAbstractProductA;
    function CreateProductB: IAbstractProductB;
  end;

implementation

uses
  AbstractFactory.Concretes.ConcreteProductA1,
  AbstractFactory.Concretes.ConcreteProductB1;

{ TConcreteFactory1 }

function TConcreteFactory1.CreateProductA: IAbstractProductA;
begin
  Result := TConcreteProductA1.Create;
end;

function TConcreteFactory1.CreateProductB: IAbstractProductB;
begin
  Result := TConcreteProductB1.Create;
end;

end.
