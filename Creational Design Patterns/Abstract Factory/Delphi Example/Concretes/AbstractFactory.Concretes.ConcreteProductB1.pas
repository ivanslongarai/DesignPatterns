unit AbstractFactory.Concretes.ConcreteProductB1;

interface

uses
  AbstractFactory.Interfaces.IAbstractProductB,
  AbstractFactory.Interfaces.IAbstractProductA;

// Concrete Products are created by corresponding Concrete Factories.

// Produtos concretos são criados por correspondentes fabricas concretas

type
  TConcreteProductB1 = class(TInterfacedObject, IAbstractProductB)
  public
    function UsefulFunctionB: string;

    // The variant, Product B1, is only able to work correctly with the
    // variant, Product A1. Nevertheless, it accepts any instance of
    // AbstractProductA as an argument.

    // A variação, Produto B1, é somente capaz de trabalhar corretamente com a variant, Produto A1.
    // Mesmo assim, aceita qualquer instancia de AbstractProductA como argumento

    function AnotherUsefulFunctionB(ACollaborator: IAbstractProductA): string;

  end;

implementation

{ TConcreteProductB1 }

function TConcreteProductB1.AnotherUsefulFunctionB(ACollaborator
  : IAbstractProductA): string;
begin
  Result := 'The result of the B1 collaborating with the ' +
    ACollaborator.UsefulFunctionA;
end;

function TConcreteProductB1.UsefulFunctionB: string;
begin
  Result := 'The result of the product B1';
end;

end.
