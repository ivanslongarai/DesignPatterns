unit pAdapter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    pnlTop: TPanel;
    btnGetResult: TButton;
    mmResult: TMemo;
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
