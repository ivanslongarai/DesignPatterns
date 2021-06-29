unit AbstractFactory.View.Main;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    pnlTop: TPanel;
    mmResult: TMemo;
    btnGetResult: TButton;
    procedure btnGetResultClick(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Winapi.Windows, AbstractFactory.Clients.Client;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
var
  oClient: TClient;
begin
  mmResult.Clear;
  oClient := TClient.Create;
  mmResult.Lines.Text := oClient.Main;
  FreeAndNil(oClient);
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
