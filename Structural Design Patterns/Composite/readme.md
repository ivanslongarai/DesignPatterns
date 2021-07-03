Composite is a structural design pattern that allows composing objects into a tree-like structure and work with the it as if it was a singular object.

Composite became a pretty popular solution for the most problems that require building a tree structure. Composite’s great feature is the ability to run methods recursively over the whole tree structure and sum up the results.

Usage examples: The Composite pattern is pretty common in C# code. It’s often used to represent hierarchies of user interface components or the code that works with graphs.

Identification: If you have an object tree, and each object of a tree is a part of the same class hierarchy, this is most likely a composite. If methods of these classes delegate the work to child objects of the tree and do it via the base class/interface of the hierarchy, this is definitely a composite.

--------------------------------------------------------------------------------------------------------------------
Composite é um padrão que permite compor objetos dentro de uma estrutura em árvore e funciona também como se fosse um objeto único.
O Composite   veio de uma solução popular agradável para a maioria dos problemas que requerem a construção de uma estrutura em árvore.
Sua maior funcionalidade é a habilidade de rodar métodos recursivamente em cima de toda estrutura da árvore e concatenar os resultados.

Exemplo de uso: O Padrão Composite é bem comum nas linguagens de programação, assim como C#. É frequentemente usado para representar hierarquias nos componentes de interface do usuário ou códigos que trabalham com gráficos.

Identificação: Se você tem uma árvore de objetos e cada objeto da árvore é uma parte da mesma classe hierárquica, isto é muito provavelmente um Composite. Se os métodos dessas classes delegam o trabalho para os filhos da arvore e fazem isso usando a interface da classe base da hierarquia, então é definitivamente um Composite.