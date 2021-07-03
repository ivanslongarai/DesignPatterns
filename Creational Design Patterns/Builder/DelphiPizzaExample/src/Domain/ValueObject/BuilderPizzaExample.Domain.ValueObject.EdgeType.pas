unit BuilderPizzaExample.Domain.ValueObject.EdgeType;

interface

type
  TEdgeType = (Catupiry, Cheddar, Chocolate);

type
  TEdgeTypeUtil = class
  public
    class function GetText(AEdgeType: TEdgeType): string;
  end;

implementation

{ TPizzaSizeUtil }

class function TEdgeTypeUtil.GetText(AEdgeType: TEdgeType): string;
begin
  case AEdgeType of
    Catupiry:
      Result := 'Catupiry';
    Cheddar:
      Result := 'Cheddar';
    Chocolate:
      Result := 'Chocolate'
  else
    Result := '';
  end;
end;

end.
