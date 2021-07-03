unit AbstractFactory.Concretes.ConcreteFactory2;

interface

uses
  AbstractFactory.Interfaces.IAbstractProductA,
  AbstractFactory.Interfaces.IAbstractProductB,
  AbstractFactory.Interfaces.IAbstractFactory;

// Each Concrete Factory has a corresponding product variant.

// Cada fabrica concreta possui uma variante de produto correspondente

type
  TConcreteFactory2 = class(TInterfacedObject, IAbstractFactory)
  public
    function CreateProductA: IAbstractProductA;
    function CreateProductB: IAbstractProductB;
  end;

implementation

uses
  AbstractFactory.Concretes.ConcreteProductA2,
  AbstractFactory.Concretes.ConcreteProductB2;

{ TConcreteFactory2 }

function TConcreteFactory2.CreateProductA: IAbstractProductA;
begin
  Result := TConcreteProductA2.Create;
end;

function TConcreteFactory2.CreateProductB: IAbstractProductB;
begin
  Result := TConcreteProductB2.Create;
end;

end.
