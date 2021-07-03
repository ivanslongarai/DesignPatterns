unit Builder.ProductParts.Engine;

interface

uses
  Builder.Interfaces.IEngine;

type
  TEngine = class(TInterfacedObject, IEngine)
  private
    function GetPotency: string; virtual; abstract;
  public
    property Potency: string read GetPotency;
    class function New: IEngine; virtual; abstract;
  end;

  TSUVEngine = class(TEngine)
  private
    function GetPotency: string; override;
  public
    property Potency: string read GetPotency;
    class function New: IEngine; override;
  end;

  TSportsCarEngine = class(TEngine)
  private
    function GetPotency: string; override;
  public
    property Potency: string read GetPotency;
    class function New: IEngine; override;
  end;

  TPopularCarEngine = class(TEngine)
  private
    function GetPotency: string; override;
  public
    property Potency: string read GetPotency;
    class function New: IEngine; override;
  end;

implementation

{ TSportsCarEngine }

function TSportsCarEngine.GetPotency: string;
begin
  Result := '1.8';
end;

class function TSportsCarEngine.New: IEngine;
begin
  Result := Self.Create;
end;

{ TSUVEngine }

function TSUVEngine.GetPotency: string;
begin
  Result := '2.0';
end;

class function TSUVEngine.New: IEngine;
begin
  Result := Self.Create;
end;

{ TPopularCarEngine }

function TPopularCarEngine.GetPotency: string;
begin
  Result := '1.0';
end;

class function TPopularCarEngine.New: IEngine;
begin
  Result := Self.Create;
end;

end.
