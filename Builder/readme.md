Usage examples: The Builder pattern is a well-known pattern in C# world. It’s especially useful when you need to create an object with lots of possible configuration options.

Identification: The Builder pattern can be recognized in a class, which has a single creation method and several methods to configure the resulting object. Builder methods often support chaining (for example, someBuilder->setValueA(1)->setValueB(2)->create()).

This example illustrates the structure of the Builder design pattern. It focuses on answering these questions:
What classes does it consist of?
What roles do these classes play?
In what way the elements of the pattern are related?

--------------------------------------------------------------------------------------------------------------------

Exemplos de uso: O Padrão Builder é um padrão bem conhecido no mundo C# e diversas outras linguagens. É especialmente útil quando você precisa criar um objeto com uma possibilidade grande de configurações.

Identificação: O Padrão Builder pode ser reconhecido em uma classe, ele tem um único método Create e alguns métodos para configurar o objeto de resultado (Product). O Padrão Builder geralmente suporta encadeamento. Ex.: (someBuilder.setValueA(1).setValueB(2).create()). 

Este exemplo consiste em ilustrar a estrutura do Builder. Foca em responder essas perguntas:
De quais classes o Builder consiste?
Quais as responsabilidades dessas classes?
Como os elementos do Builder estão relacionados?
