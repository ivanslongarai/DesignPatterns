unit BuilderPizzaExample.Director.IMenuServices;

interface

uses
  BuilderPizzaExample.Builder.Base.IPizzaBuilder,
  BuilderPizzaExample.Domain.ValueObject.PizzaSize,
  BuilderPizzaExample.Domain.Edge;

type
  IMenuServices = interface
    ['{69C2E8BA-A8AA-48FB-8D5A-DB20C84ED9CB}']
    function PreparePizzaWihoutEdge(APizzaBuilder: IPizzaBuilder;
      APizzaSize: TPizzaSize): IPizzaBuilder;
    function PreparePizzaWihEdge(APizzaBuilder: IPizzaBuilder;
      APizzaSize: TPizzaSize; AEdge: TEdge): IPizzaBuilder;
  end;

implementation

end.
