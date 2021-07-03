unit Builder.ProductParts.GPS;

interface

uses
  Builder.Interfaces.IGPS;

type
  TGPS = class(TInterfacedObject, IGPS)
  private
    function GetModel: string;
  public
    property Model : string read GetModel;
    class function New: IGPS;
  end;

  TGPSUSV = class(TInterfacedObject, IGPS)
  private
    function GetModel: string;
  public
    property Model : string read GetModel;
    class function New: IGPS;
  end;

implementation

{ TGPS }

function TGPS.GetModel: string;
begin
  Result := 'GPS APX';
end;

class function TGPS.New: IGPS;
begin
 Result := Self.Create;
end;

{ TGPSUSV }

function TGPSUSV.GetModel: string;
begin
  Result := 'GPS APX SUV 2';
end;

class function TGPSUSV.New: IGPS;
begin
 Result := Self.Create;
end;

end.
