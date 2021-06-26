unit BuilderPizzaExample.Domain.Edge;

interface

uses
  BuilderPizzaExample.Domain.ValueObject.EdgeType,
  BuilderPizzaExample.Domain.ValueObject.EdgeSize;

type
  TEdge = class
  private
    FEdgeType: TEdgeType;
    FEdgeSize: TEdgeSize;
    procedure SetEdgeSize(const Value: TEdgeSize);
    procedure SetEdgeType(const Value: TEdgeType);
  public
    constructor Create; overload;
    constructor Create(AEdgeType: TEdgeType; AEdgeSize: TEdgeSize); overload;

    property EdgeType: TEdgeType read FEdgeType write SetEdgeType;
    property EdgeSize: TEdgeSize read FEdgeSize write SetEdgeSize;
    class function New(AEdgeType: TEdgeType; AEdgeSize: TEdgeSize): TEdge;

  end;

implementation

{ TEdge }

constructor TEdge.Create(AEdgeType: TEdgeType; AEdgeSize: TEdgeSize);
begin
  FEdgeType := AEdgeType;
  FEdgeSize := AEdgeSize;
  inherited Create;
end;

constructor TEdge.Create;
begin
  inherited Create;
end;

class function TEdge.New(AEdgeType: TEdgeType; AEdgeSize: TEdgeSize): TEdge;
begin
  Result := Self.Create(AEdgeType, AEdgeSize);;
end;

procedure TEdge.SetEdgeSize(const Value: TEdgeSize);
begin
  FEdgeSize := Value;
end;

procedure TEdge.SetEdgeType(const Value: TEdgeType);
begin
  FEdgeType := Value;
end;

end.
