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

// Fabricas concretas produzem uma familia de produtos que pertencem a uma única variante
// A fabrica garante que os produtos resultantes serão compatíveis.
// Note que assinaturas dos metodos factory retornam um produto abstrato, enquanto
// dentro do metodo um produto concreto é instanciado.



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
