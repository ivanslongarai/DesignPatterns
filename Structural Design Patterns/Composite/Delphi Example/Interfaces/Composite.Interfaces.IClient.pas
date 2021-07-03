unit Composite.Interfaces.IClient;

interface

uses
  Composite.Component;

type
  IClient = interface
    ['{B12F3E0D-DE83-41E1-9643-70B6498D065D}']
    function ClientCode(ALeaf: TComponent): string;
    function ClientCode2(AComponent1, AComponent2: TComponent): string;
  end;

implementation

end.
