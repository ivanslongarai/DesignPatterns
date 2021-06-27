unit Flyweight.Factory.FlyweightFactory;

interface

uses Flyweight.Flyweight, System.Generics.Collections, Flyweight.Car,
  Flyweight.Util.Types;

type
  TFlyweightFactory = class
  private
    FPairsCarList: TDictionaryCarList;
  public
    constructor Create(ACarList: TCarList);
    function GetKey(AKey: TCar): string;
    function GetFlyweight(ASharedState: TCar): TFlyweight;
    procedure ListFlyweights;
    destructor Destroy; override;
  end;

implementation

uses
  System.Classes, System.SysUtils, Flyweight.Util.Helper, Flyweight.Util.Utils;

{ TFlyweightFactory }

constructor TFlyweightFactory.Create(ACarList: TCarList);
var
  oCar: TCar;
begin

  if not Assigned(FPairsCarList) then
    FPairsCarList := TList < TPair < TFlyweight, string >>.Create;

  for oCar in ACarList do
    FPairsCarList.Add(TPair<TFlyweight, string>.Create(TFlyweight.Create(oCar),
      GetKey(oCar)));
end;

destructor TFlyweightFactory.Destroy;
var
  I: Integer;
begin
  for I := 0 to Pred(FPairsCarList.Count) do
    FPairsCarList.Items[I].Key.Free;
  FreeAndNil(FPairsCarList);
  inherited;
end;

// Returns a Flyweight's string hash for a given state.
function TFlyweightFactory.GetKey(AKey: TCar): string;
var
  oStringList: TList<string>;

begin

  oStringList := TList<string>.Create;

  oStringList.Add(AKey.Model);
  oStringList.Add(AKey.Color);
  oStringList.Add(AKey.Company);

  if ((AKey.Owner <> '') and (AKey.Number <> '')) then
  begin
    oStringList.Add(AKey.Number);
    oStringList.Add(AKey.Owner);
  end;

  oStringList.Sort();

  Result := String.Join('_', oStringList);

  FreeAndNil(oStringList);
end;

// Returns an existing Flyweight with a given state or creates a new one.
function TFlyweightFactory.GetFlyweight(ASharedState: TCar): TFlyweight;
var
  sKey: string;
  I: Integer;
  iIndex: Integer;

begin
  sKey := GetKey(ASharedState);
  iIndex := -1;

  for I := 0 to Pred(FPairsCarList.Count) do
  begin
    if FPairsCarList.Items[I].Value = sKey then
    begin
      iIndex := I;
      Break;
    end;
  end;

  if iIndex = -1 then
  begin
    TUtilsSingleton.WriteLog
      ('FlyweightFactory: Cannot find a flyweight, creating new one.');
    FPairsCarList.Add(TPair<TFlyweight, string>.Create
      (TFlyweight.Create(ASharedState), sKey));
    Result := FPairsCarList[FPairsCarList.Count - 1].Key;
  end
  else
  begin
    TUtilsSingleton.WriteLog('FlyweightFactory: Reusing existing flyweight.');
    FreeAndNil(ASharedState);
    Result := FPairsCarList[iIndex].Key;
  end;
end;

procedure TFlyweightFactory.ListFlyweights;
var
  oItem: TPair<TFlyweight, string>;
begin
  TUtilsSingleton.WriteLog('FlyweightFactory: I have ' +
    FPairsCarList.Count.ToString + ' flyweights:');
  for oItem in FPairsCarList do
    TUtilsSingleton.WriteLog(oItem.Value);
  TUtilsSingleton.WriteLog(' ');
end;

end.
