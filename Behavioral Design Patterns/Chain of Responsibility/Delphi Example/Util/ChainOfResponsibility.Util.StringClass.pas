unit ChainOfResponsibility.Util.StringClass;

interface

type
  IString = interface
    ['{722F287E-FB5C-4BC3-A4C3-4CC4D237FB23}']
  end;

  TString = class(TInterfacedObject, IString)
  private
    FStr: String;
  public
    constructor Create(const AStr: String);
    property Str: String read FStr write FStr;
    class function New(const AStr: String): TString;
  end;

implementation

{ TString }

constructor TString.Create(const AStr: String);
begin
  inherited Create;
  FStr := AStr;
end;

class function TString.New(const AStr: String): TString;
begin
  Result := Self.Create(AStr);
end;

end.
