unit Adapter.Classes.Adaptee;

// The Adaptee contains some useful behavior, but its interface is
// incompatible with the existing client code. The Adaptee needs some
// adaptation before the client code can use it.

// O Adaptee contém alguns comportamentos úteis, mas sua interface é
// incompatível com o código do cliente existente. O Adaptee precisa de alguma
// adaptação antes que o código do cliente possa usá-lo.

interface

type
  TAdaptee = class
  public
    function GetSpecificRequest: string;
  end;

implementation

{ TAdaptee }

function TAdaptee.GetSpecificRequest: string;
begin
  Result := 'Specific request.';
end;

end.
