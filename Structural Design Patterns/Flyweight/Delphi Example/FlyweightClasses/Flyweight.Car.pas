unit Flyweight.Car;

interface

type
  TCar = class
  private
    FOwner: string;
    FModel: string;
    FCompany: string;
    FColor: string;
    FNumber: string;
    procedure SetColor(const Value: string);
    procedure SetCompany(const Value: string);
    procedure SetModel(const Value: string);
    procedure SetNumber(const Value: string);
    procedure SetOwner(const Value: string);
  public
    property Owner: string read FOwner write SetOwner;
    property Number: string read FNumber write SetNumber;
    property Company: string read FCompany write SetCompany;
    property Model: string read FModel write SetModel;
    property Color: string read FColor write SetColor;

    class function New(ACompany, AModel, AColor: string): TCar; overload;
    class function New(ANumber, AOwner, ACompany, AModel, AColor: string)
      : TCar; overload;
  end;

implementation

{ TCar }

class function TCar.New(ACompany, AModel, AColor: string): TCar;
begin
  Result := Self.Create;
  Result.Company := ACompany;
  Result.Model := AModel;
  Result.Color := AColor;
end;

class function TCar.New(ANumber, AOwner, ACompany, AModel,
  AColor: string): TCar;
begin
  Result := Self.Create;
  Result.Number := ANumber;
  Result.Owner := AOwner;
  Result.Company := ACompany;
  Result.Model := AModel;
  Result.Color := AColor;
end;

procedure TCar.SetColor(const Value: string);
begin
  FColor := Value;
end;

procedure TCar.SetCompany(const Value: string);
begin
  FCompany := Value;
end;

procedure TCar.SetModel(const Value: string);
begin
  FModel := Value;
end;

procedure TCar.SetNumber(const Value: string);
begin
  FNumber := Value;
end;

procedure TCar.SetOwner(const Value: string);
begin
  FOwner := Value;
end;

end.
