unit Flyweight.Util.Utils;

interface

uses
  Vcl.StdCtrls, System.SysUtils;

type
  TUtilsSingleton = class
  private
    class var FMemo: TMemo;
    class var FStarting: Boolean;
    class var FInstance: TUtilsSingleton;
    constructor Create(AMemo: TMemo); overload;
  public
    constructor Create; overload;
    class procedure WriteLog(AText: string);
    class function GetInstance(AMemo: TMemo): TUtilsSingleton;
  end;

implementation

{ TUtilsSingleton }

constructor TUtilsSingleton.Create(AMemo: TMemo);
begin
  if not FStarting then
    raise Exception.Create
      ('It has to be called just by TUtilsSingleton.GetInstance method');
  FMemo := AMemo;
  FStarting := False;
end;

constructor TUtilsSingleton.Create;
begin
  raise Exception.Create
    ('It has to be called just by TUtilsSingleton.GetInstance method');
end;

class function TUtilsSingleton.GetInstance(AMemo: TMemo): TUtilsSingleton;
begin
  FStarting := True;
  if not Assigned(FInstance) then
    FInstance := TUtilsSingleton.Create(AMemo);
  Result := FInstance;
end;

class procedure TUtilsSingleton.WriteLog(AText: string);
begin
  FMemo.Lines.Add(AText);
end;

end.
