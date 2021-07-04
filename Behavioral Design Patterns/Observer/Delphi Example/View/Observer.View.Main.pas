unit Observer.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Observer.Util.Utils;

type
  TfrmMain = class(TForm)
    pnlTop: TPanel;
    btnGetResult: TButton;
    mmResult: TMemo;
    procedure btnGetResultClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FUtilsSingleton: TUtilsSingleton;
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Observer.Interfaces.ObserverSubject,
  Observer.Interfaces.Concretes.Subject,
  Observer.Interfaces.Concretes.ConcreteObserverA,
  Observer.Interfaces.Concretes.ConcreteObserverB;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
var
  oSubject: ISubject;
  oObserverA: IObserver;
  oObserverB: IObserver;
begin

  // The client code.

  mmResult.Clear;

  oSubject := TSubject.Create;
  oObserverA := TConcreteObserverA.Create;
  oObserverB := TConcreteObserverB.Create;

  oSubject.Attach(oObserverA);
  oSubject.Attach(oObserverB);
  mmResult.Lines.Add('');

  oSubject.SomeBusinessLogic();
  mmResult.Lines.Add('');

  oSubject.SomeBusinessLogic();
  mmResult.Lines.Add('');

  oSubject.Detach(oObserverB);
  mmResult.Lines.Add('');

  oSubject.SomeBusinessLogic();

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FUtilsSingleton := TUtilsSingleton.GetInstance(mmResult);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FUtilsSingleton);
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
