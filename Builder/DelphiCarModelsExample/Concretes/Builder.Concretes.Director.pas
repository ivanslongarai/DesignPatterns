unit Builder.Concretes.Director;

interface

uses
  Builder.Interfaces.IDirector, Builder.Interfaces.IBuilder;


// The Director is only responsible for executing the building steps in a
// particular sequence. It is helpful when producing products according to a
// specific order or configuration. Strictly speaking, the Director class is
// optional, since the client can control builders directly.

// O Diretor é responsável somente por executar os passos de construção em uma sequencia desejada
// Isso é útil quando se produz produtos de acordo com uma orderm especifica ou configuração
// Precisamente falando, a Classe Diretor é opcional, desde que o Client pode controlar os builders
// diretamente

type
  TDirector = class(TInterfacedObject, IDirector)
  private
  public
    // The Director can construct several product variations using the same
    // building steps.

    // O diretor pode contruir vários tipos de produto usando os mesmos passos.
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
  Result := ABuilder.SetSeats(5).SetEntityName('PopularCar')
    .SetEngine(TPopularCarEngine.New);
end;

function TDirector.MakeSportsCar(ABuilder: IBuilder): IBuilder;
begin
  Result := ABuilder.SetSeats(2).SetEntityName('SportsCar')
    .SetEngine(TSportsCarEngine.New).SetTripComputer(TTripComputer.New)
    .SetGPS(TGPS.New);
end;

function TDirector.MakeSUV(ABuilder: IBuilder): IBuilder;
begin
  Result := ABuilder.SetSeats(7).SetEntityName('SUV').SetEngine(TSUVEngine.New)
    .SetTripComputer(TTripSUVComputer.New).SetGPS(TGPSUSV.New);
end;

class function TDirector.New: TDirector;
begin
  Result := Self.Create;
end;

end.
