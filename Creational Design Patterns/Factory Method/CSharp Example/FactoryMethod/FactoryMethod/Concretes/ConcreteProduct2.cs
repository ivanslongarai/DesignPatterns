
using FactoryMethod.Interfaces;

namespace FactoryMethod.Concretes
{
    class ConcreteProduct2 : IProduct
    {
        public string Operation()
        {
            return "{ConcreteProduct2}";
        }
    }
}
