using BuilderPizzaExample.Builder.Base;
using BuilderPizzaExample.Domain;
using BuilderPizzaExample.Domain.ValueObject;
using BuilderPizzaExample.Processors;

namespace BuilderPizzaExample.Builder
{
    public sealed class PizzaHouseStyle : PizzaBuilderBase , IPizzaBuilder
    {
        public PizzaHouseStyle(ICalculatePrice calculatePrice) : base(calculatePrice)
        {
        }

        public void DefineTimeOnStove()
        {
            this.Pizza.TimeOnStove = 28;
        }

        public void InsertIngredients()
        {
            this.Pizza.Flavor = this.Pizza.WithEdge == true ? "House Style With Edge" : "House Style Without Edge";
            this.Pizza.IngredientsType =
                IngredientsType.Garlic |
                IngredientsType.Pepperoni |
                IngredientsType.Onion |
                IngredientsType.Mozzarella |
                IngredientsType.Provolone |
                IngredientsType.Pepper |
                IngredientsType.Basil |
                IngredientsType.Cheddar |
                IngredientsType.Catupiry;
        }

        public void PrepareBatter(PizzaSize pizzaSize)
        {
            this.Init();
            this.Pizza.WithEdge = false;
            this.Pizza.PizzaType = PizzaType.Salty;
            this.Pizza.PizzaSize = pizzaSize;
        }

        public void PrepareEdge(Edge edge)
        {
            this.Pizza.WithEdge = true;
            this.Pizza.Edge = edge;
        }
    }
}
