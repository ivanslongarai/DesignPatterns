using BuilderPizzaExample.Domain;

namespace BuilderPizzaExample.Processors
{
    public interface ICalculatePrice{
        void DefinePrice(Pizza pizza); 
    }
}
