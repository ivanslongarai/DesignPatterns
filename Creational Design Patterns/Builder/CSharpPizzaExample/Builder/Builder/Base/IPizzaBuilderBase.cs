
using BuilderPizzaExample.Domain;
using BuilderPizzaExample.Processors;

namespace BuilderPizzaExample.Builder.Base
{
    public abstract class PizzaBuilderBase 
    {
        protected Pizza Pizza = null;
        protected readonly ICalculatePrice CalculatePrice;

        protected PizzaBuilderBase(ICalculatePrice calculatePrice)
        {
            this.CalculatePrice = calculatePrice;
        }

        public virtual void DefinePrice()
        {
            CalculatePrice.DefinePrice(Pizza);
        }

        public Pizza GetPizza()
        {
            return Pizza;
        }

        protected void Init()
        {
            Pizza = new Pizza();
        }
    }
}
