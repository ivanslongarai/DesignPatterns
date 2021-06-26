unit Builder.Concretes.Builder.Car;

interface

uses
  Builder.Interfaces.IBuilder, Builder.Interfaces.IEngine,
  Builder.Interfaces.IGPS, Builder.Interfaces.ITripComputer;

type
  TCar = class(TInterfacedObject, IBuilder)
  private
    FEngine: IEngine;
    FGPS: IGPS;
    FSeats: Integer;
    FTripComputer: ITripComputer;
    FEntityName : string;
  public
    function GetCarDescription: string;
    function SetSeats(ANumberOfSeats: Integer): IBuilder;
    function SetEngine(AEngine: IEngine): IBuilder;
    function SetTripComputer(ATripComputer : ITripComputer): IBuilder;
    function SetGPS(AGPS : IGPS): IBuilder;
    function GetResult: IBuilder;
    function SetEntityName(Const AValue: string): IBuilder;
    class function New: TCar;
  end;

implementation

uses
  Builder.ProductParts.GPS, Builder.ProductParts.TripComputer, System.Classes,
  System.SysUtils;

{ TCar }

function TCar.GetCarDescription: string;
var
  oList: TStringList;
begin
  oList := TStringList.Create;
  try
    oList.Add('Modelo do carro: ' + FEntityName) ;

    oList.Add('');

    oList.Add('  Número de Acentos: ' + FSeats.ToString);

    if Assigned(FEngine) then
      oList.Add('  Potência Motor: ' + FEngine.GetPotency)
    else
      oList.Add('  Potência Motor: Não Informado');

    if Assigned(FGPS) then
      oList.Add('  Modelo GPS: ' + FGPS.GetModel)
    else
      oList.Add('  Modelo GPS: Não Informado');

    if Assigned(FTripComputer) then
      oList.Add('  Computador de bordo: ' + FTripComputer.GetModel)
    else
      oList.Add('  Computador de bordo: Não Informado');

    Result := oList.Text;
  finally
    FreeAndNil(oList);
  end;
end;

function TCar.GetResult: IBuilder;
begin
  Result := Self;
end;

class function TCar.New: TCar;
begin
  Result := Self.Create;
end;

function TCar.SetSeats(ANumberOfSeats: Integer): IBuilder;
begin
  Result := Self;
  FSeats := ANumberOfSeats;
end;

function TCar.SetEngine(AEngine: IEngine): IBuilder;
begin
  Result := Self;
  FEngine := AEngine;
end;

function TCar.SetEntityName(const AValue: string): IBuilder;
begin
  Result := Self;
  FEntityName := AValue;
end;

function TCar.SetGPS(AGPS : IGPS): IBuilder;
begin
  Result := Self;
  FGPS := AGPS
end;

function TCar.SetTripComputer(ATripComputer : ITripComputer): IBuilder;
begin
  Result := Self;
  FTripComputer := ATripComputer;
end;

end.
