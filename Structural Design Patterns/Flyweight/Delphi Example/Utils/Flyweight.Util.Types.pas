unit Flyweight.Util.Types;

interface
uses Flyweight.Flyweight, System.Generics.Collections, Flyweight.Car;

type
  TDictionaryCarList = TList<TPair<TFlyweight, string>>;
  TCarList = TList<TCar>;

implementation

end.
