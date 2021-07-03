unit Builder.Interfaces.IBuilder;

interface

uses
  Builder.Interfaces.IEngine, Builder.Interfaces.ITripComputer,
  Builder.Interfaces.IGPS;

 // The Builder interface specifies methods for creating the different parts
 // of the Product objects.

 // A Interface do Builder especifica métodos para criação de diferentes partes do produto resultante

type
  IBuilder = interface
    ['{69ABA5A5-53BD-443E-B0D0-410B6C76E00D}']
    function GetDescription: string;
    function SetSeats(ANumberOfSeats: Integer): IBuilder;
    function SetEngine(AEngine: IEngine): IBuilder;
    function SetTripComputer(ATripComputer : ITripComputer): IBuilder;
    function SetGPS(AGPS : IGPS): IBuilder;
    function SetEntityName(Const AValue: string): IBuilder;
    function GetResult: IBuilder;
  end;

implementation

end.
