unit FactoryMethod.Creators.Creator;

interface

uses
  FactoryMethod.Interfaces.IProduct, FactoryMethod.Interfaces.ICreator;

// The Creator class declares the factory method that is supposed to return
// an object of a Product class. The Creator's subclasses usually provide
// the implementation of this method.

type
  TCreator = class(TInterfacedObject, ICreator)
  public
    function FactoryMethod: IProduct; virtual; abstract;

    // Also note that, despite its name, the Creator's primary
    // responsibility is not creating products. Usually, it contains some
    // core business logic that relies on Product objects, returned by the
    // factory method. Subclasses can indirectly change that business logic
    // by overriding the factory method and returning a different type of
    // product from it.

    function SomeOperation: string; virtual;
  end;

implementation

uses
  System.SysUtils;

{ TCreator }

function TCreator.SomeOperation: string;
var
  oProduct: IProduct;
begin
  // Call the factory method to create a Product object.

  oProduct := FactoryMethod();
  // Now, use the product.

  Result := 'Creator: The same Creators code has just worked with ' +
    oProduct.Operation();

end;

end.
