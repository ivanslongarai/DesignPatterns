
using System;

namespace BuilderPizzaExample.Domain.ValueObject
{
    [Flags]
    public enum IngredientsType
    {
        Pepperoni = 1,
        Catupiry = 2,
        Cheddar = 4,
        Onion = 8,
        Olive = 16,
        Salami = 32,
        Tomato = 64,
        Pepper = 128,
        Basil = 256,
        Garlic = 512,
        Mozzarella = 1024,
        Provolone = 2048
    }
}
