using System;
using System.Linq;
using BuilderPizzaExample.Domain;
using BuilderPizzaExample.Domain.ValueObject;
using BuilderPizzaExample.Processors;

namespace BuilderDesignPattern.Processors
{

    public class CalculatePrice : ICalculatePrice
    {
        public void DefinePrice(Pizza pizza) 
        {
            var unitsIngredients = Enum.GetValues(typeof(IngredientsType)).Cast<Enum>().Count(pizza.IngredientsType.HasFlag);

            var priceOfIngredients = unitsIngredients * 1.70;
            var priceOfPizzaSize = (int)pizza.PizzaSize * 10;
            var priceOfPizzaType = pizza.PizzaType == PizzaType.Sweet ? 10 : 0;

            var priceOfEdge = 0;

            if (pizza.Edge != null)
            {
                priceOfEdge = pizza.Edge.EdgeType == EdgeType.Chocolate
                    ? (5 * (int)pizza.Edge.EdgeSize)
                    : (2 * (int)pizza.Edge.EdgeSize);
            }

            pizza.Price = priceOfIngredients + priceOfPizzaSize + priceOfPizzaType + priceOfEdge;
        }
    }
}