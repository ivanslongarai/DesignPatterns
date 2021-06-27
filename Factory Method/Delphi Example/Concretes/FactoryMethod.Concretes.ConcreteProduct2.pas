unit FactoryMethod.Concretes.ConcreteProduct2;

interface

uses
  FactoryMethod.Interfaces.IProduct;

type
  TConcreteProduct2 = class(TInterfacedObject, IProduct)
  public
    function Operation: string;
  end;

implementation

{ TConcreteProduct2 }

function TConcreteProduct2.Operation: string;
begin
  Result := '{ConcreteProduct2}';
end;

end.
