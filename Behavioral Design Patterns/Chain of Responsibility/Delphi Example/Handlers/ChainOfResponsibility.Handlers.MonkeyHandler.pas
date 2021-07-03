unit ChainOfResponsibility.Handlers.MonkeyHandler;

interface

uses
  ChainOfResponsibility.AbstractClasses.AbstractHandler;

type
  TMonkeyHandler = class(TAbstractHandler)
  public
    function Handle(ARequest: TObject): TObject; override;
  end;

implementation

uses
  ChainOfResponsibility.Util.StringClass;

{ TMonkeyHandler }

function TMonkeyHandler.Handle(ARequest: TObject): TObject;
begin
  if TString(ARequest).Str = 'Banana' then
    Result := TString.New('Monkey: I will eat the ' + TString(ARequest).Str)
  else
    Result := inherited Handle(ARequest);
end;

end.
