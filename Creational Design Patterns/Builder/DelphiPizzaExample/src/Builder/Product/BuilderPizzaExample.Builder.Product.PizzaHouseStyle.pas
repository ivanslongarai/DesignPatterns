unit BuilderPizzaExample.Builder.Product.PizzaHouseStyle;

interface

uses
  BuilderPizzaExample.Builder.Base.IPizzaBuilder,
  BuilderPizzaExample.Builder.Base.PizzaBuilderBase,
  BuilderPizzaExample.Domain.Edge,
  BuilderPizzaExample.Domain.ValueObject.PizzaSize,
  BuilderPizzaExample.Domain.Pizza,
  BuilderPizzaExample.Processors.ICalculatePrice;

type
  TPizzaHouseStyle = class(TPizzaBuilderBase, IPizzaBuilder)
  protected
  private
  public
    procedure PrepareEdge(AEdge: TEdge);
    procedure PrepareBatter(APizzaSize: TPizzaSize);
    procedure InsertIngredients();
    procedure DefineTimeOnStove();
    class function New(ACalculatePrice: ICalculatePrice) : TPizzaHouseStyle;
  end;

implementation

uses
  BuilderPizzaExample.Domain.ValueObject.PizzaType,
  BuilderPizzaExample.Domain.ValueObject.IngredientsType,
  BuilderPizzaExample.Util.Utils;

{ TPizzaHouseStyle }

procedure TPizzaHouseStyle.DefineTimeOnStove;
begin
  FPizza.TimeOnStove := 28;
end;

procedure TPizzaHouseStyle.InsertIngredients;
begin
  FPizza.Flavor := TUtils.IIF(FPizza.WithEdge, 'House Style With Edge',
    'House Style Without Edge');
  FPizza.AddIngredient(TIngredientsType.Garlic);
  FPizza.AddIngredient(TIngredientsType.Pepperoni);
  FPizza.AddIngredient(TIngredientsType.Onion);
  FPizza.AddIngredient(TIngredientsType.Mozzarella);
  FPizza.AddIngredient(TIngredientsType.Provolone);
  FPizza.AddIngredient(TIngredientsType.Pepper);
  FPizza.AddIngredient(TIngredientsType.Basil);
  FPizza.AddIngredient(TIngredientsType.Cheddar);
  FPizza.AddIngredient(TIngredientsType.Catupiry);
end;

class function TPizzaHouseStyle.New(
  ACalculatePrice: ICalculatePrice): TPizzaHouseStyle;
begin
  Result := Self.Create(ACalculatePrice);
end;

procedure TPizzaHouseStyle.PrepareBatter(APizzaSize: TPizzaSize);
begin
  Init;
  FPizza.WithEdge := False;
  FPizza.PizzaType := TPizzaType.Salty;
  FPizza.PizzaSize := APizzaSize;
end;

procedure TPizzaHouseStyle.PrepareEdge(AEdge: TEdge);
begin
  FPizza.WithEdge := True;
  FPizza.Edge := AEdge;
end;

end.
