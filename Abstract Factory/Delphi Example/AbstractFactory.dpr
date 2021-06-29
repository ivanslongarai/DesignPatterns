program AbstractFactory;

uses
  Vcl.Forms,
  AbstractFactory.View.Main in 'View\AbstractFactory.View.Main.pas' {frmMain},
  AbstractFactory.Interfaces.IAbstractFactory in 'Interfaces\AbstractFactory.Interfaces.IAbstractFactory.pas',
  AbstractFactory.Interfaces.IAbstractProductA in 'Interfaces\AbstractFactory.Interfaces.IAbstractProductA.pas',
  AbstractFactory.Interfaces.IAbstractProductB in 'Interfaces\AbstractFactory.Interfaces.IAbstractProductB.pas',
  AbstractFactory.Concretes.ConcreteFactory1 in 'Concretes\AbstractFactory.Concretes.ConcreteFactory1.pas',
  AbstractFactory.Concretes.ConcreteFactory2 in 'Concretes\AbstractFactory.Concretes.ConcreteFactory2.pas',
  AbstractFactory.Concretes.ConcreteProductA1 in 'Concretes\AbstractFactory.Concretes.ConcreteProductA1.pas',
  AbstractFactory.Concretes.ConcreteProductA2 in 'Concretes\AbstractFactory.Concretes.ConcreteProductA2.pas',
  AbstractFactory.Concretes.ConcreteProductB1 in 'Concretes\AbstractFactory.Concretes.ConcreteProductB1.pas',
  AbstractFactory.Concretes.ConcreteProductB2 in 'Concretes\AbstractFactory.Concretes.ConcreteProductB2.pas',
  AbstractFactory.Clients.Client in 'Client\AbstractFactory.Clients.Client.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
