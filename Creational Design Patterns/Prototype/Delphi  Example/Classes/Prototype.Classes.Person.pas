unit Prototype.Classes.Person;

interface

uses
  Prototype.Classes.IdInfo, Rest.JSon;

type
  TPerson = class
  private
    FBirthDate: TDateTime;
    FName: string;
    FIdInfo: TIdInfo;
    FAge: Integer;
    FDeep: Boolean;
    procedure SetAge(const Value: Integer);
    procedure SetBirthDate(const Value: TDateTime);
    procedure SetIdInfo(const Value: TIdInfo);
    procedure SetName(const Value: string);
    function Clone(APerson: TPerson): TPerson;
  public
    constructor Create;
    destructor Destroy; override;
    function ShallowCopy: TPerson;
    function DeepCopy: TPerson;
    function ToString: string; override;
    property Age: Integer read FAge write SetAge;
    property BirthDate: TDateTime read FBirthDate write SetBirthDate;
    property Name: string read FName write SetName;
    property IdInfo: TIdInfo read FIdInfo write SetIdInfo;
  end;

implementation

uses
  System.SysUtils;

{ TPerson }

function TPerson.Clone(APerson: TPerson): TPerson;
begin
  Result := TPerson.Create;
  Result.FBirthDate := APerson.FBirthDate;
  Result.FName := APerson.FName;
  Result.Age := APerson.Age;
  Result.FIdInfo := APerson.FIdInfo;
end;

constructor TPerson.Create;
begin
  FDeep := True;
end;

function TPerson.DeepCopy: TPerson;
begin
  Result := Clone(Self);
  Result.IdInfo := TIdInfo.Create(Self.IdInfo.IdNumber);
  Result.FDeep := True;
end;

destructor TPerson.Destroy;
begin
  if FDeep then
    FreeAndNil(FIdInfo);
  inherited;
end;

procedure TPerson.SetAge(const Value: Integer);
begin
  FAge := Value;
end;

procedure TPerson.SetBirthDate(const Value: TDateTime);
begin
  FBirthDate := Value;
end;

procedure TPerson.SetIdInfo(const Value: TIdInfo);
begin
  FIdInfo := Value;
end;

procedure TPerson.SetName(const Value: string);
begin
  FName := Value;
end;

function TPerson.ShallowCopy: TPerson;
begin
  Result := Clone(Self);
  Result.FDeep := False;
end;

function TPerson.ToString: string;
begin
  Result := TJson.ObjectToJsonString(Self);
end;

end.
