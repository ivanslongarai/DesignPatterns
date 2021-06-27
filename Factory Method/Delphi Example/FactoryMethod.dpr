program FactoryMethod;

uses
  Vcl.Forms,
  FactoryMethod.View.Main in 'View\FactoryMethod.View.Main.pas' {frmMain},
  FactoryMethod.Interfaces.IProduct in 'Interfaces\FactoryMethod.Interfaces.IProduct.pas',
  FactoryMethod.Concretes.ConcreteProduct1 in 'Concretes\FactoryMethod.Concretes.ConcreteProduct1.pas',
  FactoryMethod.Concretes.ConcreteProduct2 in 'Concretes\FactoryMethod.Concretes.ConcreteProduct2.pas',
  FactoryMethod.Creators.ConcreteCreator1 in 'Creators\FactoryMethod.Creators.ConcreteCreator1.pas',
  FactoryMethod.Creators.Creator in 'Creators\FactoryMethod.Creators.Creator.pas',
  FactoryMethod.Creators.ConcreteCreator2 in 'Creators\FactoryMethod.Creators.ConcreteCreator2.pas',
  FactoryMethod.Consumers.Client in 'Consumers\FactoryMethod.Consumers.Client.pas',
  FactoryMethod.Interfaces.ICreator in 'Interfaces\FactoryMethod.Interfaces.ICreator.pas',
  FactoryMethod.Interfaces.IConcreteCreator in 'Interfaces\FactoryMethod.Interfaces.IConcreteCreator.pas',
  FactoryMethod.Interfaces.IClient in 'Interfaces\FactoryMethod.Interfaces.IClient.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
