
using FactoryMethod.Interfaces;

namespace FactoryMethod.Concretes
{
    class ConcreteProduct1 : IProduct
    {
        public string Operation()
        {
            return "{ConcreteProduct1}";
        }
    }
}
