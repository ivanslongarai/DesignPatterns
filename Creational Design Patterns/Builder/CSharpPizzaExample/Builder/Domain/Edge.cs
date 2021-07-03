using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BuilderPizzaExample.Domain.ValueObject;

namespace BuilderPizzaExample.Domain
{
    public class Edge
    {
        public EdgeType EdgeType { get; set; }
        public EdgeSize EdgeSize { get; set; }
    }
}
