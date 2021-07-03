unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ChainOfResponsibility.Util.Utils;

type
  TfrmMain = class(TForm)
    pnlTop: TPanel;
    btnGetResult: TButton;
    mmResult: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btnGetResultClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FUtilsSingleton: TUtilsSingleton;
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses
  ChainOfResponsibility.Handlers.MonkeyHandler,
  ChainOfResponsibility.Handlers.SquirrelHandler,
  ChainOfResponsibility.Handlers.DogHandler,
  ChainOfResponsibility.Clients.Client;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
var
  oMonkey: TMonkeyHandler;
  oSquirrel: TSquirrelHandler;
  oDog: TDogHandler;
begin

  mmResult.Clear;

  oMonkey := TMonkeyHandler.Create;
  oSquirrel := TSquirrelHandler.Create;
  oDog := TDogHandler.Create;

  try

    oMonkey.SetNext(oSquirrel).SetNext(oDog);

    // The client should be able to send a request to any handler, not
    // just the first one in the chain.

    // O cliente deve ser capaz de mandar uma solicitação para qualquer handler
    // não somente para o primeiro da cadeia

    TUtilsSingleton.WriteLog('Chain: Monkey > Squirrel > Dog');
    TClient.ClientCode(oMonkey);
    TUtilsSingleton.WriteLog('');

    TUtilsSingleton.WriteLog('Subchain: Squirrel > Dog');
    TClient.ClientCode(oSquirrel);

  finally

    FreeAndNil(oMonkey);

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

initialization

ReportMemoryLeaksOnShutdown := True;

end.
