unit Facade.Client.Client;

interface

uses
  Facade.Facade.Facade;

type
  TClient = class
  public
    class function ClientCode(AFacade: TFacade): string;
  end;

implementation

{ TClient }

class function TClient.ClientCode(AFacade: TFacade): string;
begin
  Result := AFacade.Operation;
end;

end.
