unit ChainOfResponsibility.Handlers.SquirrelHandler;

interface

uses
  ChainOfResponsibility.AbstractClasses.AbstractHandler;

type
  TSquirrelHandler = class(TAbstractHandler)
  public
    function Handle(ARequest: TObject): TObject; override;
  end;

implementation

uses
  ChainOfResponsibility.Util.StringClass;

{ TSquirrelHandler }

function TSquirrelHandler.Handle(ARequest: TObject): TObject;
begin
  if TString(ARequest).Str = 'Nut' then
    Result := TString.New('Squirrel: I will eat the ' + TString(ARequest).Str)
  else
    Result := inherited Handle(ARequest);
end;

end.
