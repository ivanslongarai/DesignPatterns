unit Adapter.Classes.Adapter;

interface

uses
  Adapter.Interfaces.ITarget, Adapter.Classes.Adaptee;

// The Adapter makes the Adaptee's interface compatible with the Target's
// interface.

// O Adapter torna a interface do Adaptee compatível com a interface Target.

type
  TAdapter = class(TInterfacedObject, ITarget)
  var
    FAdaptee: TAdaptee;
  public
    constructor Create(AAdaptee: TAdaptee);
    function GetRequest: string;
    destructor Destroy; override;

  end;

implementation

uses
  System.SysUtils;

{ TAdapter }

constructor TAdapter.Create(AAdaptee: TAdaptee);
begin
  FAdaptee := AAdaptee;
end;

destructor TAdapter.Destroy;
begin
  if Assigned(FAdaptee) then
    FreeAndNil(FAdaptee);
  inherited;
end;

function TAdapter.GetRequest: string;
begin
  Result := 'This is ' + FAdaptee.GetSpecificRequest;
end;

end.
