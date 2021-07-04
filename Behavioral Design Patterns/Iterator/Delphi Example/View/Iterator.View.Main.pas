unit Iterator.View.Main;

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
  Iterator.Iterators.WordsCollection, Iterator.Util.StringClass;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
var
  oWordsCollection: TWordsCollection;
  oElement: TObject;
  I: Integer;

begin
  mmResult.Clear;

  // The client code may or may not know about the Concrete Iterator
  // or Collection classes, depending on the level of indirection you
  // want to keep in your program.

  // O código do cliente pode ou não saber sobre o Iterador Concreto
  // ou classes de coleção, dependendo do nível de indireção que você
  // deseja manter em seu programa.

  oWordsCollection := TWordsCollection.Create;

  try

    oWordsCollection.AddItem(TString.New('First'));
    oWordsCollection.AddItem(TString.New('Second'));
    oWordsCollection.AddItem(TString.New('Third'));

    for I := 1 to 2 do
    begin

      mmResult.Lines.Add('Straight traversal:');

      for oElement in oWordsCollection do
        mmResult.Lines.Add(TString(oElement).Str);

      mmResult.Lines.Add('');
      mmResult.Lines.Add('Reverse traversal:');

      oWordsCollection.ReverseDirection;
      for oElement in oWordsCollection do
        mmResult.Lines.Add(TString(oElement).Str);

      oWordsCollection.ReverseDirection;
      mmResult.Lines.Add('');

    end;

  finally

    FreeAndNil(oWordsCollection);

  end;

end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
