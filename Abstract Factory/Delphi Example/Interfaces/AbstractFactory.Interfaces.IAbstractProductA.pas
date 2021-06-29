unit AbstractFactory.Interfaces.IAbstractProductA;

interface

// Each distinct product of a product family should have a base interface.
// All variants of the product must implement this interface.

type
  IAbstractProductA = interface
    ['{5EC184D5-3A7E-49B2-AB03-A96676D52DF1}']
    function UsefulFunctionA: string;
  end;

implementation

end.
