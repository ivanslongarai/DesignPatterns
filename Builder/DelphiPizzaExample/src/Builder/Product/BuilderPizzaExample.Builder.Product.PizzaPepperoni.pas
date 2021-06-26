unit BuilderPizzaExample.Builder.Product.PizzaPepperoni;

interface

uses
  BuilderPizzaExample.Builder.Base.IPizzaBuilder,
  BuilderPizzaExample.Builder.Base.PizzaBuilderBase,
  BuilderPizzaExample.Domain.Edge,
  BuilderPizzaExample.Domain.ValueObject.PizzaSize,
  BuilderPizzaExample.Domain.Pizza,
  BuilderPizzaExample.Processors.ICalculatePrice;

type
  TPizzaPepperoni = class(TPizzaBuilderBase, IPizzaBuilder)
  protected
  private
  public
    procedure PrepareEdge(AEdge: TEdge);
    procedure PrepareBatter(APizzaSize: TPizzaSize);
    procedure InsertIngredients();
    procedure DefineTimeOnStove();
    class function New(ACalculatePrice: ICalculatePrice) : TPizzaPepperoni;
  end;

implementation

uses
  BuilderPizzaExample.Domain.ValueObject.PizzaType,
  BuilderPizzaExample.Domain.ValueObject.IngredientsType,
  BuilderPizzaExample.Util.Utils;

{ TPizzaPepperoni }

procedure TPizzaPepperoni.DefineTimeOnStove;
begin
  FPizza.TimeOnStove := 20;
end;

procedure TPizzaPepperoni.InsertIngredients;
begin
  FPizza.Flavor := TUtils.IIF(FPizza.WithEdge, 'Pepperoni With Edge', 'Pepperoni Without Edge');
  FPizza.AddIngredient(TIngredientsType.Pepperoni);
  FPizza.AddIngredient(TIngredientsType.Olive);
  FPizza.AddIngredient(TIngredientsType.Onion);
  FPizza.AddIngredient(TIngredientsType.Cheddar);
  FPizza.AddIngredient(TIngredientsType.Salami);
end;

class function TPizzaPepperoni.New(ACalculatePrice: ICalculatePrice): TPizzaPepperoni;
begin
  Result := Self.Create(ACalculatePrice);
end;

procedure TPizzaPepperoni.PrepareBatter(APizzaSize: TPizzaSize);
begin
  Init;
  FPizza.WithEdge := False;
  FPizza.PizzaType := TPizzaType.Salty;
  FPizza.PizzaSize := APizzaSize;
end;

procedure TPizzaPepperoni.PrepareEdge(AEdge: TEdge);
begin
  FPizza.WithEdge := True;
  FPizza.Edge := AEdge;
end;

end.
