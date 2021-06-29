unit AbstractFactory.Interfaces.IAbstractProductB;

interface

uses
  AbstractFactory.Interfaces.IAbstractProductA;

// Here's the the base interface of another product. All products can
// interact with each other, but proper interaction is possible only between
// products of the same concrete variant.

type
  IAbstractProductB = interface
    ['{91D739D8-BF39-4B51-B7A9-DE54916ABA91}']
    // Product B is able to do its own thing...
    function UsefulFunctionB: string;

    // ...but it also can collaborate with the ProductA.
    //
    // The Abstract Factory makes sure that all products it creates are of
    // the same variant and thus, compatible.

    function AnotherUsefulFunctionB(ACollaborator: IAbstractProductA): string;
  end;

implementation

end.
