unit Builder.Views.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    pnlClient: TPanel;
    mmResult: TMemo;
    btnExecute: TButton;
    procedure btnExecuteClick(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Builder.Interfaces.IDirector,
  Builder.Interfaces.IBuilder,
  Builder.Concretes.Builder.Car,
  Builder.Concretes.Builder.Manual,
  Builder.Concretes.Director;

{$R *.dfm}

procedure TfrmMain.btnExecuteClick(Sender: TObject);
var
  oDirector: IDirector;
  oCar, oManual: IBuilder;

begin

  mmResult.Clear;

  // The client code creates a builder object, passes it to the
  // director and then initiates the construction process. The end
  // result is retrieved from the builder object.

  // O código Client cria um objeto Diretor, um objeto concreto Builder, passa este para o Diretor que inicia
  // os passos de produção, no Final recupera o Produto ppodendo se utilizar das propriedades desse produto

  oDirector := TDirector.Create;

  oCar := TCar.New;
  oCar := oDirector.MakeSUV(oCar).GetResult;
  mmResult.Lines.Add((oCar as TCar).GetDescription);
  mmResult.Lines.Add('------------------------------');

  oCar := TCar.New;
  oCar := oDirector.MakePopularCar(oCar).GetResult;
  mmResult.Lines.Add((oCar as TCar).GetDescription);
  mmResult.Lines.Add('------------------------------');

  oCar := TCar.New;
  oCar := oDirector.MakeSportsCar(oCar).GetResult;
  mmResult.Lines.Add((oCar as TCar).GetDescription);
  mmResult.Lines.Add('------------------------------');

  oManual := TManual.New;
  oManual := oDirector.MakeSportsCar(oManual).GetResult;
  mmResult.Lines.Add((oManual as TManual).GetDescription);

  oManual := TManual.New;
  oManual := oDirector.MakePopularCar(oManual).GetResult;
  mmResult.Lines.Add((oManual as TManual).GetDescription);

  oManual := TManual.New;
  oManual := oDirector.MakeSUV(oManual).GetResult;
  mmResult.Lines.Add((oManual as TManual).GetDescription);

  // Remember, the Builder pattern can be used without a Director
  // class.

  // Lembre-se, o Padrão Builder pode ser usado sem um Diretor
  oCar := TCar.New;
  showMessage(oCar.SetSeats(10).GetResult.GetDescription);

end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
