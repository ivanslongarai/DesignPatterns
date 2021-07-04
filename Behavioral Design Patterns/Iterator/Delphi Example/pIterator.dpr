program pIterator;

uses
  Vcl.Forms,
  Iterator.View.Main in 'View\Iterator.View.Main.pas' {frmMain},
  Iterator.AbstractClass.Iterator in 'AbstractClass\Iterator.AbstractClass.Iterator.pas',
  Iterator.AbstractClass.IteratorAggregate in 'AbstractClass\Iterator.AbstractClass.IteratorAggregate.pas',
  Iterator.Iterators.AlphabeticalOrderIterator in 'Iterators\Iterator.Iterators.AlphabeticalOrderIterator.pas',
  Iterator.Iterators.WordsCollection in 'Iterators\Iterator.Iterators.WordsCollection.pas',
  Iterator.Util.StringClass in 'Util\Iterator.Util.StringClass.pas',
  Iterator.Util.Utils in 'Util\Iterator.Util.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
