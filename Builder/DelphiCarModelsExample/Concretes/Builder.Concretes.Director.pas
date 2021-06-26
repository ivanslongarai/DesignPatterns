unit Builder.Concretes.Director;

interface

uses
  Builder.Interfaces.IDirector, Builder.Interfaces.IBuilder;

type
  TDirector = class(TInterfacedObject, IDirector)
  private
  public
    function MakeSUV(ABuilder: IBuilder): IBuilder;
    function MakeSportsCar(ABuilder: IBuilder): IBuilder;
    function MakePopularCar(ABuilder: IBuilder): IBuilder;
    class function New: TDirector;
  end;

implementation

{ TDirector }

uses Builder.ProductParts.Engine, Builder.Concretes.Builder.Car,
  Builder.ProductParts.TripComputer, Builder.ProductParts.GPS;

function TDirector.MakePopularCar(ABuilder: IBuilder): IBuilder;
begin
  Result := ABuilder.SetSeats(5)
             .SetEntityName('PopularCar')
             .SetEngine(TPopularCarEngine.New);
end;

function TDirector.MakeSportsCar(ABuilder: IBuilder): IBuilder;
begin
  Result := ABuilder.SetSeats(2)
             .SetEntityName('SportsCar')
             .SetEngine(TSportsCarEngine.New)
             .SetTripComputer(TTripComputer.New)
             .SetGPS(TGPS.New);
end;

function TDirector.MakeSUV(ABuilder: IBuilder): IBuilder;
begin
  Result := ABuilder.SetSeats(7)
              .SetEntityName('SUV')
              .SetEngine(TSUVEngine.New)
              .SetTripComputer(TTripSUVComputer.New)
              .SetGPS(TGPSUSV.New);
end;

class function TDirector.New: TDirector;
begin
  Result := Self.Create;
end;

end.
