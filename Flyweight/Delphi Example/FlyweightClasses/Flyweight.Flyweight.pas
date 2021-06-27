unit Flyweight.Flyweight;

interface

uses
  Flyweight.Car;

// The Flyweight stores a common portion of the state (also called intrinsic
// state) that belongs to multiple real business entities. The Flyweight
// accepts the rest of the state (extrinsic state, unique for each entity)
// via its method parameters.

type
  TFlyweight = class
  private
    FSharedState: TCar;
  public
    constructor Create(ACar: TCar);
    procedure Operation(AUniqueState: TCar);
    destructor Destroy; override;

  end;

implementation

uses
  REST.Json, Flyweight.Util.Utils, System.SysUtils;

{ TFlyweight }

constructor TFlyweight.Create(ACar: TCar);
begin
  FSharedState := ACar;
end;

destructor TFlyweight.Destroy;
begin
  FreeAndNil(FSharedState);
  inherited;
end;

procedure TFlyweight.Operation(AUniqueState: TCar);
var
  sShared: string;
  sUniqueState: string;
begin
  sUniqueState := TJson.ObjectToJsonString(AUniqueState);
  sShared := TJson.ObjectToJsonString(FSharedState);
  TUtilsSingleton.WriteLog('Flyweight: Displaying shared ' + sShared + ' and unique ' +
    sUniqueState + ' state.');
end;

end.
