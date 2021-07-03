unit BuilderPizzaExample.Util.Utils;

interface

type
  TUtils = class
  public
    class function IIF(ACondition: Boolean; AValueA, AValueB: Variant): Variant;
  end;

  TConstants = class
  public
    class function EMPTY_STRING : string;
  end;

implementation

{ TUtils }

class function TUtils.IIF(ACondition: Boolean;
  AValueA, AValueB: Variant): Variant;
begin
  if ACondition then
    Result := AValueA
  else
    Result := AValueB;
end;

{ TConstants }

class function TConstants.EMPTY_STRING: string;
begin
  Result := '';
end;

end.
