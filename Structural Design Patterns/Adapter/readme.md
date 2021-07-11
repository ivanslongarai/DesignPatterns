Adapter is a structural design pattern, which allows incompatible objects to collaborate.

The Adapter acts as a wrapper between two objects. It catches calls for one object and transforms them to format and interface recognizable by the second object.

Usage examples: The Adapter pattern is pretty common in C# code. It’s very often used in systems based on some legacy code. In such cases, Adapters make legacy code work with modern classes.

Identification: Adapter is recognizable by a constructor which takes an instance of a different abstract/interface type. When the adapter receives a call to any of its methods, it translates parameters to the appropriate format and then directs the call to one or several methods of the wrapped object.

--------------------------------------------------------------------------------------------------------------------

Adapter é um padrão de projeto estrutural que permite a colaboração de objetos incompatíveis.

O Adapter atua como um wrapper entre dois objetos. Ele captura chamadas para um objeto e as transforma em formato e interface reconhecíveis pelo segundo objeto.

Exemplos de uso: É muito frequentemente usado em sistemas baseados em algum código legado. Nesses casos, os adaptadores fazem o código legado funcionar com classes modernas.

Identificação: OAdapter é reconhecível por um construtor que recebe uma instância de um tipo abstrato / interface diferente. Quando o Adapter recebe uma chamada para qualquer um de seus métodos, ele traduz os parâmetros para o formato apropriado e, em seguida, direciona a chamada para um ou vários métodos do objeto empacotado.