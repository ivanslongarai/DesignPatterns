unit FactoryMethod.Creators.ConcreteCreator2;

interface

uses
  FactoryMethod.Creators.Creator, FactoryMethod.Interfaces.IProduct,
  FactoryMethod.Interfaces.IConcreteCreator;

// Concrete Creators override the factory method in order to change the
// resulting product's type.
type
  TConcreteCreator2 = class(TCreator, IConcreteCreator)
  public
    // Note that the signature of the method still uses the abstract product
    // type, even though the concrete product is actually returned from the
    // method. This way the Creator can stay independent of concrete product
    // classes.
    function FactoryMethod: IProduct; override;
    class function New: TConcreteCreator2;
  end;

implementation

uses
  FactoryMethod.Concretes.ConcreteProduct2;

{ TConcreteCreator2 }

function TConcreteCreator2.FactoryMethod: IProduct;
begin
  Result := TConcreteProduct2.Create;
end;

class function TConcreteCreator2.New: TConcreteCreator2;
begin
  Result := Self.Create;
end;

end.
