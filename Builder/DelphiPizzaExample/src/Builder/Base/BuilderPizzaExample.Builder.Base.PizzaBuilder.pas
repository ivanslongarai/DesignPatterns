unit BuilderPizzaExample.Builder.Base.PizzaBuilder;

interface

uses
  BuilderPizzaExample.Domain.Pizza, BuilderPizzaExample.Domain.Edge,
  BuilderPizzaExample.Domain.ValueObject.PizzaSize;

type
  IPizzaBuilder = interface
    ['{574F43BD-88D3-44F2-9D8E-6228E3DD73AE}']
    procedure PrepareEdge(AEdge: TEdge);
    procedure PrepareBatter(APizzaSize: TPizzaSize);
    procedure InsertIngredients();
    procedure DefinePrice();
    procedure DefineTimeOnStove();
    function GetPizza(): TPizza;
  end;

implementation

end.
