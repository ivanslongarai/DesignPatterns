unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    pnlTop: TPanel;
    btnGetResult: TButton;
    mmResult: TMemo;
    procedure btnGetResultClick(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Adapter.Classes.Adaptee, Adapter.Interfaces.ITarget, Adapter.Classes.Adapter;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
var
  oAdaptee: Tadaptee;
  oTarget: ITarget;
begin
  oAdaptee := Tadaptee.Create;
  oTarget := TAdapter.Create(oAdaptee);
  mmResult.Clear;
  mmResult.Lines.Add('The Adaptee structure is incompatible with the client.');
  mmResult.Lines.Add('But with adapter, the client can call the method.');
  mmResult.Lines.Add(oTarget.GetRequest);
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
