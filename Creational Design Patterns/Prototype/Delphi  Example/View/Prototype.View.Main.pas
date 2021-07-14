unit Prototype.View.Main;

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
  Prototype.Classes.Person, Prototype.Classes.IdInfo;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
var
  oPerson1, oPerson2, oPerson3: TPerson;

begin

  mmResult.Clear;
  oPerson1 := TPerson.Create;
  oPerson1.Age := 42;
  oPerson1.BirthDate := StrToDate('01/01/1977');
  oPerson1.Name := 'Jack Daniels';
  oPerson1.IdInfo := TIdInfo.Create(666);

  // Perform a shallow copy of p1 and assign it to p2.
  // Execute uma cópia rasa de p1 e atribua-a a p2.
  oPerson2 := oPerson1.ShallowCopy;

  // Make a deep copy of p1 and assign it to p3.
  // Faça uma cópia profunda de p1 e atribua-a a p3.

  oPerson3 := oPerson1.DeepCopy;

  try

    mmResult.Lines.Add('Original values of p1, p2, p3:');
    mmResult.Lines.Add('');
    mmResult.Lines.Add('oPerson1 instance values:');
    mmResult.Lines.Add(oPerson1.ToString);
    mmResult.Lines.Add('oPerson2 instance values:');
    mmResult.Lines.Add(oPerson2.ToString);
    mmResult.Lines.Add('oPerson3 instance values:');
    mmResult.Lines.Add(oPerson3.ToString);

    // Change the value of p1 properties and display the values of p1,
    // p2 and p3.

    // Altere o valor das propriedades de p1 e exiba os valores de p1,
    // p2 e p3.

    oPerson1.Age := 32;
    oPerson1.BirthDate := StrToDate('01/01/1900');
    oPerson1.Name := 'Frank';
    oPerson1.IdInfo.IdNumber := 7878;

    mmResult.Lines.Add('');
    mmResult.Lines.Add('-------------------');
    mmResult.Lines.Add('');
    mmResult.Lines.Add('Values of p1, p2 and p3 after changes to p1:');
    mmResult.Lines.Add('');
    mmResult.Lines.Add('oPerson1 instance values:');
    mmResult.Lines.Add(oPerson1.ToString);
    mmResult.Lines.Add('p2 instance values (reference values have changed)');
    mmResult.Lines.Add(oPerson2.ToString);
    mmResult.Lines.Add('p3 instance values (everything was kept the same)');
    mmResult.Lines.Add(oPerson3.ToString);

  finally

    FreeAndNil(oPerson1);
    FreeAndNil(oPerson2);
    FreeAndNil(oPerson3);

  end;

end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
