unit AbstractFactory.Interfaces.IAbstractProductB;

interface

uses
  AbstractFactory.Interfaces.IAbstractProductA;

// Here's the the base interface of another product. All products can
// interact with each other, but proper interaction is possible only between
// products of the same concrete variant.

// Aqui esta a interface base de outro produto. Todos produtos podem interagir entre si
// mas uma interação apropriada é somente possível entre produtos da mesma variant concreta

type
  IAbstractProductB = interface
    ['{91D739D8-BF39-4B51-B7A9-DE54916ABA91}']

    // Product B is able to do its own thing...
    // ...but it also can collaborate with the ProductA.
    //
    // The Abstract Factory makes sure that all products it creates are of
    // the same variant and thus, compatible.

    // Produto B é capaz de executar seu proprio codigo
    // ...mas também pode colaborar com o produto A
    // O Abstract Factory garante que todos produtos que ela cria são da mesma variante e
    // portanto, compativeis

    function UsefulFunctionB: string;

    function AnotherUsefulFunctionB(ACollaborator: IAbstractProductA): string;
  end;

implementation

end.
