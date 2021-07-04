unit Command.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Command.Utils.Util;

type
  TfrmMain = class(TForm)
    pnlTop: TPanel;
    btnGetResult: TButton;
    mmResult: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGetResultClick(Sender: TObject);
  private
    FUtilsSingleton: TUtilsSingleton;
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Command.Invokers.Invoker,
  Command.Interfaces.ICommand,
  Command.Commands.SimpleCommand,
  Command.Commands.ComplexCommand,
  Command.Receivers.Receiver;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
var
  oInvoker: TInvoker;
  oReceiver: TReceiver;
  oSimpleCommand: ICommand;
  oComplexCommand: ICommand;

begin

  // The client code can parameterize an invoker with any commands.

  // O client code pode parametrizar um invoker com quaisquer comandos.

  oInvoker := TInvoker.Create;
  oReceiver := TReceiver.Create;

  try

    oSimpleCommand := TSimpleCommand.Create('Say Hi!');
    oInvoker.SetOnStart(oSimpleCommand);

    oComplexCommand := TComplexCommand.Create(oReceiver, 'Send email',
      'Save Report');

    oInvoker
      .SetOnFinish(oComplexCommand)
      .DoSomethingImportant();

  finally

    FreeAndNil(oInvoker);
    FreeAndNil(oReceiver);

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
