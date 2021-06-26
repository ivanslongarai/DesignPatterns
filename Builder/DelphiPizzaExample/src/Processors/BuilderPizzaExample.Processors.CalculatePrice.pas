unit BuilderPizzaExample.Processors.CalculatePrice;

interface

uses
  BuilderPizzaExample.Processors.ICalculatePrice,
  BuilderPizzaExample.Domain.Pizza;

type
  TCalculatePrice = class(TInterfacedObject, ICalculatePrice)
  public
    procedure DefinePrice(APizza: TPizza);
    class function New : TCalculatePrice;
  end;

implementation

uses
  BuilderPizzaExample.Domain.ValueObject.PizzaType,
  BuilderPizzaExample.Domain.ValueObject.EdgeType;

{ TCalculatePrice }

procedure TCalculatePrice.DefinePrice(APizza: TPizza);
var
  unitsIngredients: Integer;
  priceOfIngredients: double;
  priceOfPizzaSize: double;
  priceOfPizzaType: double;
  priceOfEdge: double;

begin

  priceOfEdge := 0;
  unitsIngredients := APizza.IngredientList.Count;

  priceOfIngredients := unitsIngredients * 1.70;
  priceOfPizzaSize := Ord(APizza.PizzaSize) * 10;

  case APizza.PizzaType of
    TPizzaType.Sweet:
      priceOfPizzaType := 10
  else
    priceOfPizzaType := 0;
  end;

  if Assigned(APizza.Edge) then
  begin
    case APizza.Edge.EdgeType of
      TEdgeType.Chocolate:
        priceOfEdge := (5 * Ord(APizza.Edge.EdgeSize))
    else
      priceOfEdge := (2 * Ord(APizza.Edge.EdgeSize))
    end;
  end;

  APizza.Price := priceOfIngredients + priceOfPizzaSize + priceOfPizzaType +
    priceOfEdge;

end;

class function TCalculatePrice.New: TCalculatePrice;
begin
  Result := Self.Create;
end;

end.
