
using BuilderPizzaExample.Domain;
using BuilderPizzaExample.Domain.ValueObject;

namespace BuilderPizzaExample.Builder.Base
{
    public interface IPizzaBuilder
    {
        void PrepareEdge(Edge edge);
        void PrepareBatter(PizzaSize pizzaSize);
        void InsertIngredients();
        void DefinePrice();
        void DefineTimeOnStove();
        Pizza GetPizza();
    }
}
