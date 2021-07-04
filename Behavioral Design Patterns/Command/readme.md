Command is behavioral design pattern that converts requests or simple operations into objects.

The conversion allows deferred or remote execution of commands, storing command history, etc.

Usage examples: The Command pattern is pretty common in C# code. Most often it’s used as an alternative for callbacks to parameterizing UI elements with actions. It’s also used for queueing tasks, tracking operations history, etc.

Identification: The Command pattern is recognizable by behavioral methods in an abstract/interface type (sender) which invokes a method in an implementation of a different abstract/interface type (receiver) which has been encapsulated by the command implementation during its creation. Command classes are usually limited to specific actions.

--------------------------------------------------------------------------------------------------------------------
Command é um padrão comportamental que converte solicitações ou operações simples em objetos.

A conversão permite a execução adiada ou remota de comandos, armazenamento do histórico de comandos, etc.

Exemplos de uso: O padrão Command é bastante comum no código C #. Na maioria das vezes, é usado como uma alternativa para retornos de chamada para parametrizar elementos da IU com ações. Também é usado para enfileirar tarefas, rastrear histórico de operações, etc.

Identificação: O padrão Command é reconhecível por métodos comportamentais em um tipo abstrato / interface (remetente) que invoca um método em uma implementação de um tipo abstrato / interface (receptor) diferente que foi encapsulado pela implementação do comando durante sua criação. As classes de comando geralmente são limitadas a ações específicas.