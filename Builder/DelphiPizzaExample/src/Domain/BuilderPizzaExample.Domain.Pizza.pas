unit BuilderPizzaExample.Domain.Pizza;

interface

uses
  BuilderPizzaExample.Domain.Edge,
  BuilderPizzaExample.Domain.ValueObject.PizzaSize,
  BuilderPizzaExample.Domain.ValueObject.PizzaType,
  BuilderPizzaExample.Domain.ValueObject.IngredientsType,
  System.Generics.Collections, BuilderPizzaExample.Domain.IPizza;

type
  TPizza = class(TInterfacedObject, IPizza)
  private
    FPrice: double;
    FFlavor: string;
    FWithEdge: Boolean;
    FEdge: TEdge;
    FPizzaType: TPizzaType;
    FPizzaSize: TPizzaSize;
    FTimeOnStove: Integer;
    FIngredientList: TList<TIngredientsType>;
    procedure SetEdge(const Value: TEdge);
    procedure SetFlavor(const Value: string);
    procedure SetPizzaSize(const Value: TPizzaSize);
    procedure SetPizzaType(const Value: TPizzaType);
    procedure SetPrice(const Value: double);
    procedure SetTimeOnStove(const Value: Integer);
    procedure SetWithEdge(const Value: Boolean);
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddIngredient(AIngredientsType: TIngredientsType);
    //

    function GetWithEdge : Boolean;
    function GetEdge : TEdge;
    function GetFlavor : string;
    function GetTimeOnStove : Integer;
    function GetPrice : double;
    function GetPizzaSize : TPizzaSize;

    property WithEdge: Boolean read GetWithEdge write SetWithEdge;
    property Flavor: string read GetFlavor write SetFlavor;
    property Edge: TEdge read GetEdge write SetEdge;
    property Price: double read GetPrice write SetPrice;
    property PizzaSize: TPizzaSize read GetPizzaSize write SetPizzaSize;
    property PizzaType: TPizzaType read FPizzaType write SetPizzaType;
    property TimeOnStove: Integer read GetTimeOnStove write SetTimeOnStove;
    property IngredientList: TList<TIngredientsType> read FIngredientList;
  end;

implementation

uses
  System.SysUtils;

{ TPizza }

procedure TPizza.AddIngredient(AIngredientsType: TIngredientsType);
begin
  FIngredientList.Add(AIngredientsType);
end;

constructor TPizza.Create;
begin
  FIngredientList := TList<TIngredientsType>.Create;
end;

destructor TPizza.Destroy;
begin
  FIngredientList.Free;
  if Assigned(FEdge) then
    FreeAndNil(FEdge);
  inherited;
end;

function TPizza.GetEdge: TEdge;
begin
  Result := FEdge;
end;

function TPizza.GetFlavor: string;
begin
  Result := FFlavor;
end;

function TPizza.GetPizzaSize: TPizzaSize;
begin
  Result := FPizzaSize;
end;

function TPizza.GetPrice: double;
begin
  Result := FPrice;
end;

function TPizza.GetTimeOnStove: Integer;
begin
  Result := FTimeOnStove;
end;

function TPizza.GetWithEdge: Boolean;
begin
  Result := FWithEdge;
end;

procedure TPizza.SetEdge(const Value: TEdge);
begin
  FEdge := Value;
end;

procedure TPizza.SetFlavor(const Value: string);
begin
  FFlavor := Value;
end;

procedure TPizza.SetPizzaSize(const Value: TPizzaSize);
begin
  FPizzaSize := Value;
end;

procedure TPizza.SetPizzaType(const Value: TPizzaType);
begin
  FPizzaType := Value;
end;

procedure TPizza.SetPrice(const Value: double);
begin
  FPrice := Value;
end;

procedure TPizza.SetTimeOnStove(const Value: Integer);
begin
  FTimeOnStove := Value;
end;

procedure TPizza.SetWithEdge(const Value: Boolean);
begin
  FWithEdge := Value;
end;

end.
