unit Composite.Component;

interface

type
  TComponent = class
  public

    // The base Component may implement some default behavior or leave it to
    // concrete classes (by declaring the method containing the behavior as
    // "abstract").

    // O Component base pode implementar alguns comportamentos padrões ou deixar
    // isto para as classes concretas (para isto declare os métodos como abstratos)

    function Operation: string; virtual; abstract;

    // In some cases, it would be beneficial to define the child-management
    // operations right in the base Component class. This way, you won't
    // need to expose any concrete component classes to the client code,
    // even during the object tree assembly. The downside is that these
    // methods will be empty for the leaf-level components.

    // Em alguns casos, pode ser interessante definir o gerenciamento das classes
    // filhas já na classe base, dessa forma não é necessário expor nenhuma classe
    // concreta para o client, mesmo durante a montagem da tree. A desvantagem é que
    // esses métodos não existirão na leaf-level.

    procedure Add(AComponent: TComponent); virtual; abstract;
    procedure Remove(AComponent: TComponent); virtual; abstract;

    // You can provide a method that lets the client code figure out whether
    // a component can bear children.

    // Você pode prover um método que deixa o client escolher se a classe base
    // pode ou não gerenciar filhos

    function IsComposite : Boolean; virtual;
  end;

implementation

{ TComponent }

function TComponent.IsComposite : Boolean;
begin
  Result := True;
end;

end.
