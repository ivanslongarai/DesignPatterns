unit Composite.CompositeComponent;

interface

uses
  System.Generics.Collections, Composite.Component;

type
  TComposite = class(TComponent)
  protected
    FChildren: TList<TComponent>;
  public
    constructor Create;
    function Operation: string; override;
    procedure Add(AComponent: TComponent); override;
    procedure Remove(AComponent: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{ TComposite }

constructor TComposite.Create;
begin
  FChildren := TList<TComponent>.Create;
end;

destructor TComposite.Destroy;
var
  I: Integer;
begin
  for I := 0 to Pred(FChildren.Count) do
    FChildren[I].Free;
  FChildren.Free;
  inherited;
end;

function TComposite.Operation: string;
var
  I: Integer;
  sResult: string;
  oComponent: TComponent;
begin
  I := 0;
  sResult := 'Branch(';
  for oComponent in FChildren do
  begin
    sResult := sResult + oComponent.Operation;
    if (I <> Pred(FChildren.Count)) then
    begin
      sResult := sResult + '+';
    end;
    Inc(I);
  end;
  Result := sResult + ')';
end;

procedure TComposite.Add(AComponent: TComponent);
begin
  inherited;
  FChildren.Add(AComponent);
end;

procedure TComposite.Remove(AComponent: TComponent);
begin
  inherited;
  FChildren.Remove(AComponent);
end;

end.
