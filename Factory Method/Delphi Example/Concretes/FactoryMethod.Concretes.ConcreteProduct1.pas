unit FactoryMethod.Concretes.ConcreteProduct1;

interface

uses
  FactoryMethod.Interfaces.IProduct;

type
  TConcreteProduct1 = class(TInterfacedObject, IProduct)
  public
    function Operation: string;
  end;

implementation

{ TConcreteProduct1 }

function TConcreteProduct1.Operation: string;
begin
  Result := '{ConcreteProduct1}';
end;

end.
