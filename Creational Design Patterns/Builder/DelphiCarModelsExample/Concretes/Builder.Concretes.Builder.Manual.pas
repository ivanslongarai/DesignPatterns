unit Builder.Concretes.Builder.Manual;

interface

uses
  Builder.Interfaces.IBuilder, Builder.Interfaces.IEngine,
  Builder.Interfaces.IGPS, Builder.Interfaces.ITripComputer;

type
  TManual = class(TInterfacedObject, IBuilder)
  private
    FEngine: IEngine;
    FGPS: IGPS;
    FSeats: Integer;
    FTripComputer: ITripComputer;
    FEntityName: string;
  public
    function GetDescription: string;
    function SetSeats(ANumberOfSeats: Integer): IBuilder;
    function SetEngine(AEngine: IEngine): IBuilder;
    function SetTripComputer(ATripComputer: ITripComputer): IBuilder;
    function SetGPS(AGPS : IGPS): IBuilder;
    function GetResult: IBuilder;
    function SetEntityName(Const AValue: string): IBuilder;
    class function New: TManual;
  end;

implementation

uses
  Builder.ProductParts.TripComputer, Builder.ProductParts.GPS, System.Classes,
  System.SysUtils;

{ TManual }

function TManual.GetDescription: string;

begin
  Result := 'Manual do carro: ' + FEntityName;
end;

function TManual.GetResult: IBuilder;
begin
  Result := Self;
end;

class function TManual.New: TManual;
begin
  Result := Self.Create;
end;

function TManual.SetSeats(ANumberOfSeats: Integer): IBuilder;
begin
  Result := Self;
  FSeats := ANumberOfSeats;
end;

function TManual.SetEngine(AEngine: IEngine): IBuilder;
begin
  Result := Self;
  FEngine := AEngine;
end;

function TManual.SetEntityName(const AValue: string): IBuilder;
begin
  Result := Self;
  FEntityName := AValue;
end;

function TManual.SetGPS(AGPS : IGPS): IBuilder;
begin
  Result := Self;
  FGPS := AGPS;
end;

function TManual.SetTripComputer(ATripComputer: ITripComputer): IBuilder;
begin
  Result := Self;
  FTripComputer := ATripComputer;
end;

end.
