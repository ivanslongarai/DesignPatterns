unit Builder.Interfaces.IBuilder;

interface

uses
  Builder.Interfaces.IEngine, Builder.Interfaces.ITripComputer,
  Builder.Interfaces.IGPS;

type
  IBuilder = interface
    ['{69ABA5A5-53BD-443E-B0D0-410B6C76E00D}']
    function SetSeats(ANumberOfSeats: Integer): IBuilder;
    function SetEngine(AEngine: IEngine): IBuilder;
    function SetTripComputer(ATripComputer : ITripComputer): IBuilder;
    function SetGPS(AGPS : IGPS): IBuilder;
    function SetEntityName(Const AValue: string): IBuilder;
    function GetResult: IBuilder;
  end;

implementation

end.
