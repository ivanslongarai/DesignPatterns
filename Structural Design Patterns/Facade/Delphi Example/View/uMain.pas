unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
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
  Facade.SubSystem.SubSystem1, Facade.SubSystem.SubSystem2,
  Facade.Client.Client, Facade.Facade.Facade;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
var
  oSubSystem1: TSubSystem1;
  oSubSystem2: TSubSystem2;
  oFacade: TFacade;
begin
  oSubSystem1 := TSubSystem1.Create;
  oSubSystem2 := TSubSystem2.Create;
  oFacade := TFacade.Create(oSubSystem1, oSubSystem2);
  try
    mmResult.Lines.StrictDelimiter := True;
    mmResult.Lines.Delimiter := '|';
    mmResult.Lines.DelimitedText := TClient.ClientCode(oFacade);
  finally
    FreeAndNil(oSubSystem1);
    FreeAndNil(oSubSystem2);
    FreeAndNil(oFacade);
  end;

end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
