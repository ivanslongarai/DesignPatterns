Builder is a creational design pattern, which allows constructing complex objects step by step.

Unlike other creational patterns, Builder doesn’t require products to have a common interface. That makes it possible to produce different products using the same construction process.

Usage examples: The Builder pattern is a well-known pattern in C# world. It’s especially useful when you need to create an object with lots of possible configuration options.

Identification: The Builder pattern can be recognized in a class, which has a single creation method and several methods to configure the resulting object. Builder methods often support chaining (for example, someBuilder->setValueA(1)->setValueB(2)->create()).

This example illustrates the structure of the Builder design pattern. It focuses on answering these questions:
What classes does it consist of?
What roles do these classes play?
In what way the elements of the pattern are related?

It makes sense to use the Builder pattern only when your products are
uite complex and require extensive configuration.

Unlike in other creational patterns, different concrete builders can
produce unrelated products. In other words, results of various builders
may not always follow the same interface.

--------------------------------------------------------------------------------------------------------------------
O Builder é um Padrão criacional que aceita a construção de objetos complexos passo a passo.
Diferente de outros padrões de projeto, o Builder não querer que os produtos sigam a mesma interface.
Com isso se faz possível produzir diferentes tipos de produtos usando o mesmo processo de construção.

Exemplos de uso: O Padrão Builder é um padrão bem conhecido no mundo C# e diversas outras linguagens. É especialmente útil quando você precisa criar um objeto com uma possibilidade grande de configurações.

Identificação: O Padrão Builder pode ser reconhecido em uma classe, ele tem um único método Create e alguns métodos para configurar o objeto de resultado (Product). O Padrão Builder geralmente suporta encadeamento. Ex.: (someBuilder.setValueA(1).setValueB(2).create()). 

Este exemplo consiste em ilustrar a estrutura do Builder. Foca em responder essas perguntas:
De quais classes o Builder consiste?
Quais as responsabilidades dessas classes?
Como os elementos do Builder estão relacionados?

Faz sentido usar o Padrão Builder somente se seu produto é bem complexo e requer uma extensiva configuração.
Direrente de outros Padrões criacionais, diferente builders concretos pode produzir produtos não relacionados.
Em outras palavras, resultados de varios builders podem não aceitar seguir as assinaturas de uma mesma interface.

--------------------------------------------------------------------------------------------------------------------


