unit Prototype.Classes.IdInfo;

interface

type
  TIdInfo = class
  private
    FIdNumber: Integer;
    procedure SetIdNumber(const Value: Integer);
  public
    constructor Create(AIdNumber: Integer);
    property IdNumber: Integer read FIdNumber write SetIdNumber;
  end;

implementation

{ TIdInfo }

constructor TIdInfo.Create(AIdNumber: Integer);
begin
  FIdNumber := AIdNumber;
end;

procedure TIdInfo.SetIdNumber(const Value: Integer);
begin
  FIdNumber := Value;
end;

end.
