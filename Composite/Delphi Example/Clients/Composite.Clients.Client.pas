unit Composite.Clients.Client;

interface

uses
  Composite.Component, Composite.Interfaces.IClient;

type
  TClient = class(TInterfacedObject, IClient)
  public
    function ClientCode(ALeaf: TComponent): string;
    function ClientCode2(AComponent1, AComponent2: TComponent): string;
  end;

implementation

{ TClient }

function TClient.ClientCode(ALeaf: TComponent): string;
begin
  Result := 'Result: ' + ALeaf.Operation;
end;

function TClient.ClientCode2(AComponent1, AComponent2: TComponent): string;
begin
  if AComponent1.IsComposite then
    AComponent1.Add(AComponent2);
  Result := AComponent1.Operation;
end;

end.
