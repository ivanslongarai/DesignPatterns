Abstract Factory is a creational design pattern, which solves the problem of creating entire product families without specifying their concrete classes.

Abstract Factory defines an interface for creating all distinct products but leaves the actual product creation to concrete factory classes. Each factory type corresponds to a certain product variety.

The client code calls the creation methods of a factory object instead of creating products directly with a constructor call (new operator). Since a factory corresponds to a single product variant, all its products will be compatible.

Client code works with factories and products only through their abstract interfaces. This lets the client code work with any product variants, created by the factory object. You just create a new concrete factory class and pass it to the client code.

Usage examples: The Abstract Factory pattern is pretty common in C# code. Many frameworks and libraries use it to provide a way to extend and customize their standard components.

Identification: The pattern is easy to recognize by methods, which return a factory object. Then, the factory is used for creating specific sub-components.

--------------------------------------------------------------------------------------------------------------------

O Abstract Factory é um Padrão Criacional, ele resolve o problema de criação de uma família inteira de produtos sem especificar suas classes concretas.

O Abstract Factory define uma interface para criação de todos os distintos produtos, mas deixa a criação do produto para as classes fábrica concretas.

O código cliente chama os métodos de criação do objeto fábrica ao invés de criar produtos diretamente com uma chamada ao construtor dos mesmos. Desde que a factory corresponda a um único tipo de produto, todos seus produtos serão compatíveis.

O código cliente trabalha com fábricas e produtos somente através de suas classes abstratas. Isto permite ao Client trabalhar com muitos tipos de produtos, criados pelo objeto fabricado. Você simplesmente cria uma nova classe concreta fábrica e passa isto para o código cliente.

Exemplos de uso: O Abstract Factory é bem comum em várias línguas, assim como C#. Muitos frameworks e bibliotecas usam isso para prover uma forma de estender e customizar seus componentes padrões.

Identificação: O Padrão é fácil de reconhecer por métodos, estes retornam um objeto fabricado. Então a fábrica é usada para criar específicos sub-componentes.


