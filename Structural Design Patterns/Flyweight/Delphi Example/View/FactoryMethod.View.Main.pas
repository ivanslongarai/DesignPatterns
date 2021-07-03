unit FactoryMethod.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Flyweight.Factory.FlyweightFactory, Flyweight.Car, Flyweight.Util.Utils;

type
  TfrmMain = class(TForm)
    mmResult: TMemo;
    pnlTop: TPanel;
    btnGetResult: TButton;
    procedure btnGetResultClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FUtilsSingleton: TUtilsSingleton;
  public
    procedure AddCarToPoliceDatabase(AFlyweightFactory: TFlyweightFactory;
      ACar: TCar);
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Flyweight.Util.Types,
  Flyweight.Flyweight;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
var
  oFactory: TFlyweightFactory;
  oListToSend: TCarList;

begin
  mmResult.Clear;

  oListToSend := TCarList.Create;

  try

    oListToSend.Add(TCar.New('Chevrolet', 'Camaro2018', 'pink'));
    oListToSend.Add(TCar.New('Mercedes Benz', 'C300', 'black'));
    oListToSend.Add(TCar.New('Mercedes Benz', 'C500', 'red'));
    oListToSend.Add(TCar.New('BMW', 'M5', 'red'));
    oListToSend.Add(TCar.New('BMW', 'X6', 'white'));

    oFactory := TFlyweightFactory.Create(oListToSend);
    oFactory.ListFlyweights;

    AddCarToPoliceDatabase(oFactory, TCar.New('CL234IR', 'James Doe', 'BMW',
      'M5', 'red'));

    AddCarToPoliceDatabase(oFactory, TCar.New('CL234IR', 'James Doe', 'BMW',
      'X1', 'red'));

    oFactory.ListFlyweights;

  finally

    FreeAndNil(oFactory);
    FreeAndNil(oListToSend);

  end;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FUtilsSingleton := TUtilsSingleton.GetInstance(mmResult);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FUtilsSingleton);
end;

procedure TfrmMain.AddCarToPoliceDatabase(AFlyweightFactory: TFlyweightFactory;
  ACar: TCar);
var
  oFlyweight: TFlyweight;
  oCar: TCar;
begin

  oCar := TCar.New(ACar.Company, ACar.Model, ACar.Color);

  TUtilsSingleton.WriteLog('Client: Adding a car to database.');
  oFlyweight := AFlyweightFactory.GetFlyweight(oCar);

  // The client code either stores or calculates extrinsic state and
  // passes it to the flyweight's methods.

  // O código do cliente armazena ou calcula o estado extrínseco e
  // passa para os métodos do flyweight.

  oFlyweight.Operation(ACar);

  TUtilsSingleton.WriteLog(' ');

  FreeAndNil(ACar);
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
