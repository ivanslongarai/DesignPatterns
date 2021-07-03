unit BuilderPizzaExample.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  BuilderPizzaExample.Domain.IPizza, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    mmResult: TMemo;
    pnlTop: TPanel;
    btnCreateProducts: TButton;
    procedure btnCreateProductsClick(Sender: TObject);
  private
    procedure CreateProducts;
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses
  BuilderPizzaExample.Director.MenuServices,
  BuilderPizzaExample.Builder.Product.PizzaPepperoni,
  BuilderPizzaExample.Builder.Product.PizzaHouseStyle,
  BuilderPizzaExample.Processors.CalculatePrice,
  BuilderPizzaExample.Domain.ValueObject.PizzaSize,
  BuilderPizzaExample.Domain.ValueObject.EdgeType,
  BuilderPizzaExample.Domain.ValueObject.EdgeSize,
  BuilderPizzaExample.Domain.Edge,
  BuilderPizzaExample.Util.View;

{$R *.dfm}

procedure TfrmMain.btnCreateProductsClick(Sender: TObject);
begin
  mmResult.Clear;
  CreateProducts;
end;

procedure TfrmMain.CreateProducts;
begin
  mmResult.Lines.Add(TUtilsView.View('Pizza 1: ',
    TMenuServices.New.PreparePizzaWihEdge(TPizzaPepperoni.New
    (TCalculatePrice.New), TPizzaSize.Small, TEdge.New(TEdgeType.Catupiry,
    TEdgeSize.Normal)).GetProduct));

  mmResult.Lines.Add(TUtilsView.View('Pizza 2: ',
    TMenuServices.New.PreparePizzaWihoutEdge(TPizzaPepperoni.New
    (TCalculatePrice.New), TPizzaSize.Big).GetProduct));

  mmResult.Lines.Add(TUtilsView.View('Pizza 3: ',
    TMenuServices.New.PreparePizzaWihEdge(TPizzaHouseStyle.New
    (TCalculatePrice.New), TPizzaSize.Normal, TEdge.New(TEdgeType.Cheddar,
    TEdgeSize.Normal)).GetProduct));

  mmResult.Lines.Add(TUtilsView.View('Pizza 4: ',
    TMenuServices.New.PreparePizzaWihoutEdge(TPizzaHouseStyle.New
    (TCalculatePrice.New), TPizzaSize.Family).GetProduct));

  mmResult.Lines.Add(TUtilsView.View('Pizza 5: ',
    TMenuServices.New.PreparePizzaWihEdge(TPizzaPepperoni.New
    (TCalculatePrice.New), TPizzaSize.Big, TEdge.New(TEdgeType.Chocolate,
    TEdgeSize.Thick)).GetProduct));
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
