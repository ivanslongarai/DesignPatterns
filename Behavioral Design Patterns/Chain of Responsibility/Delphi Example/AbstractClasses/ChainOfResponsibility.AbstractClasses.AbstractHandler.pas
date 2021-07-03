unit ChainOfResponsibility.AbstractClasses.AbstractHandler;

interface

uses
  ChainOfResponsibility.Interfaces.IHandler;

// The default chaining behavior can be implemented inside a base handler
// class.

// O comportamento padrão da cadeia pode ser implementado dentro de uma base handler

type
  TAbstractHandler = class(TInterfacedObject, IHandler)
    FNextHandler: IHandler;
  public
    function SetNext(AHandler: IHandler): IHandler;
    function Handle(ARequest: TObject): TObject; virtual;
  end;

implementation

{ TAbstractHandler }

function TAbstractHandler.Handle(ARequest: TObject): TObject;
begin
  if FNextHandler <> nil then
    Result := FNextHandler.Handle(ARequest)
  else
    Result := nil;
end;

function TAbstractHandler.SetNext(AHandler: IHandler): IHandler;
begin
  FNextHandler := AHandler;

  // Returning a handler from here will let us link handlers in a
  // convenient way like this:
  // monkey.SetNext(squirrel).SetNext(dog);

  // Retornando um handler daqui vai nos permitir linkar handlers de uma
  // forma conviniente como abaixo:
  // monkey.SetNext(squirrel).SetNext(dog);

  Result := AHandler;
end;

end.
