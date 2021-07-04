unit Iterator.Iterators.AlphabeticalOrderIterator;

interface

uses
  Iterator.AbstractClass.Iterator, Iterator.Iterators.WordsCollection;

type
  TAlphabeticalOrderIterator = class(TIterator)
  private
    FCollection: TWordsCollection;

    // Stores the current traversal position. An iterator may have a lot of
    // other fields for storing iteration state, especially when it is
    // supposed to work with a particular kind of collection.

    // Armazena a posição transversal atual. Um iterador pode ter muitos
    // outros campos para armazenar o estado de iteração, especialmente quando
    // deve funcionar com um tipo específico de coleção

    FPosition: Integer;
    FReverse: Boolean;
  public
    constructor Create(ACollection: TWordsCollection;
      AReverse: Boolean = False);

    function GetCurrent: TObject; override;
    function Key: Integer; override;
    function MoveNext: Boolean; override;
    procedure Reset; override;

  end;

implementation

uses
  Iterator.Util.Utils;

{ TAlphabeticalOrderIterator }

constructor TAlphabeticalOrderIterator.Create(ACollection: TWordsCollection;
  AReverse: Boolean);
begin
  FPosition := -1;
  FCollection := ACollection;
  FReverse := AReverse;
  if AReverse then
    FPosition := ACollection.GetItems.Count;
end;

function TAlphabeticalOrderIterator.GetCurrent: TObject;
begin
  Result := FCollection.GetItems[FPosition];
end;

function TAlphabeticalOrderIterator.Key: Integer;
begin
  Result := FPosition;
end;

function TAlphabeticalOrderIterator.MoveNext: Boolean;
var
  iUpdatedPosition: Integer;
begin
  iUpdatedPosition := FPosition + Integer(TUtils.IIF(FReverse, -1, 1));
  if (iUpdatedPosition >= 0) and (iUpdatedPosition < FCollection.GetItems.Count)
  then
  begin
    FPosition := iUpdatedPosition;
    Result := True;
  end
  else
    Result := False;
end;

procedure TAlphabeticalOrderIterator.Reset;
begin
  inherited;
  FPosition := TUtils.IIF(FReverse, FCollection.GetItems.Count - 1, 0);
end;

end.
