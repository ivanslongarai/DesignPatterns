unit BuilderPizzaExample.Processors.ICalculatePrice;

interface

uses
  BuilderPizzaExample.Domain.Pizza;

type
  ICalculatePrice = interface
    ['{444E9852-5142-4FC6-8797-6487092FC3EC}']
    procedure DefinePrice(APizza : TPizza);
  end;

implementation

end.
