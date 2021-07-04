unit Iterator.AbstractClass.Iterator;

interface

type
  TIterator = class(TInterfacedObject, IEnumerator)
  public

    function IEnumerator.GetCurrent = GetCurrent;

    // Returns the key of the current element
    // Retorna a chave do elemento atual
    function Key: Integer; virtual; abstract;

    // Returns the current element
    // Retorna o elemento atual
    function GetCurrent: TObject; virtual; abstract;

    // Move forward to next element
    // Avança para o próximo elemento
    function MoveNext: Boolean; virtual; abstract;

    // Rewinds the Iterator to the first element
    // Retrocede o Iterador para o primeiro elemento
    procedure Reset; virtual; abstract;

  end;

implementation

end.
