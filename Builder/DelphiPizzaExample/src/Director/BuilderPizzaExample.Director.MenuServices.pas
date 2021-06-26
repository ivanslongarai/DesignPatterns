unit BuilderPizzaExample.Director.MenuServices;

interface

uses BuilderPizzaExample.Builder.Base.IPizzaBuilder,
  BuilderPizzaExample.Domain.ValueObject.PizzaSize,
  BuilderPizzaExample.Domain.Edge, BuilderPizzaExample.Director.IMenuServices;

type
  TMenuServices = class(TInterfacedObject, IMenuServices)
  public
    function PreparePizzaWihoutEdge(APizzaBuilder: IPizzaBuilder;
      APizzaSize: TPizzaSize): IPizzaBuilder;
    function PreparePizzaWihEdge(APizzaBuilder: IPizzaBuilder;
      APizzaSize: TPizzaSize; AEdge: TEdge): IPizzaBuilder;
    class function New : IMenuServices;
  end;

implementation

{ TMenuServices }

class function TMenuServices.New: IMenuServices;
begin
  Result := Self.Create;
end;

function TMenuServices.PreparePizzaWihEdge(APizzaBuilder: IPizzaBuilder;
  APizzaSize: TPizzaSize; AEdge: TEdge): IPizzaBuilder;
begin
  APizzaBuilder.PrepareBatter(APizzaSize);
  APizzaBuilder.PrepareEdge(AEdge);
  APizzaBuilder.InsertIngredients();
  APizzaBuilder.DefineTimeOnStove();
  APizzaBuilder.DefinePrice();
  Result := APizzaBuilder;
end;

function TMenuServices.PreparePizzaWihoutEdge(APizzaBuilder: IPizzaBuilder;
  APizzaSize: TPizzaSize): IPizzaBuilder;
begin
  APizzaBuilder.PrepareBatter(APizzaSize);
  APizzaBuilder.InsertIngredients();
  APizzaBuilder.DefineTimeOnStove();
  APizzaBuilder.DefinePrice();
  Result := APizzaBuilder;
end;

end.
