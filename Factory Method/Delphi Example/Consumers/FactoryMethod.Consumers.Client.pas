unit FactoryMethod.Consumers.Client;

interface

uses Vcl.StdCtrls, FactoryMethod.Creators.Creator,
  FactoryMethod.Interfaces.ICreator, FactoryMethod.Interfaces.IClient;

type
  TClient = class(TInterfacedObject, IClient)
  private
    FResult: TMemo;
  public
    constructor Create(AMemo: TMemo);
    procedure ClientCode(ACreator: ICreator);
    class function New(AMemo: TMemo): IClient;
  end;

implementation

uses
  FactoryMethod.Creators.ConcreteCreator1,
  FactoryMethod.Creators.ConcreteCreator2;

{ TClient }

constructor TClient.Create(AMemo: TMemo);
begin
  FResult := AMemo;
  FResult.Clear;

  FResult.Lines.Add('App: Launched with the ConcreteCreator1.');
  ClientCode(TConcreteCreator1.New);

  FResult.Lines.Add(' ');

  FResult.Lines.Add('App: Launched with the ConcreteCreator2.');
  ClientCode(TConcreteCreator2.New);

  // The client code works with an instance of a concrete creator, albeit
  // through its base interface. As long as the client keeps working with
  // the creator via the base interface, you can pass it any creator's
  // subclass.

  // O código cliente trabalha com uma instancia de um creator concreto, embora através de sua interface
  // Enquanto o cliente se mantem trabalhando com o creator via interface base, você pode passar
  // para a criação qualquer sub-classe derivada de ICreator

end;

class function TClient.New(AMemo: TMemo): IClient;
begin
  Result := Self.Create(AMemo);
end;

procedure TClient.ClientCode(ACreator: ICreator);
begin
  FResult.Lines.Add('Client: Im not aware of the creators class,' +
    'but it still works.' + ACreator.SomeOperation());
end;

end.
