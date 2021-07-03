unit Composite.Main;

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

uses
  Composite.Interfaces.IClient,
  Composite.Leaf, Composite.CompositeComponent,
  Composite.Clients.Client;

{$R *.dfm}

procedure TfrmMain.btnGetResultClick(Sender: TObject);
var
  oClient: IClient;
  oLeaf, oLeafA, oLeafB, oLeafC: TLeaf;
  oTree, oBranchA, oBranchB: TComposite;
begin

  // This way the client code can support the simple leaf
  // components...

  // Desta forma o ClientCode pode suportar uma simples Leaf
  oClient := TClient.Create;
  oLeaf := TLeaf.Create;

  mmResult.Lines.Add('Client: I get a simple component:');
  mmResult.Lines.Add(oClient.ClientCode(oLeaf));

  // ...as well as the complex composites.
  // assim como composites complexos

  oTree := TComposite.Create;
  oBranchA := TComposite.Create;
  oLeafA := TLeaf.Create;
  oLeafB := TLeaf.Create;

  oBranchB := TComposite.Create;
  oLeafC := TLeaf.Create;

  try

    oBranchA.Add(oLeafA);
    oBranchA.Add(oLeafB);
    oBranchB.Add(oLeafC);

    oTree.Add(oBranchA);
    oTree.Add(oBranchB);

    mmResult.Lines.Add('');
    mmResult.Lines.Add('Client: Now I have got a composite tree:');
    mmResult.Lines.Add(oClient.ClientCode(oTree));

    mmResult.Lines.Add('');
    mmResult.Lines.Add
      ('Client: I do not need to check the components classes even when managing the tree:');

    mmResult.Lines.Add(oClient.ClientCode2(oTree, oLeaf));

  finally

    FreeAndNil(oTree);

  end;

end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
