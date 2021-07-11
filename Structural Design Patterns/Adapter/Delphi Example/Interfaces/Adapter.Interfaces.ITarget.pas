unit Adapter.Interfaces.ITarget;

interface

// The Target defines the domain-specific interface used by the client code.

// Define a interface específica do domínio usado pelo código do cliente.

type
 ITarget = interface
   function GetRequest : string;
 end;

implementation

end.
