unit Builder.Interfaces.IDirector;

interface

uses
  Builder.Interfaces.IBuilder;

type
  IDirector = interface
    ['{90EDD5E5-3A76-407C-97B3-3F0E1A099817}']
    function MakeSUV(ABuilder: IBuilder): IBuilder;
    function MakeSportsCar(ABuilder: IBuilder): IBuilder;
    function MakePopularCar(ABuilder: IBuilder): IBuilder;
  end;

implementation

end.
