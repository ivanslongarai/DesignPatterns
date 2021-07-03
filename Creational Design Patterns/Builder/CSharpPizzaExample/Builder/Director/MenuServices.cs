using BuilderPizzaExample.Builder.Base;
using BuilderPizzaExample.Domain;
using BuilderPizzaExample.Domain.ValueObject;

namespace BuilderPizzaExample.Director
{
    public class MenuServices
    {
        public void PreparePizzaWihoutEdge(IPizzaBuilder pizzaBuilder, PizzaSize pizzaSize)
        {
            pizzaBuilder.PrepareBatter(pizzaSize);
            pizzaBuilder.InsertIngredients();
            pizzaBuilder.DefineTimeOnStove();
            pizzaBuilder.DefinePrice();
        }

        public void PreparePizzaWihEdge(IPizzaBuilder pizzaBuilder, PizzaSize pizzaSize, Edge edge)
        {
            pizzaBuilder.PrepareBatter(pizzaSize);
            pizzaBuilder.PrepareEdge(edge);
            pizzaBuilder.InsertIngredients();
            pizzaBuilder.DefineTimeOnStove();
            pizzaBuilder.DefinePrice();
        }
    }
}
