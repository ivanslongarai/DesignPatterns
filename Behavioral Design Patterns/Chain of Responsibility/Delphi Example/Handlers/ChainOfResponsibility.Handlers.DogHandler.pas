unit ChainOfResponsibility.Handlers.DogHandler;

interface

uses
  ChainOfResponsibility.AbstractClasses.AbstractHandler;

type
  TDogHandler = class(TAbstractHandler)
  public
    function Handle(ARequest: TObject): TObject; override;
  end;

implementation

uses
  ChainOfResponsibility.Util.StringClass;

{ TDogHandler }

function TDogHandler.Handle(ARequest: TObject): TObject;
begin
  if TString(ARequest).Str = 'MeatBall' then
    Result := TString.New('Dog: I will eat the ' + TString(ARequest).Str)
  else
    Result := inherited Handle(ARequest);
end;

end.
