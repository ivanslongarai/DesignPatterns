unit BuilderPizzaExample.Builder.Base.PizzaBuilderBase;

interface

uses
  BuilderPizzaExample.Domain.Pizza,
  BuilderPizzaExample.Processors.ICalculatePrice,
  BuilderPizzaExample.Builder.Base.IPizzaBuilderBase,
  BuilderPizzaExample.Domain.IPizza;

type
  TPizzaBuilderBase = class(TInterfacedObject, IPizzaBuilderBase)
  protected
    FPizza: TPizza;
    FCalculatePrice: ICalculatePrice;
    procedure Init;
  private
  public
    procedure DefinePrice; virtual;
    function GetProduct: IPizza;
    constructor Create(ACalculatePrice: ICalculatePrice);
  end;

implementation

{ TPizzaBuilderBase }

constructor TPizzaBuilderBase.Create(ACalculatePrice: ICalculatePrice);
begin
  FCalculatePrice := ACalculatePrice;
end;

procedure TPizzaBuilderBase.DefinePrice;
begin
  FCalculatePrice.DefinePrice(FPizza);
end;

function TPizzaBuilderBase.GetProduct: IPizza;
begin
  Result := FPizza;
end;

procedure TPizzaBuilderBase.Init;
begin
  FPizza := TPizza.Create;
end;

end.
