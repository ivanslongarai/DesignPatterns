program BuilderPizzaExample;

uses
  Vcl.Forms,
  BuilderPizzaExample.View.Main in 'src\View\BuilderPizzaExample.View.Main.pas' {frmMain},
  BuilderPizzaExample.Builder.Base.IPizzaBuilder in 'src\Builder\Base\BuilderPizzaExample.Builder.Base.IPizzaBuilder.pas',
  BuilderPizzaExample.Domain.ValueObject.EdgeSize in 'src\Domain\ValueObject\BuilderPizzaExample.Domain.ValueObject.EdgeSize.pas',
  BuilderPizzaExample.Domain.ValueObject.EdgeType in 'src\Domain\ValueObject\BuilderPizzaExample.Domain.ValueObject.EdgeType.pas',
  BuilderPizzaExample.Domain.ValueObject.IngredientsType in 'src\Domain\ValueObject\BuilderPizzaExample.Domain.ValueObject.IngredientsType.pas',
  BuilderPizzaExample.Domain.ValueObject.PizzaType in 'src\Domain\ValueObject\BuilderPizzaExample.Domain.ValueObject.PizzaType.pas',
  BuilderPizzaExample.Domain.ValueObject.PizzaSize in 'src\Domain\ValueObject\BuilderPizzaExample.Domain.ValueObject.PizzaSize.pas',
  BuilderPizzaExample.Domain.Edge in 'src\Domain\BuilderPizzaExample.Domain.Edge.pas',
  BuilderPizzaExample.Domain.Pizza in 'src\Domain\BuilderPizzaExample.Domain.Pizza.pas',
  BuilderPizzaExample.Builder.Base.PizzaBuilderBase in 'src\Builder\Base\BuilderPizzaExample.Builder.Base.PizzaBuilderBase.pas',
  BuilderPizzaExample.Processors.ICalculatePrice in 'src\Processors\BuilderPizzaExample.Processors.ICalculatePrice.pas',
  BuilderPizzaExample.Processors.CalculatePrice in 'src\Processors\BuilderPizzaExample.Processors.CalculatePrice.pas',
  BuilderPizzaExample.Builder.Product.PizzaHouseStyle in 'src\Builder\Product\BuilderPizzaExample.Builder.Product.PizzaHouseStyle.pas',
  BuilderPizzaExample.Director.MenuServices in 'src\Director\BuilderPizzaExample.Director.MenuServices.pas',
  BuilderPizzaExample.Builder.Base.IPizzaBuilderBase in 'src\Builder\Base\BuilderPizzaExample.Builder.Base.IPizzaBuilderBase.pas',
  BuilderPizzaExample.Util.Utils in 'src\Util\BuilderPizzaExample.Util.Utils.pas',
  BuilderPizzaExample.Builder.Product.PizzaPepperoni in 'src\Builder\Product\BuilderPizzaExample.Builder.Product.PizzaPepperoni.pas',
  BuilderPizzaExample.Domain.IPizza in 'src\Domain\BuilderPizzaExample.Domain.IPizza.pas',
  BuilderPizzaExample.Director.IMenuServices in 'src\Director\BuilderPizzaExample.Director.IMenuServices.pas',
  BuilderPizzaExample.Util.View in 'src\Util\BuilderPizzaExample.Util.View.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
