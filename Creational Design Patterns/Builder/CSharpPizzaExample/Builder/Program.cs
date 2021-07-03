using System;
using BuilderPizzaExample.Builder;
using BuilderPizzaExample.Builder.Base;
using BuilderPizzaExample.Director;
using BuilderPizzaExample.Domain;
using BuilderPizzaExample.Domain.ValueObject;
using BuilderDesignPattern.Processors;

namespace BuilderPizzaExample
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            var calculatePrice = new CalculatePrice();

            IPizzaBuilder pizzaPepperoniBuilder = new PizzaPepperoni(calculatePrice);
            IPizzaBuilder pizzaHouseStyleBuilder = new PizzaHouseStyle(calculatePrice);

            var menuService = new MenuServices();

            #region Pizza 1

            menuService.PreparePizzaWihEdge(pizzaPepperoniBuilder, PizzaSize.Small,
                new Edge
                {
                    EdgeType = EdgeType.Catupiry,
                    EdgeSize = EdgeSize.Normal
                });

            var pizzaPepperoni1 = pizzaPepperoniBuilder.GetPizza();

            #endregion Pizza 1

            #region Pizza 2

            menuService.PreparePizzaWihoutEdge(pizzaPepperoniBuilder, PizzaSize.Big);

            var pizzaPepperoni2 = pizzaPepperoniBuilder.GetPizza();

            #endregion Pizza 2

            #region Pizza 3

            menuService.PreparePizzaWihEdge(pizzaHouseStyleBuilder, PizzaSize.Normal,
                new Edge
                {
                    EdgeType = EdgeType.Cheddar,
                    EdgeSize = EdgeSize.Normal
                });

            var pizzaHouseStyle1 = pizzaHouseStyleBuilder.GetPizza();

            #endregion Pizza 3

            #region Pizza 4

            menuService.PreparePizzaWihoutEdge(pizzaHouseStyleBuilder, PizzaSize.Family);
            var pizzaHouseStyle2 = pizzaHouseStyleBuilder.GetPizza();

            #endregion Pizza 4

            #region Pizza 5

            menuService.PreparePizzaWihEdge(pizzaPepperoniBuilder, PizzaSize.Big,
                new Edge
                {
                    EdgeType = EdgeType.Chocolate,
                    EdgeSize = EdgeSize.Thick
                });
            
            var pizzaPepperoni3 = pizzaPepperoniBuilder.GetPizza();

            #endregion Pizza 5

            View("Pizza 1:", pizzaPepperoni1);
            View("Pizza 2:", pizzaPepperoni2);
            View("Pizza 3:", pizzaHouseStyle1);
            View("Pizza 4:", pizzaHouseStyle2);
            View("Pizza 5:", pizzaPepperoni3);
        }

        public static void View(string msg, Pizza pizza)
        {
            var edgeDescription = pizza.WithEdge ? "/ " + pizza.Edge.EdgeType.ToString() : "";
            Console.WriteLine($"{msg} {pizza.Flavor} / {pizza.Price:C} / {pizza.TimeOnStove} min / {pizza.PizzaSize.ToString()} {edgeDescription}");
        }

    }
}
