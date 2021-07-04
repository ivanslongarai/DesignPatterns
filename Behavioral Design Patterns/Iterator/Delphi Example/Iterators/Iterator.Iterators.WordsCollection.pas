unit Iterator.Iterators.WordsCollection;

interface

uses
  Iterator.AbstractClass.IteratorAggregate,
  System.Generics.Collections,
  Iterator.Util.StringClass;

// Concrete Collections provide one or several methods for retrieving fresh
// iterator instances, compatible with the collection class.

// As coleções concretas fornecem um ou vários métodos para recuperar
// instâncias do iterador, compatível com a classe da coleção.

type
  TWordsCollection = class(TIteratorAggregate)
  private
    FCollection: TList<TString>;
    FDirection: Boolean;
  public
    constructor Create;
    procedure ReverseDirection;
    function GetItems: TList<TString>;
    procedure AddItem(AItem: TString);
    function GetEnumerator: IEnumerator; override;
    destructor Destroy; override;
  end;

implementation

uses
  Iterator.Iterators.AlphabeticalOrderIterator, System.Classes;

{ TWordsCollection }

procedure TWordsCollection.AddItem(AItem: TString);
begin
  FCollection.Add(AItem);
end;

constructor TWordsCollection.Create;
begin
  FCollection := TList<TString>.Create;
end;

destructor TWordsCollection.Destroy;
var
  I: Integer;
begin
  for I := 0 to Pred(FCollection.Count) do
    FCollection[I].Free;
  FCollection.Free;
  inherited;
end;

function TWordsCollection.GetEnumerator: IEnumerator;
begin
  Result := TAlphabeticalOrderIterator.Create(Self, FDirection);
end;

function TWordsCollection.GetItems: TList<TString>;
begin
  Result := FCollection;
end;

procedure TWordsCollection.ReverseDirection;
begin
  FDirection := not FDirection;
end;

end.
