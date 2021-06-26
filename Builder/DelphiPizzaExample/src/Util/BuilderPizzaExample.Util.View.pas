unit BuilderPizzaExample.Util.View;

interface

uses
  BuilderPizzaExample.Domain.IPizza;

type
  TUtilsView = class
    class function View(AMsg: string; APizza: IPizza): string;
  end;

implementation

uses
  BuilderPizzaExample.Util.Utils,
  BuilderPizzaExample.Domain.ValueObject.EdgeType,
  BuilderPizzaExample.Domain.ValueObject.PizzaSize, System.SysUtils;

{ TUtilsView }

class function TUtilsView.View(AMsg: string; APizza: IPizza): string;
var
  edgeDescription: string;

begin
  edgeDescription := TConstants.EMPTY_STRING;

  if APizza.GetWithEdge then
    edgeDescription := Concat(' / ',
      TEdgeTypeUtil.GetText(APizza.GetEdge.EdgeType));

  Result := (Concat(AMsg, APizza.GetFlavor, ' / ', FormatFloat(',0.00',
    APizza.GetPrice), ' / ', APizza.GetTimeOnStove.ToString, ' min / ',
    TPizzaSizeUtil.GetText(APizza.GetPizzaSize), edgeDescription));

end;

end.
