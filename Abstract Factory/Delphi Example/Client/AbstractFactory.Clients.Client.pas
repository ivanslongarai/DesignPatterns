unit AbstractFactory.Clients.Client;

interface

uses
  AbstractFactory.Interfaces.IAbstractFactory;

// The client code works with factories and products only through abstract
// types: AbstractFactory and AbstractProduct. This lets you pass any
// factory or product subclass to the client code without breaking it.

type
  TClient = class
  public
    function Main: string;
    function ClientMethod(AFactory: IAbstractFactory): string;
  end;

implementation

uses
  AbstractFactory.Interfaces.IAbstractProductA,
  AbstractFactory.Interfaces.IAbstractProductB,
  AbstractFactory.Concretes.ConcreteFactory1,
  AbstractFactory.Concretes.ConcreteFactory2;

{ TClient }

function TClient.ClientMethod(AFactory: IAbstractFactory): string;
var
  oProductA: IAbstractProductA;
  oProductB: IAbstractProductB;
begin

  oProductA := AFactory.CreateProductA;
  oProductB := AFactory.CreateProductB;

  Result := oProductB.UsefulFunctionB + #13 + oProductB.AnotherUsefulFunctionB
    (oProductA);
end;

function TClient.Main: string;
var
  oConcreteFactory1, oConcreteFactory2: IAbstractFactory;
begin
  // The client code can work with any concrete factory class.

  oConcreteFactory1 := TConcreteFactory1.Create;
  oConcreteFactory2 := TConcreteFactory2.Create;

  Result := 'Client: Testing client code with the first factory type...' + #13 +
    ClientMethod(oConcreteFactory1) + #13 + #13 +
    'Client: Testing the same client code with the second factory type...' + #13
    + ClientMethod(oConcreteFactory2);

end;

end.
