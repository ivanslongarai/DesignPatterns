unit FactoryMethod.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    mmResult: TMemo;
    pnlTop: TPanel;
    btnGetResult: TButton;
    procedure btnGetResultClick(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses FactoryMethod.Consumers.Client;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
begin
  TClient.New(mmResult);
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
