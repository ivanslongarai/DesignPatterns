unit BuilderPizzaExample.Domain.ValueObject.PizzaSize;

interface

type
  TPizzaSize = (Small = 1, Normal = 2, Big = 3, Family = 4);

type
  TPizzaSizeUtil = class
  public
    class function GetText(APizzaSize: TPizzaSize): string;
  end;

implementation

{ TPizzaSizeUtil }

class function TPizzaSizeUtil.GetText(APizzaSize: TPizzaSize): string;
begin
  case APizzaSize of
    Small:
      Result := 'Small';
    Normal:
      Result := 'Normal';
    Big:
      Result := 'Big';
    Family:
      Result := 'Family';
  end;
end;

end.
