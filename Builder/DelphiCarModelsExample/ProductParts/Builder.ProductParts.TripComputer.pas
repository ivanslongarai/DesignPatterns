unit Builder.ProductParts.TripComputer;

interface

uses
  Builder.Interfaces.ITripComputer;

type
  TTripComputer = class(TInterfacedObject, ITripComputer)
  public
     function GetModel: string;
    class function New: ITripComputer;
  end;

  TTripSUVComputer = class(TInterfacedObject, ITripComputer)
  public
     function GetModel: string;
    class function New: ITripComputer;
  end;

implementation

{ TTripComputer }

function TTripComputer.GetModel: string;
begin
  Result := 'E6B Jeppesen';
end;

class function TTripComputer.New: ITripComputer;
begin
 Result := Self.Create;
end;

{ TTripSUVComputer }

function TTripSUVComputer.GetModel: string;
begin
  Result := 'OBD2';
end;

class function TTripSUVComputer.New: ITripComputer;
begin
  Result := Self.Create;
end;

end.