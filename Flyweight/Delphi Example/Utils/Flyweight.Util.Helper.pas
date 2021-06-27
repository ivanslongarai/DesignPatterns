unit Flyweight.Util.Helper;

interface

uses
  System.SysUtils, System.Generics.Collections;

type
  TStringListHelper = record Helper for
    string public class
    function Join(const Separator: string; const Values: TList<string>): string;
    static;
  end;

implementation

{ TStringListHelper }

class function TStringListHelper.Join(const Separator: string;
  const Values: TList<string>): string;
var
  I: Integer;
begin
  if Values.Count = 0 then
    Result := ''
  else
  begin
    Result := Values.Items[0];
    for I := 1 to Values.Count - 1 do
      Result := Result + Separator + Values.Items[I];
  end;
end;

end.
