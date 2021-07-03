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

    // Também note que, apesar do nome, a responsablilidade primaria do creator  não é criar produtos.
    // Geralmente ele contém algun código de negocio que depende do objeto produto retornado pelo método
    // Subclasses podem indiretamente mudar esssas regras subescrevendo o Factory method e retornando um
    // diverente tipo de produto.

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

  // Chama o factory method para criar o objeto produto

  oProduct := FactoryMethod();
  // Now, use the product.

  // Agora usa o produto

  Result := 'Creator: The same Creators code has just worked with ' +
    oProduct.Operation();

end;

end.
