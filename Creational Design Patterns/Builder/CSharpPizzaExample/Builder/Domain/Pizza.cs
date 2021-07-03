using BuilderPizzaExample.Domain.ValueObject;

namespace BuilderPizzaExample.Domain
{
    public class Pizza
    {
        public bool WithEdge { get; set; }
        public string Flavor { get; set; }
        public Edge Edge { get; set; }
        public double Price { get; set; }
        public PizzaSize PizzaSize { get; set; }
        public PizzaType PizzaType { get; set; }
        public IngredientsType IngredientsType { get; set; }
        public int TimeOnStove { get; set; }
    }
}
