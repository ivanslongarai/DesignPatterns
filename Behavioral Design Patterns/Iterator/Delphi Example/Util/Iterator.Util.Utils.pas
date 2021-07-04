unit Iterator.Util.Utils;

interface

type
  TUtils = class
  public
    class function IIF(AExpression: Boolean; AValue1, AValue2: Variant)
      : Variant;
  end;

implementation

{ TUtils }

class function TUtils.IIF(AExpression: Boolean;
  AValue1, AValue2: Variant): Variant;
begin
  if AExpression then
    Result := AValue1
  else
    Result := AValue2;
end;

end.
