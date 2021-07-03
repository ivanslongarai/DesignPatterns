unit Composite.Leaf;

interface

uses
  Composite.Component;

// The Leaf class represents the end objects of a composition. A leaf can't
// have any children.
// Usually, it's the Leaf objects that do the actual work, whereas Composite
// objects only delegate to their sub-components.

// A classe Leaf representa o fim da composição. Uma left não pode ter filhos
// Geralmente, é a Leaf que faz o trabalho real, enquanto os Composites apenas delegam a
// seus sub-componentes

type
  TLeaf = class(TComponent)
  public
    function Operation: string; override;
    function IsComposite: Boolean; override;
    procedure Add(AComponent: TComponent); override;
    procedure Remove(AComponent: TComponent); override;
  end;

implementation

uses
  System.SysUtils;

{ TLeaf }

procedure TLeaf.Add(AComponent: TComponent);
begin
  inherited;
  raise Exception.Create
    ('It is not possible use Add method in this class: TLeaf');
end;

function TLeaf.IsComposite: Boolean;
begin
  Result := False
end;

function TLeaf.Operation: string;
begin
  Result := 'Leaf';
end;

procedure TLeaf.Remove(AComponent: TComponent);
begin
  inherited;
  raise Exception.Create
    ('It is not possible use Remove method in this class: TLeaf');
end;

end.
