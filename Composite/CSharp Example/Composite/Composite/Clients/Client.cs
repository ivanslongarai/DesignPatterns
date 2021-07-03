using System;
using CompositeProgram.Components;

namespace CompositeProgram.Clients
{
    class Client
    {
        // The client code works with all of the components via the base
        // interface.
        public void ClientCode(ComponentComposite leaf)
        {
            Console.WriteLine($"RESULT: {leaf.Operation()}\n");
        }

        // Thanks to the fact that the child-management operations are declared
        // in the base Component class, the client code can work with any
        // component, simple or complex, without depending on their concrete
        // classes.
        public void ClientCode2(ComponentComposite component1, ComponentComposite component2)
        {
            if (component1.IsComposite())
            {
                component1.Add(component2);
            }

            Console.WriteLine($"RESULT: {component1.Operation()}");
        }
    }
}
