unit BuilderPizzaExample.Domain.IPizza;

interface

uses
  BuilderPizzaExample.Domain.Edge,
  BuilderPizzaExample.Domain.ValueObject.PizzaSize;

type
  IPizza = interface
    ['{A088D7E9-B7A7-4569-961C-FCBFE499AA74}']
    function GetWithEdge: Boolean;
    function GetEdge: TEdge;
    function GetFlavor: string;
    function GetTimeOnStove: Integer;
    function GetPrice: double;
    function GetPizzaSize: TPizzaSize;
  end;

implementation

end.
