Chain of Responsibility is behavioral design pattern that allows passing request along the chain of potential handlers until one of them handles request.

The pattern allows multiple objects to handle the request without coupling sender class to the concrete classes of the receivers. The chain can be composed dynamically at runtime with any handler that follows a standard handler interface.

Usage examples: The Chain of Responsibility pattern isn’t a frequent guest in a C# program since it’s only relevant when code operates with chains of objects.

Identification: The pattern is recognizable by behavioral methods of one group of objects that indirectly call the same methods in other objects, while all the objects follow the common interface.

--------------------------------------------------------------------------------------------------------------------
Chain of Responsibility é um padrão comportamental que permite passar a solicitação ao longo da cadeia de manipuladores em potencial até que um deles trate a solicitação.

O padrão permite que vários objetos tratem da solicitação sem acoplar a classe do emissor às classes concretas dos receptores. A cadeia pode ser composta dinamicamente em tempo de execução com qualquer manipulador que siga uma interface de manipulador padrão.

Exemplos de uso: O padrão Chain of Responsibility não é um convidado frequente em um programa C#, pois só é relevante quando o código opera com cadeias de objetos.

Identificação: O padrão é reconhecido pelos métodos comportamentais de um grupo de objetos que chamam indiretamente os mesmos métodos em outros objetos, enquanto todos os objetos seguem a interface comum.
