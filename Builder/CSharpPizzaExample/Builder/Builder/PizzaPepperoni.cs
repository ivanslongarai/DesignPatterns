using BuilderPizzaExample.Builder.Base;
using BuilderPizzaExample.Domain;
using BuilderPizzaExample.Domain.ValueObject;
using BuilderPizzaExample.Processors;

namespace BuilderPizzaExample.Builder
{
    public sealed class PizzaPepperoni : PizzaBuilderBase, IPizzaBuilder
    {
        public PizzaPepperoni(ICalculatePrice calculatePrice) : base(calculatePrice)
        {
        }

        public void PrepareEdge(Edge edge)
        {
            this.Pizza.WithEdge = true;
            this.Pizza.Edge = edge;
        }

        public void PrepareBatter(PizzaSize pizzaSize)
        {
            this.Init();
            this.Pizza.WithEdge = false;
            this.Pizza.PizzaType = PizzaType.Salty;
            this.Pizza.PizzaSize = pizzaSize;
        }

        public void InsertIngredients()
        {
            this.Pizza.Flavor = this.Pizza.WithEdge == true ? "Pepperoni With Edge" : "Pepperoni Without Edge";
            this.Pizza.IngredientsType =
                IngredientsType.Pepperoni |
                IngredientsType.Olive |
                IngredientsType.Onion | 
                IngredientsType.Cheddar |
                IngredientsType.Salami;
        }

        public void DefineTimeOnStove()
        {
            this.Pizza.TimeOnStove = 20;
        }

    }
}
