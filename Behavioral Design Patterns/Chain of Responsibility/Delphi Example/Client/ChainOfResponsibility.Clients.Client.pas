unit ChainOfResponsibility.Clients.Client;

interface

uses
  ChainOfResponsibility.AbstractClasses.AbstractHandler;

type
  TClient = class
  public
    class procedure ClientCode(AHandler: TAbstractHandler);
  end;

implementation

uses
  System.Generics.Collections, ChainOfResponsibility.Util.StringClass,
  ChainOfResponsibility.Util.Utils;

{ TClient }

class procedure TClient.ClientCode(AHandler: TAbstractHandler);
var
  oList: TList<TString>;
  oString: TString;
  oResult: TObject;
  I: Integer;
begin
  oList := TList<TString>.Create;
  try

    oList.Add(TString.New('Nut'));
    oList.Add(TString.New('Banana'));
    oList.Add(TString.New('Cup of coffee'));

    for oString in oList do
    begin
      // grava log says 'Client: Who wants a ' + oString.Str + '?'

      TUtilsSingleton.WriteLog('Who wants a ' + oString.Str + ' ?');

      oResult := AHandler.Handle(oString);

      if oResult <> nil then
        TUtilsSingleton.WriteLog(TString(oResult))
      else
        TUtilsSingleton.WriteLog
          (TString.New(oString.Str + ' was left untouched.'));

    end;

  finally
    for I := 0 to Pred(oList.Count) do
      oList[I].Free;
    oList.Free;
  end;

end;

end.
