unit AbstractFactory.Interfaces.IAbstractProductA;

interface

// Each distinct product of a product family should have a base interface.
// All variants of the product must implement this interface.

// Cada produto distinto de uma familia de produtos deveria ter uma interface base
// Todas variantes do produto deve implementar esta interface

type
  IAbstractProductA = interface
    ['{5EC184D5-3A7E-49B2-AB03-A96676D52DF1}']
    function UsefulFunctionA: string;
  end;

implementation

end.
