BEGIN;

-- === topics ===
INSERT INTO topics (id, name) VALUES (1, 'algoritmos_elementares') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (2, 'array') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (3, 'arrays') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (4, 'arvores') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (5, 'arvores binarias') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (6, 'avl') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (7, 'bfs') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (8, 'bst') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (9, 'busca') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (10, 'busca binaria') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (11, 'chaining') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (12, 'desafio') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (13, 'dfs') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (14, 'em-ordem') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (15, 'encaminhamento em largura') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (16, 'enderecamento aberto') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (17, 'enderecamento fechado') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (18, 'entrevista') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (19, 'fila') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (20, 'grafos') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (21, 'hanoi') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (22, 'hash') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (23, 'hashmap') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (24, 'hashset') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (25, 'heap') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (26, 'insertion') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (27, 'largura') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (28, 'linear') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (29, 'linked_list') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (30, 'linkedlist') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (31, 'lomuto') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (32, 'ordenacao') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (33, 'particionamento') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (34, 'pilha') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (35, 'pivot') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (36, 'polish') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (37, 'polonesa') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (38, 'pos-ordem') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (39, 'pre-ordem') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (40, 'probing linear') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (41, 'recursividade') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (42, 'reverse') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (43, 'rotacao') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (44, 'rotacoes') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (45, 'sort') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (46, 'stack') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (47, 'strings') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (48, 'tabela hash') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (49, 'teoria') ON CONFLICT DO NOTHING;
INSERT INTO topics (id, name) VALUES (50, 'warmup') ON CONFLICT DO NOTHING;

-- === questions ===
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (1, 'FACIL', 'Altura de uma Árvore', 'Apesar de árvores como BSTs e AVLs possuirém uma raíz, isto é um nó é tido como "ponto de origem" da árvore,
nem toda árvore é enraizada. Para este problema consideremos uma árvore que não possui raiz
(não enraizada).

A altura de uma árvore é a maior a maior distância de um certo nó para qualquer outro. Onde a distância é
definida pelo número de arestas que devem ser percorridas para ir de um nó a outro.

Para ficar mais claro observe o exemplo abaixo.

![Tree](http://www.dsc.ufcg.edu.br/~jarthur/figuras_tst_eda/mari_altura_arvore.png)

A altura da árvore acima é 3, que é a distância entre os nós 2 e 5.

Escreva um programa que leia a definição de uma árvore não direcionada e imprima a altura da árvore e os
nós que definem essa altura (isto é os dois nós mais distantes e a distância entre eles).

**Dica: ** pense primeiramente em como achar o nó mais distante de um dado nó, e depois como generalizar para achar
os dois nós mais distantes (altura).

**Obs: ** É garantido que há apenas uma solução, isto é há apenas dois nós cuja distância é máxima.', NULL, 'A primeira linha irá conter um único inteiro N, o número de nós na árvore.
Cada nó é identificado com um valor de 0 a N-1. As próximas N-1 linhas (pense um pouco por que N-1?) irão
conter 2 inteiros que representam as arestas da árvore. Cada aresta é representada por dois nós A e B (0 <= A, B <= N-1).', 'Seu programa deve imprimir uma linha na saída contendo "de -> X para -> Y altura -> H", sem aspas onde
H é a altura da árvore, X e Y (X <= Y) são nós tal que a distância entre X e Y é igual a altura.', 'resolutions/altura_arvore.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (2, 'FACIL', 'Altura BST', 'Altura de uma árvore é o tamanho do maior caminho entre a raiz e todas as folhas.

Escreva um programa que leia os números a serem adicionados em uma BST e
imprima a altura da árvore resultante dessas inserções.', NULL, 'Seu programa deve ler apenas uma linha contendo (em ordem) os elementos que devem ser adicionados à árvore.

Você pode assumir que não haverá elementos repetidos na árvore.
Você pode assumir que pelo menos um valor é lido.', 'Seu programa deve imprimir o valor da altura da árvore.', 'resolutions/altura_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (3, 'FACIL', 'Árvores similares', 'Diz-se que duas árvores são similares quando têm a mesma estrutura de nós, independente
de seus valores. 

Nesta atividade você deve implementar um algoritmo que construa duas árvores binárias 
e as compare, dando como resultado se elas são similares (possuem mesma estrutura
de nós).', NULL, 'A primeira linha conterá um inteiro n, 0 < n < 30, indicando o tamanho das duas árvores (quantidade
de elementos em cada uma). As n linhas seguintes conterão os elementos da primeira árvore, que devem
ser inseridos de acordo com a ordem de entrada. As próximas n linhas contém os elementos
da segunda árvore.', 'Seu programa deve imprimir apenas uma linha contendo "Arvores similares." se as árvores possuirem
mesma estrutura, caso contrário deve imprimir "Arvores com estruturas diferentes.".', 'resolutions/arvore_similar.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (4, 'FACIL', 'Balance', '*Balance* de um nó em uma BST é a diferença entre a altura da sub-árvore à esquerda
e a altura da sub-árvore à direita. Escreva um programa que leia números inteiros 
a serem adicionados em uma BST e imprima o encaminhamento em pré-ordem dos
nós juntamente com os seus respectivos balances.', NULL, 'Seu programa deve ler uma linha contendo os números a serem adicionados (em sequência) na árvore.

Você pode assumir que não haverá elementos repetidos na árvore.', 'Seu programa deve imprimir o encaminhamento em pré-ordem e os respectivos balances dos nós.', 'resolutions/balance.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (5, 'FACIL', 'BFS', 'Há diversas formas de se percorrer uma árvore binária de pesquisa. 
Breadth-first search (BFS) ou Encaminhamento em Largura é uma forma de visitar
um grafo em largura. Para árvores binárias de pesquisa isso significa que os nós
serão visitados por níveis.

Escreva um programa que leia os números a serem adicionados em uma BST e
imprima o resultado do encaminhamento por largura nessa árvore.', NULL, 'Seu programa deve ler apenas uma linha da entrada. 
Essa linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.

Você pode assumir que não haverá elementos repetidos na árvore.', 'Seu programa deve imprimir o resultado do encaminhamento em largura na árvore lida.', 'resolutions/bfs.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (6, 'FACIL', 'BFS Direita', 'Há diversas formas de se percorrer uma árvore binária de pesquisa. 
Breadth-first search (BFS) ou Encaminhamento em Largura é uma forma de visitar
um grafo em largura. Para árvores binárias de pesquisa isso significa que os nós
serão visitados por níveis (da esquerda para a direita em cada nível).

Escreva um programa que leia os números a serem adicionados em uma BST e
imprima o resultado do encaminhamento por largura nessa árvore. Contudo, 
os nós nos níveis devem ser impressos da direita para a esquerda.', NULL, 'Seu programa deve ler apenas uma linha da entrada. 
Essa linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.

Você pode assumir que não haverá elementos repetidos na árvore.', 'Seu programa deve imprimir o resultado do encaminhamento em largura da direita
para a esquerda na árvore lida.', 'resolutions/bfs_direita.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (7, 'FACIL', 'Bubble', 'Implemente o BubbleSort.', 'Você não pode usar coleção ou método algum do Collections framework. Sua implementação deve ser baseada em arrays.', 'Seu programa deve ler da entrada apenas uma linha contendo uma sequência de inteiros separados por espaço.', 'Seu programa deve imprimir o conteúdo do array a cada iteração do Bubble. Seu programa deve parar assim que imprimir
a sequência ordenada.', 'resolutions/bubble_sort_passo_a_passo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (8, 'FACIL', 'Build Heap', 'Escreva um programa que leia uma sequencia da entrada padrão e transforma essa sequência em um heap.

*Importante!* Como vimos em sala de aula, um heap pode ser representado em um array que é preenchido
ao caminhar por nível (da esquerda para a direita) em um Heap. Por exemplo, o array
[30, 10, 9, 7] representa um heap com raíz 30, cujos filhos da esquerda e direita são 10 e 9 respectivamente.
Por último, 7 é o filho à esquerda de 10. 

Assuma que ele já é completo ou quase-completo da esquerda para a direita.', NULL, 'Seu programa deve ler uma linha contém uma sequência de 
inteiros separados por espaço.', 'Seu programa deve imprimir a sequência re-ordenada depois da aplicação do algoritmo build heap que vimos em sala de aula.', 'resolutions/build_heap.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (9, 'FACIL', 'Busca Binária', 'Implemente um programa que leia uma sequência ordenada de inteiros e um número N e verifica se N 
está na sequência lida. Seu programa deve fazer uma busca binária na sequência.', 'Você não pode usar coleção ou método algum do Collections framework. Sua 
implementação deve ser baseada em arrays.', 'Seu programa deve ler da entrada duas linhas: a primeira é linha contendo uma sequência 
de inteiros separados por espaço, enquanto a segunda é um número N a 
ser pesquisado na sequência.', 'Seu programa deve imprimir (separadamente em cada linha) os índices visitados até o 
fim da execução do algoritmo. Caso não encontre N, deve imprimir o último índice como sendo -1.', 'resolutions/busca_binaria.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (10, 'FACIL', 'Busca BináriaRecursiva', 'Implemente um programa que leia uma sequência ordenada de inteiros e um número N e verifica se N 
está na sequência lida. Seu programa deve fazer uma busca binária na sequência.

*Importante!* Seu programa deve ser recursivo.', 'Você não pode usar coleção ou método algum do Collections framework. Sua 
implementação deve ser baseada em arrays.', 'Seu programa deve ler da entrada duas linhas: a primeira é linha contendo uma sequência 
de inteiros separados por espaço, enquanto a segunda é um número N a 
ser pesquisado na sequência.', 'Seu programa deve imprimir (separadamente em cada linha) os índices visitados até o 
fim da execução do algoritmo. Caso não encontre N, deve imprimir o último índice como sendo -1.', 'resolutions/busca_binaria_recursiva.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (11, 'FACIL', 'Busca BST', 'Escreva um programa que leia os números a serem adicionados em uma BST e
um número a ser procurado nessa árvore. Seu programa deve imprimir
o caminho realizado até encontrar o elemento.', NULL, 'Seu programa deve ler duas linhas da entrada. 
A primeira linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.
A segunda irá conter o elemento a ser procurado.

Você pode assumir que não haverá elementos repetidos na árvore.', 'Seu programa deve imprimir o caminho realizado até encontrar o elemento. Caso não
encontre, deve imprimir o caminho até a última folha visitada.', 'resolutions/busca_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (12, 'FACIL', 'Busca Linear Recursiva', 'Implemente um programa que leia uma sequência de inteiros e um número N e 
verifica se N está na sequência lida.
Seu programa deve fazer uma busca linear recursiva para resolver o problema.', 'Você não pode usar coleção ou método algum do Collections framework. 
Sua implementação deve ser baseada em arrays.
Você **deve usar recursão**.', 'Seu programa deve ler da entrada duas linhas: a primeira é linha contendo uma sequência de 
inteiros separados por espaço, enquanto a segunda é um número N a ser pesquisado na sequência.', 'Seu programa deve imprimir o primeiro índice em que N aparece.

Caso não encontre N, deve imprimir -1.', 'resolutions/busca_linear_recursiva.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (13, 'FACIL', 'É árvore?', 'Como você deve saber uma árvore é um grafo que contém certas propriedades: não contém ciclos e é conectado (de um nó
é possível chegar em todos os outros apenas utilizando arestas).

Nesta atividade você deverá implementar um algoritmo que dado um grafo não direcionado e não ponderado
imprime True se o grafo é uma árvore e False caso contrário.', NULL, 'A primeira linha irá conter dois inteiros N e M, respectivamente o número de nós no grafo e o número de arestas.
Cada nó é identificado com um valor de 0 a N-1. As próximas M linhas são as arestas, cada linha irá conter 2 inteiros,
nós A e B (0 <= A, B <= N-1), identificando que existe uma aresta entre A e B.', 'Seu programa deve imprimir apenas uma linha contendo True se o grafo é uma árvore e False caso contrário.', 'resolutions/checar_arvore.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (14, 'FACIL', 'Conta Folhas BST', 'Implemente um programa que conte quantos nós folhas 
há em uma árvore binária de pesquisa.', NULL, 'Seu programa deve ler apenas uma linha da entrada. 
Essa linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.

Você pode assumir que não haverá elementos repetidos na árvore.', 'Seu programa deve imprimir a quantidade de nós folhas na árvore.', 'resolutions/conta_folhas.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (15, 'FACIL', 'Conta Nós Internos BST', 'Um nó interno em uma árvore binária de pesquisa é todo nó não-folha, isto é, possui no mínimo 1 filho.

Implemente um programa que conte quantos nós internos há em uma árvore binária de pesquisa.', NULL, 'Seu programa deve ler apenas uma linha da entrada. 
Essa linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.

Você pode assumir que não haverá elementos repetidos na árvore.', 'Seu programa deve imprimir a quantidade de nós internos na árvore.', 'resolutions/conta_nos_internos_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path)
VALUES (
    16,
    'FACIL',
    'Counting Negativos',
    $desc$Ordene um array de inteiros positivos e negativos utilizando o counting sort.$desc$,
    NULL,
    $input$Seu programa deve ler da entrada três linhas: uma contendo uma sequência de inteiros separados
por espaço e outra contendo k (o maior elemento do array) e outra contendo o menor elemento do array.

Considere que esse elemento é sempre negativo.$input$,
    $output$Seu programa deve imprimir o status do vetor de contagem em diversos momentos:
    - i) imprimir o conteúdo do array de contagem a cada modificação feita nele durante o cálculo da frequência;
    - ii) imprimir uma frase 'Cumulativa do vetor de contagem - ' seguida do vetor de contagem já tendo armazenado a cumulativa.
    - iii) imprimir o vetor de contagem ao fim da execução do algoritmo;
    - iv) imprimir a sequência ordenada.$output$,
    'resolutions/counting_sort_negativos.py'
) ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (17, 'FACIL', 'Counting', 'Ordene um array de inteiros cujos valores estão no intervalo [0..k] utilizando o Counting Sort.', NULL, 'Seu programa deve ler da entrada duas linhas: uma contendo uma sequência de inteiros separados por espaço e outra contendo k (o maior elemento do array).', 'Seu programa deve imprimir o status do vetor de contagem em diversos momentos:
    - i) imprimir o conteúdo do array de contagem a cada modificação feita nele durante o cálculo da frequência;
    - ii) imprimir uma frase ''Cumulativa do vetor de contagem - '' seguida do vetor de contagem já tendo armazenado a cumulativa.
    - iii) imprimir o vetor de contagem ao fim da execução do algoritmo;
    - iv) imprimir a sequência ordenada.', 'resolutions/counting_sort_passo_a_passo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (18, 'FACIL', 'Dois Somam', 'Escreva um programa que leia uma sequência não-ordenada de inteiros e 
um número inteiro, e retorne se há dois números presentes no array que somem ao número dado.', NULL, 'Seu programa irá ler duas linhas da entrada: a primeira linha que consiste em uma lista 
de inteiros separados por espaço e a segunda linha consiste na soma a ser considerada.', 'Na saída, seu programa deve imprimir os dois números da sequência cuja soma é igual a soma lida 
da entrada padrão ou -1 caso contrário. 
Considere que, se houver um par de elementos cuja soma é a esperada, esse par é único.', 'resolutions/dois_somam.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (19, 'FACIL', 'Down N', 'Escreva um programa que imprima os 
**n** menores elementos de uma sequência.', 'Não é permitido usar arrays auxiliares.

Não é permitido usar Arrays.sort ou qualquer método
pronto de bibliotecas de ordenação. Caso precise, implemente.

Seu programa deve apenas manipular o array de inteiros. Não pode usar funções como:

    - insert
    - remove
    - pop
    - qualquer função de ordenação', 'Seu programa deve ler duas linhas da entrada padrão. A primeira
é uma sequência de inteiros separados por espaço e a 
segunda um número inteiro **n** representando a quantidade de elementos
a serem impressos.

Importante:  você pode considerar que n sempre é maior ou igual a 1 e menor ou
igual ao número de elementos da sequência.', 'Seu programa deve imprimir de forma crescente o n menores elementos da sequência lida.', 'resolutions/down_n.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (20, 'FACIL', 'Element at Pilha', 'Escreva um programa que retorne o elemento em um determinado índice de uma pilha.', 'Você só pode usar os métodos padrões da interface de pilha (e. g. `peek`, `push`, `pop`, `isEmpty` etc) e outra estrutura auxiliar. 
A pilha deve manter a sua configuração inicial após a execução do seu algoritmo.

Se a sua pilha for baseada em arrays, você não pode acessar um índice arbitrário utilizando pilha[index], por exemplo. Todo
o acesso deve ser feito através de pop, push e peek.', 'Seu programa deve ler duas linhas da entrada padrão. Uma linha representando os elementos
a serem adicionados na pilha em sequência e uma linha representando o índice a ser inspecionado.

Você só pode usar push, pop e outra estrutura auxiliar. A pilha deve
manter a sua configuração inicial após a execução do seu algoritmo. Você não pode usar `array[index]`
para acessar uma posição arbitrária do array.

Importante: você deve considerar que o elemento no topo está no índice 0, abaixo dele está o elemento
no índice 1 e assim por diante.', 'Seu programa deve imprimir o elemento presente no índice lido. Caso o índice seja inválido, imprimir `indice invalido`.', 'resolutions/element_at_pilha.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (21, 'FACIL', 'Elemento Sobrando', 'Considere dois arrays de inteiros não-ordenados, um contendo n elementos e outro contendo n+1 elementos. 
O segundo array contém exatamente os mesmos elementos que o primeiro, exceto por um único inteiro. Escreva 
um programa que imprima o número que está sobrando.', NULL, 'Seu programa irá ler duas linhas da entrada, uma para cada sequência de inteiros.', 'Na saída, seu programa deve imprimir o único número que está na segunda sequência, mas não está na primeira.', 'resolutions/elemento_sobrando.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (22, 'FACIL', 'Checagem de elementos duplicados', 'Escreva um programa que recebe uma sequência e verifica se esta possui ou não elementos duplicados.', 'Não é permitido a utilização de nenhum método do Collections ou outra estrutura de dados diferente de array.', 'Seu programa recebe uma sequência qualquer, com os elementos separados por espaço.', 'Seu programa deve imprimir true se a sequência possuir elementos duplicados e false caso contrário.', 'resolutions/elementos_duplicados.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (23, 'FACIL', 'Encaminhamento em BST', 'Há diversas formas de se percorrer uma árvore binária de pesquisa. 
Dentre elas, algumas ganham destaque: pré-pordem, em-ordem e pós-ordem.

Escreva um programa que leia os números a serem adicionados e imprima na saída 
o resultado de cada um desses algoritmos de encaminhamento.

Para isso, naturalmente, você terá que implementar o algoritmo de inserção em árvores binárias de pesquisa. 

**Dica: ** sugiro que você guarde a sua implementação do método de inserção para 
futuras questões relacionadas à árvores binárias de pesquisa.', NULL, 'Seu programa deve ler apenas uma linha da entrada. 
Essa linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.

Você pode assumir que não haverá elementos repetidos na árvore.', 'Seu programa deve imprimir 3 linhas na saída. 
Cada linha é o resultado do encaminhamento em pré-ordem, em-ordem e pós-ordem, respectivamente.', 'resolutions/encaminhamento_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (24, 'FACIL', 'Encontra Elemento', 'Escreva um programa que verifica se um elemento está contido em uma
lista de inteiros.', NULL, 'O programa deve ler da entrada um número inteiro N e uma sequência de inteiros.', 'O programa deve imprimir na saída se o número N está presente na sequência
lida. A mensagem deve ser: sim ou nao.', 'resolutions/encontra_elemento.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (25, 'FACIL', 'Encontra primeiro negativo', 'Escreva um programa **recursivo** que encontra o primeiro número negativo de
uma sequência.


Seu programa deve ler da entrada uma sequência e imprimir o primeiro elemento negativo.

Por exemplo, se a entrada for,

    1 -8 4 5 -2 3 7 90

a saída deve ser -8.', NULL, 'Seu programa deve ler uma sequência de inteiros separados por espaço.', 'Deve imprimir o primeiro valor negativo. Se não houver, imprima "-".', 'resolutions/encontra_primeiro_negativo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (26, 'FACIL', 'Encontra Quebra Recursivo', 'Escreva um programa **recursivo** que encontra o elemento que quebra uma sequência ordenada.
Seu programa deve retornar o índice desse elemento. Se não houver o elemento
que quebra a sequencia, deve imprimir -1.

O elemento que "quebra" uma sequencia em ordem crescente é o que não está ordenado
de acordo com os anteriores. Por exemplo, na sequência

    1 2 4 5 3 7 90

O elemento que quebra é o elemento 3, que está no índice 4. Perceba que a sequência é
ordenada até ele e o valor 3 "quebra" essa ordenação.

*Importante!* Só há um elemento que quebra a sequência. Como dito anteriormente, 
assim que você encontrá-lo, retorne o índice desse elemento.', NULL, 'Seu programa deve ler uma sequência de inteiros separados por espaço.', 'Deve imprimir o índice do elemento que quebra a sequência ou -1 se não houver esse elemento.', 'resolutions/encontra_quebra_recursivo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (27, 'FACIL', 'Equals BST', 'Implemente um programa que verifica se duas árvores binárias de pesquisa são iguais.', NULL, 'Seu programa deve ler duas linhas da entrada padrão. A primeira linha
irá conter (em ordem) os elementos que devem ser adicionados à primeira árvore.
A segunda linha irá conter (em ordem) os elementos que devem ser adicionados à segunda 
árvore.', 'Seu programa deve imprimir true se as duas árvores forem iguais ou false, caso contrário.', 'resolutions/equals_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (28, 'FACIL', 'Estatística de Ordem', 'A i-ésima estatística de ordem de uma sequência de inteiros é o i-ésimo menor elemento dessa sequência. 
Por exemplo, na sequência [4,5,9,1,2,6,8], o número 4 é a terceira estatística de ordem, 
pois 4 é o terceiro menor número. 

Escreva um programa que imprime qual a estatística de ordem do primeiro elemento de uma sequência.
Embora os testes apenas verifiquem se o seu programa imprime a estatística de ordem do primeiro elemento, 
ao final da execução do seu algoritmo, o primeiro elemento deve dividir a sequência tal 
que os elementos menores que ele estão à sua esquerda e os elementos maiores que ele estão à sua direita.

Assuma que a sequência não possui elementos repetidos.', 'Não é permitido ordenar o array.
Não é permitido usar coleções auxiliares.', 'javac Solution.java ; java Solution
    4 5 9 1 2 6 8
    3

    javac Solution.java ; java Solution
    6 2 1 9 3
    4', '', 'resolutions/estatistica_de_ordem.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (29, 'FACIL', 'Expressão', 'Escreva um programa leia uma expressão matemática com inteiros 
positivos e imprime o valor resultante dessa expressão.', NULL, 'Seu programa irá ler apenas uma linha da entrada padrão. Essa linha consiste em uma string com uma expressão
matemática bem formada.', 'Seu programa deve imprimir o resultado da avaliação da expressão matemática.', 'resolutions/expressao_matematica.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (30, 'FACIL', 'Fibonacci', 'Implemente um programa que recebe um inteiro N. Seu programa deve fazer o calculo do n-ésimo termo da sequência de Fibonacci.

    Fórmula de Fibonacci.
        * F(0) = 0
        * F(1) = 1
        * F(n) = F(n-1) + F(n-2) , para n > 1


*Importante!* Seu programa deve ser recursivo.', NULL, 'Seu programa deve ler da entrada um número inteiro N.', 'Seu programa deve imprimir o resultado do calculo da sequencia de Fibonacci.', 'resolutions/fibonacci.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (31, 'FACIL', 'Fila Array', 'Implemente uma fila com capacidade limitada utilizando array.', NULL, 'Seu programa deve ler da entrada o tamanho da fila e uma série de operações 
(add, remove, element e print). 
A leitura de operações deve ser encerrada com a palavra `"end"`.', 'Seu programa deve imprimir o conteúdo da fila sempre que uma operação **print** for lida.
Se a fila estiver vazia, imprima `"empty"`.

Seu programa deve imprimir o elemento inicial da fila quando ler a operação **element**.

Se a fila estiver vazia e for lida a operação **remove**, imprima `"empty"`.

Se a fila estiver cheia e for lida a operação **add**, imprima `"full"`.', 'resolutions/fila_com_array.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (32, 'FACIL', 'Filtra LinkedList', 'Escreva um programa que filtra uma linked list removendo os elementos iguais ao passado como argumento na
entrada padrão.', NULL, 'Seu programa irá ler uma sequência de inteiros que devem ser adicionados (addLast) em uma LinkedList. Depois, deve ler um
inteiro representando o valor dos elementos a serem removidos.', 'Na saída, seu programa deve imprimir a lista depois da remoção do nós. Se a lista for vazia, deve imprimir **vazia**.', 'resolutions/filtra_linked_list.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (33, 'FACIL', 'Frequência elemento', 'Escreva um programa que conta a frequência de um elemento 
em uma dada sequência de inteiros.', NULL, 'O programa deve ler da entrada um número inteiro N e uma sequência de inteiros.', 'O programa deve imprimir na saída a frequência de N na sequência lida.', 'resolutions/frequencia_elemento.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (34, 'FACIL', 'Fura fila', 'Suponha que um array representa uma fila para entrada em um show. Contudo, 
o pessoal da terceira idade (**todas as pessoas a partir do índice i**), resolveu
exercer o seu direito de ter prioridade na entrada. Assim, você deve deslocar (um a um)
os idosos para o início da fila, respeitando, naturalmente a ordem entre os idosos.', 'Não é permitido utilizar outro array diferente do utilizado para armazenar 
a sequência inicial.', 'Seu programa deve ler 2 linhas. A primeira contém uma sequência (representando a fila) de 
inteiros separados por espaço.

A segunda contém um índice válido **i** da sequência. Esse índice marca o início dos idosos na fila.', 'Seu programa deve imprimir o array depois de fazer cada elemento a partir da posição i ocupar o 
seu lugar no início da fila.

Para cada operação de fura-fila feita, você deve imprimir o estado atual do array. Veja os exemplos de entrada e saída para
um melhor entendimento.

Considere que o índice passado é válido.', 'resolutions/fura_fila_um_a_um.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (35, 'FACIL', 'HashSeT', 'HashSets implementam a noção matemática de conjunto em Java, isto é, não permitem elementos repetidos. 
HashSets são estruturas bem semelhantes à Tabelas Hash no que diz respeito à implementação, pois também podem ser baseadas em arrays e 
utilizam funções de hash para determinar onde armazenar o valor passado. 
Contudo, uma grande diferença é que eles **não** armazenam os pares 
chave-valor, mas apenas os valores. 

Devido à natureza das funções de hash que utilizamos na construção de HashSets, colisões são
inevitáveis. Isto é, para algum par de valores, existe a possibilidade
de seus hashes serem iguais e, por consequência, esses objetos serão mapeados para a mesma
posição.

Uma das maneiras de se resolver colisões é, caso o hash seja mapeado para 
uma posição já ocupada, o algoritmo de inserção procura por uma outra posição livre para inserir o
valor. A essa estratégia, dá-se o nome de resolução de colisões por endereçamento aberto. 
Em particular, quando a tentativa é sempre verificar a próxima posição livre do array, diz-se que
a estratégia utiliza um probing linear.

Implemente um programa que leia da entrada padrão operações em um HashSet 
imprima o seu estado sempre que as operações put e remove forem efetuadas.

O HashSet deve **armazenar valores inteiros** e deve resolver 
**colisões por endereçamento aberto e probing linear**. 

Seu HashSet deve ter as seguintes funções:

    - put <valor>
    - remove <valor> 
    - contains <valor>
    

**Importante!** Para facilitar os testes, seu HashSet sempre terá a seguinte função *base* de hash:

    hash(key) = key % M, onde M é o tamanho do HashSet.

**Importante!** Caso o conjunto já esteja completamente cheio durante uma inserção, 
basta não adicionar o novo valor. Contudo, mesmo que a operação não seja realizada,
imprima o conteúdo do conjunto.

 Rehash será assunto para outra questão :)', '- Seu HashSet deve ser baseado em arrays. 
    - A função de hash deve ser sempre a mesma (exceto pelo probing): key % M, 
    onde M é o tamanho do conjunto.
    - Crie a classe HashSet para organizar o seu código.', 'Seu programa deve ler da entrada o tamanho da tabela e uma série de operações 
(put, remove e contains). 

    - put: adiciona um valor no conjunto 
    - remove: remove o valor do conjunto
    - contains: verifica se o conjunto contém um valor passado como parâmetro.

A leitura de operações deve ser encerrada com a palavra `"end"`.', 'Seu programa deve imprimir o conteúdo do HashSet sempre que as operações put e remove forem efetuadas.
Quando a operação contains for lida, seu programa deve imprimir true ou false.', 'resolutions/hashset.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (36, 'FACIL', 'Insere Primeiro', 'Implemente um programa em Java que
posiciona o primeiro elemento de uma sequência
de forma a ordená-la. A sequência de entrada sempre
está ordenada de forma crescente (exceto pelo primeiro
número).', 'É proibido utilizar qualquer método de ordenação ou estruturas auxiliares. Seu programa deve 
manipular apenas o array original.

    - Não é permitido utilizar *nenhuma* operação em lista (pop, insert, remove etc)
    - Não é permitido criar estruturas de dados auxiliares.', 'Seu programa deve ler uma sequência de inteiros da entrada.', 'Seu programa deve imprimir a sequência ordenada. 

Dica: Use Arrays.toString()', 'resolutions/insere_ordenado_primeiro.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (37, 'FACIL', 'Insere Último', 'Implemente um programa em Java que
posiciona o último elemento de uma sequência
de forma a ordená-la. A sequência de entrada sempre
está ordenada de forma crescente (exceto pelo último
número).', 'É proibido utilizar qualquer método de ordenação ou estruturas auxiliares. Seu programa deve 
manipular apenas o array original.

    - Não é permitido utilizar *nenhuma* operação em lista (pop, insert, remove etc)
    - Não é permitido criar estruturas de dados auxiliares.', 'Seu programa deve ler uma sequência de inteiros da entrada.', 'Seu programa deve imprimir a sequência ordenada. 

Dica: Use Arrays.toString()', 'resolutions/insere_ordenado_ultimo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (38, 'FACIL', 'InsertionSort Recursivo', 'Escreva um programa que ordena um array de inteiros utilizando o insertion sort. 
No entanto, dessa vez, sua implementação deve ser recursiva. 

Seu programa deve imprimir o status do array a inserção ordenada (exceto a primeira).', 'Seu programa deve, obrigatoriamente, utilizar recursão.', 'Seu programa irá ler apenas um linha de entrada, que consiste em uma lista de inteiros separados por espaço.', 'Na saída, imprima o array a cada inserção ordenada. Seu programa
deve parar assim que imprimir a sequência ordenada.', 'resolutions/insertion_sort_recursivo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (39, 'FACIL', 'Inverte Array', 'Implemente um programa que inverte os valores de um array.

# Restrições

Você não pode criar outro array auxiliar.', NULL, 'Seu programa deve ler da entrada uma sequência de números. 

Você deve adicionar esses elementos em um array, inverter os elementos dentro do array e só
então imprimir.', 'Seu programa deve imprimir os valores de maneira invertida (do início para o final).
Importante! Não se trata de apenas imprimir os valores de final para o início, você deve
trocar os valores dentro do array. O estado final do array deve estar invertido.', 'resolutions/inverte_array.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (40, 'FACIL', 'Inverte Frase', 'Escreva um programa que inverta uma frase lista da entrada padrão. A inversão é feita por palavras, mas não por
caractere. Veja os exemplos de execução abaixo.', 'Não é permitido utilizar o método split.
Você pode usar uma pilha, mas também é possível implementar sem essa estrutura de dados auxiliar.', 'Seu programa deve ler uma string da entrada padrão representando a frase a ser invetida.', 'Na saída, seu programa deve imprimir a frase invertida.', 'resolutions/inverte_frase.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (41, 'FACIL', 'Inverte Pilha', 'Implemente um programa que leia os valores que, dada uma pilha como entrada, inverte os valores dessa pilha.

# Restrições

Na manipulação da pilha, você só pode utilizar as operações pop, push e isEmpty. 
Na manipulação da fila, você só pode utilizar, add e remove.', NULL, 'Seu programa deve ler da entrada o tamanho da pilha e uma sequência de números a serem adicionados (push) nessa pilha (a sequência nunca é maior que o tamanho da pilha).
Você deve adicionar esses elementos na pilha para depois iniciar a solução do problema.', 'Seu programa deve imprimir a pilha invertida.', 'resolutions/inverte_pilha.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (42, 'FACIL', 'Inverte Pilha Index', 'Implemente um programa que, dada uma pilha como entrada, inverte os valores dessa pilha até um determinado
índice também lido da entrada. Considere que o topo está no índice 0, o elemento abaixo dele no índice 1
e assim por diante.

# Restrições

Na manipulação da pilha, você só pode utilizar as operações peek, pop, push e isEmpty. 
É permitido utilizar estruturas auxiliares.', NULL, 'Seu programa deve ler da entrada i) o tamanho a pilha; ii) uma sequência de números a serem adicionados (push) nessa pilha 
(a sequência nunca é maior que o tamanho da pilha) e iii) o índice até onde a inversão deve ser feita.

Você pode assumir que o índice passado é válido.', 'Seu programa deve imprimir um traço (`-`) e depois a pilha invertida (do topo até o índice passado).', 'resolutions/inverte_pilha_index.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (43, 'FACIL', 'Inverte Pilha sem Fila', 'Implemente um programa que leia os valores que, dada uma pilha como entrada, inverte os valores dessa pilha. Contudo,
dessa vez, você não pode usar uma fila como auxiliar. De fato, há como inverter a pilha usando apenas algumas
variáveis temporárias.

# Restrições

Na manipulação da pilha, você só pode utilizar as operações pop, push e isEmpty. 
É proibido utilizar estruturas de dados auxiliares.', NULL, 'Seu programa deve ler da entrada o tamanho da pilha e uma sequência de números a serem adicionados (push) nessa pilha (a sequência nunca é maior que o tamanho da pilha).
Você deve adicionar esses elementos na pilha para depois iniciar a solução do problema.', 'Seu programa deve imprimir a pilha invertida.', 'resolutions/inverte_pilha_sem_fila.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (44, 'FACIL', 'Heap?', 'Escreva um programa que leia uma sequencia da entrada padrão e 
verifica se a sequencia forma um max heap.

Assuma que ele já é completo ou quase-completo da esquerda para a direita.', NULL, 'Seu programa deve ler uma linha contém uma sequência de 
inteiros separados por espaço.', 'Seu programa deve imprimir true se a sequencia forma um heap ou false caso contrário.', 'resolutions/is_heap.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (45, 'FACIL', 'Fila (LinkedList)', 'Implemente uma fila baseada em uma linked list (**duplamente encadeada**).
Seus algoritmos devem ser recursivos.', NULL, 'Seu programa deve ler da entrada uma série de operações 
(add, remove, element, search e print). 
A leitura de operações deve ser encerrada com a palavra `"end"`.', 'Seu programa deve imprimir o conteúdo da fila sempre que uma operação **print** for lida.
Se a fila estiver vazia, imprima `"empty"`.

Seu programa deve imprimir o elemento inicial da fila quando ler a operação **element**. Se
a lista estiver vazia, imprima "empty".

Se a fila estiver vazia e for lida a operação **remove**, imprima `"empty"`.

A operação search retorna a primeira posição (iniciando de 0) em que o elemento aparece na fila.
Caso a fila não contenha o elemento imprima -1.', 'resolutions/linked_list.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (46, 'FACIL', 'Lista de Adjacencia', '**Obs: ** É recomendado resolver o exercício Matriz de Adjacência antes desse exercício.

A lista de adjacência é uma forma de representar um grafo computacionamente. Considerando um grafo com N vértices,
cada nó irá possuir uma lista (essa lista pode ser uma linked list, um vetor ou até mesmo outras estruturas como hashmaps)
contendo uma estrutura que representa uma ligação deste nó para outros.

Para ficar mais claro observe o exemplo abaixo, que compara uma matriz de adjacência a uma lista de adjacência. 

![Tree](http://www.dsc.ufcg.edu.br/~jarthur/figuras_tst_eda/lista_adj.gif)

Diferentemente da matriz de adjacência, onde precisamos alocar uma memória fixa de N x N independentemente da
existência de uma aresta entre dois nós. Numa lista de adjacência alocamos apenas a memória necessária, inicialmente
alocamos uma lista para cada nó (N) e a medida que arestas vão sendo adicionadas alocamos mais memória.

Essa solução é ideal para grafos esparsos, isto é, grafos que não tem muitas arestas comparadas com o número de vértices.
E também oferece a oportunidade de obter todos os vizinhos de um nó em O(1), além de ser Facil guardar mais informações
sobre uma aresta, já que a lista de adjacência pode armazenar qualquer estrutura.

Imagine que possa existir múltiplas arestas entre dois nós A e B, como representar essa situação numa
matriz de adjacência? Para a lista de adjacência a solução é bem mais intuitiva, apenas inclua múltiplas arestas na lista
de A (e também na de B caso o grafo seja não direcionado). Podemos adicionar identificadores às arestas para diferenciá-las
se desejado.

Sem mais delongas, nesse exercício implemente uma lista de adjacência.

Para este problema, iremos considerar um grafo ponderado que pode conter loops e múltiplas arestas entre dois nós.
Implemente um programa que recebe as arestas deste grafo e imprima a lista de adjacência no caso do grafo ser direcionado
ou não direcionado.

**Dica : ** Você pode implementar a lista de adjacência como um array de array lists.', 'Utilizar sua própria implementação de lista de adjacência.', 'A primeira linha irá conter dois inteiros N e M, respectivamente o número de nós no grafo e o número de arestas.
Cada nó é identificado com um valor de 0 a N-1. As próximas M linhas são as arestas, cada linha irá conter 3 inteiros A, B e W.
A e B são nós (0 <= A, B <= N-1), onde a aresta parte de A para B no caso do grafo direcionado, e liga AB e BA no caso do grafo
não direcionado. W é o peso desta aresta.', 'Seu programa deve imprimir primeiramente a lista de adjacência considerando um grafo direcionado e depois considerando
um grafo não direcionado.

Uma aresta na saída abaixo é representada por um par (B, W), onde B é o vértice "final" da aresta e W o peso da aresta.
O vértice "inicial" pode ser obtido através do indíce no array que armazena as listas de cada nó.

Seu programa deve imprimir a saída exatamente como no exemplo de execução abaixo. Preste atenção para o número de espaços
e escrita correta.

**Obs: ** Cuidado com o caso de loops, para grafos direcionados se A == B não é preciso adicionar a aresta duas vezes.', 'resolutions/lista_de_adjacencia.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (47, 'FACIL', 'Mariana e os livros', 'Mariana gosta muito de livros, tanto que tem uma larga coleção em suas estantes e sempre está
adicionando novos livros nela. Depois de certo tempo ela percebeu que suas estantes estavam
começando a ficar bagunçadas, com os livros fora de ordem, o que tornava a tarefa de achar um
determinado livro muito complicada, pois ela não podia usar uma busca binária, mas isto é assunto
de outro problema.

Pensando em facilitar sua vida na busca por livros, Mariana decidiu criar um robô que organizasse
a sua estante, por ela ser uma menina muito ocupada e não ter tempo para fazer esta tarefa
sempre. Na criação do robô ela decidiu usar o insertion sort como algoritmo de execução,
mas não tem certeza se ele está funcionando como deveria.

Para verificar se o robô está de acordo com o algoritmo do insertion sort, ela anotou os estados
parciais da estante em organização para verificar a execução do algoritmo, e agora precisa de um
programa que dê os estados parciais de ordenação de uma determinada estante para que ela possa realizar
essa verificação.

Você deve implementar um programa que dada uma entrada com os nomes dos livros que estão naquela
estante, retorna os estados parciais (estado atual do array após a ordenação de cada elemento) de
ordenação seguindo o algoritmo do insertion sort.', 'Para comparação de Strings deve ser utilizado o método String#compareTo.', 'A primeira linha tem o nome de todos os n livros da estante separados por virgula. 0 < n < 20.', 'Seu programa deve imprimir uma linha para cada estado parcial da aplicação do algoritmo sobre
a estante, incluindo o estado inicial e final (estante devidamente organizada). A impressão
de cada linha deve ser formatada separando os nomes dos livros por virgula e espaço ", ".', 'resolutions/mariana_e_os_livros.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (48, 'FACIL', 'Matriz de Adjacência', 'Matriz de adjacência é uma forma matemática de representar grafos.
Para um grafo qualquer com N vértices, constrói-se uma matriz NXN onde
o valor de M[i][j] representa o peso da aresta entre os vértices representados
pela linha i e coluna j. Por exemplo, para um grafo não dirigido representando
pela figura abaixo temos a seguinte matriz
de adjacência:

![Grafo](http://www.dsc.ufcg.edu.br/~jarthur/figuras_tst_eda/grafo_nao_dirigido.png)

          a b c d e f g
        a 0 8 0 8 0 0 0
        b 8 0 5 8 0 3 0
        c 0 5 0 0 0 4 2
        d 8 8 0 0 3 3 0
        e 0 0 0 3 0 1 0
        f 0 3 4 3 1 0 5
        g 0 0 2 0 0 5 0

Como podemos perceber, o uso de memória de uma matriz de adjacência não é otimizado
principalmente por dois motivos:

    - 1) Há repetição de informação. Por exemplo, as arestas entre cada
    par de nó estão duplicadas sem necessidade, pois o grafo não é dirigido.
    Por exemplo, a aresta entre `a` e `b` está representada na matriz na primeira
    linha e segunda coluna e na segunda linha e primeira coluna.

    - 2) Pelo fato da matriz ser quadrada, é preciso reservar espaço
    para todas as possíveis arestas entre nós, mesmo que elas não existam.
    Por exemplo, a aresta entre `b` e `g` não existe, mas ainda sim é preciso
    reservar esse espaço na matriz. Para um grafo com muitos nós e pouco
    conectado, o desperdício de memória é considerável.


Uma maneira de melhorar o uso de memória é utilizar uma tabela hash para
armazenar a representação do grafo. Nessa tabela, as chaves são as arestas
existentes (e. g. `ab`) e os valores são os pesos dessas respectivas arestas
(e. g. 8, para `ab`). Assim, você só precisa armazenar as arestas existentes.
Além disso, se você armazenou a aresta `ab`, isso significa que não precisa armazenar
a aresta `ba`, embora ela exista, uma vez que o grafo não é dirigido.

Implemente um programa que leia os nós de um grafo e sua respectiva matriz
de adjacência e represente esse grafo em uma tabela hash. Seu programa de
ser capaz de receber pesquisa sobre uma determinada aresta e imprimir 
seu peso ou sua inexistência.', NULL, 'Seu programa deve ler da entrada padrão uma linha contendo os `N` nós presentes
no grafo e depois uma sequência de N linhas representando a matriz de adjacência.

Depois disso, seu programa deve ler uma sequência de pesquisas por arestas. A leitura
deve terminar quando a palavra `fim` for lida.', 'Seu programa deve imprimir o peso de cada aresta procurada ou `aresta inexistente.` caso
a aresta não esteja presente no grafo.', 'resolutions/matriz_de_adjacencia.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (49, 'FACIL', 'Max BST', 'Implemente um programa que identifique o valor máximo em uma BST.', NULL, 'Seu programa deve ler apenas uma linha da entrada. 
Essa linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.

Você pode assumir que não haverá elementos repetidos na árvore e que 
a árvore possui ao menos um elemento.', 'Seu programa deve imprimir o caminho percorrido até o elemento máximo 
da árvore.', 'resolutions/max_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (50, 'FACIL', 'Max Pilha', 'Escreva um programa que retorne o maior elemento de uma pilha.', 'Você só pode usar os métodos padrões da interface de pilha (e. g. `peek`, `push`, `pop`, `isEmpty` etc) e outra estrutura auxiliar. 
A pilha deve manter a sua configuração inicial após a execução do seu algoritmo.

Se a sua pilha for baseada em arrays, você não pode acessar um índice arbitrário utilizando pilha[index], por exemplo. Todo
o acesso deve ser feito através de pop, push e peek.', 'Seu programa deve ler uma linha da entrada padrão representando os elementos
a serem adicionados na pilha.

Você só pode usar push, pop e outra estrutura auxiliar. A pilha deve
manter a sua configuração inicial após a execução do seu algoritmo.', 'Seu programa deve imprimir o maior elemento da pilha.', 'resolutions/max_pilha.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (51, 'FACIL', 'Max Pilha Index', 'Escreva um programa que retorne o maior elemento de uma pilha considerando os valores entre o topo
e o índice passado na entrada padrão.', 'Você só pode usar os métodos padrões da interface de pilha (e. g. `peek`, `push`, `pop`, `isEmpty` etc) e outra estrutura auxiliar. 
A pilha deve manter a sua configuração inicial após a execução do seu algoritmo.

Se a sua pilha for baseada em arrays, você não pode acessar um índice arbitrário utilizando pilha[index], por exemplo. Todo
o acesso deve ser feito através de pop, push e peek.', 'Seu programa deve ler uma linha da entrada padrão representando os elementos
a serem adicionados na pilha (um a um e na ordem em que chegam na entrada padrão)
e um índice passado como limite para a busca.

Você só pode usar push, pop e outra estrutura auxiliar. A pilha deve
manter a sua configuração inicial após a execução do seu algoritmo.', 'Seu programa deve imprimir o maior elemento da pilha, considerando os valores entre o topo (índice 0)
e o índice passado na entrada padrão.', 'resolutions/max_pilha_index.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (52, 'FACIL', 'Melhor Pivot', 'Depois de assistir as aulas sobre o QuickSort, você entendeu bem o conceito de "bom pivot" de 
uma sequência de inteiros, certo? 

Baseado no que vimos em sala de aula, implemente um programa que, dado uma sequência de inteiros 
e as posições (**i** e **j**) de dois candidatos a particionar essa sequencia, determina qual é a melhor 
escolha de pivot (i ou j). Isto é, se seq[i] for uma melhor escolha de pivot, seu programa deve imprimir i. 
Caso contrário, deve imprimir j.', 'A sequência **não pode ser ordenada em momento algum**.
A solução deve ser **O(n)**. 
Não é permitido utilizar qualquer coleção do Collections Framework. Você deve utilizar arrays.', 'Seu programa deve ler 2 linhas. A primeira contém uma sequência de inteiros separados por espaço. 
A segunda contém i e j separados por espaço.', 'Seu programa deve imprimir **i** se a melhor escolha de pivot para o quicksort for o elemento na 
posição **i** da sequência. Caso a melhor escolha seja **j**, seu programa deve imprimir **j**.
Caso haja empate, imprima **i**.', 'resolutions/melhor_pivot.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (53, 'FACIL', 'MergeSort passo a passo', 'Escreva um programa que ordena um array de inteiros utilizando o merge sort. 

Seu programa deve imprimir o status a cada etapa do algoritmo.', 'Seu programa deve, obrigatoriamente, imprimir passo a passo cada etapa do merge sort.', 'Seu programa irá ler apenas um linha de entrada, que consiste em uma lista de inteiros separados por espaço.', 'Na saída, deve ser impresso o status do array a cada modificação, desde a impressão do array inicial até a array ordenado.', 'resolutions/merge_sort_passo_a_passo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (54, 'FACIL', 'Min BST', 'Implemente um programa que identifique o valor mínimo em uma BST.', NULL, 'Seu programa deve ler apenas uma linha da entrada. 
Essa linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.

Você pode assumir que não haverá elementos repetidos na árvore e que a árvore possui
ao menos um elemento.', 'Seu programa deve imprimir o caminho percorrido até o elemento mínimo 
da árvore.', 'resolutions/min_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (55, 'FACIL', 'Move Impostor', 'Escreva um programa que encontra e move o impostor de uma lista de inteiros. 
O impostor é o **primeiro** número que quebra uma sequencia em ordem crescente. Por exemplo, na sequência:

    1 2 4 3 7 90

O impostor é o elemento 3.

Além de encontrar o impostor, você deve posiciona-lo em seu devido lugar. 
Para o exemplo acima, sua função deve
alterar a lista para a seguinte: 1 2 3 4 7 90.

*Importante!* Só há um impostor. Como dito anteriormente, é o primeiro elemento que quebra uma
sequência ordenada.

Veja outro exemplo:


    5 7 8 19 -4 4 1 6 8 12 81 3
    
    Nessa sequência, o impostor é o elemento -4. Após a execução do seu algoritmo, a lista deve
    ficar neste estado:

    -4 5 7 8 19 4 1 6 8 12 81 3', NULL, 'Seu programa deve ler uma sequência de inteiros separados por espaço.', 'Deve imprimir a sequência depois de identificar o impostar e posiciona-lo corretamente.', 'resolutions/move_impostor.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (56, 'FACIL', 'Move N', 'Escreva um programa que encontra valores consecutivos que quebram uma
sequência e os move um a um para suas devidas posições.

A sequência sempre começa ordenada e segue ordenada até o primeiro elemento
dos valores consecutivos a serem movidos. Veja um exemplo:
    
    1 2 4 90 99 101 7 14 21

Perceba que a sequência começou ordenada (1, 2, 4...) até que o primeiro
elemento que quebra é encontrado (7). Nesse caso, você deve mover todos os elementos a partir
de 7 (incluindo ele) para os seus devidos lugares.

Importante: esses elementos sempre estão ordenados entre si e sempre vão até o final da
sequência original.

Outro exemplo. 7 18 33 43 1 12. Os elementos 1 12 devem ser movidos para suas respectivas
posições.

Você deve imprimir o estado do array sempre que houver uma troca.', 'Você não pode usar métodos prontos de ordenação. Caso precise, implemente.

Seu programa deve apenas manipular o array de inteiros.

    - insert
    - remove
    - pop
    - qualquer função de ordenação', 'Seu programa deve ler uma sequência de inteiros separados por espaço.', 'Deve imprimir o array sempre que houver uma troca.', 'resolutions/move_n.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (57, 'FACIL', 'Move Três', 'Escreva um programa que encontra três valores consecutivos que quebram uma
sequência e os move um a um para suas devidas posições.

A sequência sempre começa ordenada e segue ordenada até o primeiro elemento
dos trio. Veja um exemplo:
    
    1 2 4 90 99 101 7 14 21

Perceba que a sequência começou ordenada (1, 2, 4...) até que o primeiro
elemento que quebra é encontrado (7). Nesse caso, você deve mover o trio 7, 14, e
21 para os seus devidos lugares.

Importante: esses 3 elementos sempre estão ordenados entre si.

Você deve imprimir o estado do array sempre que houver uma troca.', 'Seu programa deve apenas manipular o array de inteiros.

    - insert
    - remove
    - pop
    - qualquer função de ordenação', 'Seu programa deve ler uma sequência de inteiros separados por espaço.', 'Deve imprimir o array sempre que houver uma troca.', 'resolutions/move_tres.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (58, 'FACIL', 'Ordena Pilha Invertendo', 'Nós já aprendemos como identificar o maior elemento de uma pilha (`getMax(int index)`) ou de uma parte da pilha. Também
já aprendemos como inverter uma pilha ou uma parte da pilha (`inverte(int index)`). Nessa questão você usará esses
dois métodos para ordenar uma Pilha.

Atenção: Na manipulação da pilha, você só pode utilizar as operações peek, pop, push, isEmpty, getMax(int index) e inverte(int index).
Se você não implementou os métodos getMax(int index) e inverte(int index), implemente. Esse dois métodos, em particular, podem
utilizar outra pilha como auxiliar.

Implemente um programa que, dada uma pilha como entrada, ordene os valores dessa pilha.
Considere que o topo está no índice 0, o elemento abaixo dele no índice 1
e assim por diante.

# Restrições

**Não é permitido acessar diretamente os índices do array.** Na manipulação da pilha, você só pode utilizar as operações citadas anteriormente.
Copie e cole sua classe Pilha na sua solução e use esse objeto.', NULL, 'Seu programa deve ler da entrada i) o tamanho a pilha e ii) uma sequência de números a serem adicionados (push) nessa pilha 
(a sequência nunca é maior que o tamanho da pilha).', 'Seu programa deve imprimir um traço (`-`) e depois a pilha ordenada (do topo até o índice passado).', 'resolutions/ordena_pilha_invertendo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (59, 'FACIL', 'Ordenação de Placas', 'O DETRAN (Departamento de Trânsito) precisa manter registro das multas aplicadas a carros que
passam por sinais vermelhos, fazendo a identificação através de sua placa única. Um dos
funcionários do DETRAN sugeriu que fosse implementado um programa para se ordenar as placas
dos carros apenas pelos números, pois ele estava realizando um estudo para identificar
a relação entre a posição de um número na placa e a ocorrência de multas.

Você deve escrever um programa que recebe de entrada as placas de carros, no formato AAA-9999,
e que dá como saída um array com as placas ordenadas **apenas por seus números**, em ordem crescente e
estável. Como estamos falando de um grande número de placas, sua solução precisa ser linear
no que diz respeito ao tempo de execução.', 'Você deve utilizar o algoritmo de radix sort.', 'Serão dadas n placas separadas por vírgula, no formato AAA-9999.', 'Seu programa deve imprimir as placas ordenadas por sua numeração de forma crescente,
estável e separadas por vírgula e espaço.', 'resolutions/ordenacao_placas.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (60, 'FACIL', 'Parênteses', 'Escreva um programa leia uma sequência de parênteses da entrada 
e verifica se a sequência é matematicamente válida (bem formada).', NULL, 'Seu programa irá ler apenas uma linha da entrada padrão. Essa linha consiste em uma string com diversos parênteses.', 'Seu programa deve imprimir S se a sequência for matematicamente válida e N caso contrário.', 'resolutions/parenteses.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (61, 'FACIL', 'Particiona Estável', 'Implemente um programa que leia da entrada padrão uma sequência de inteiros e particiona essa sequência
utilizando o primeiro elemento como pivot. O particionamento deve ser feito seguindo duas
restrições:

    - Todos os elementos à esquerda do pivot são menores ou iguais ao pivot e todos os elementos à direita
    são maiores que ele;
    - O particionamento deve manter a ordem original dos elementos (exceto, naturalmente, o pivot).
    Isto é, os menores devem vir na mesma sequência em que estavam no array original. Da mesma maneira
    os maiores devem vir na mesma sequência em que estavam no array original.', 'A sequência **não pode ser ordenada em momento algum**.
Não é permitido utilizar qualquer coleção do Collections Framework. Você deve utilizar arrays.', 'Seu programa deve uma linha contendo uma sequência de inteiros separados por espaço.', 'Seu programa deve imprimir a sequência particionada pelo primeiro elemento do array e 
repeitando a ordem original dos elementos. 

Dica: Use Arrays.toString() para formatar a saída.', 'resolutions/particiona_estavel.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (62, 'FACIL', 'Particionamento Hoare', 'A estratégia que Hoare (descrita no Cormen) sugere para o particionamento de um array é um pouco
diferente e certamente mais eficiente que a de Lomuto, pois efetua menos trocas.

Implemente essa estratégia de particionamento como descrita no Cormen.

Dica: Consulte o Cormen ou a wikipedia para uma referência de como 
implementar esse tipo de particionamento.', NULL, 'Seu programa deve uma linha contendo uma sequência de inteiros separados por espaço.', 'Seu programa deve imprimir o estado do array ao executar uma vez o particionamento
de Hoare.

Dica: Use Arrays.toString() para formatar a saída.', 'resolutions/particionamento_hoare.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (63, 'FACIL', 'Particionamento Lomuto', 'A estratégia de Lomuto para o particionamento é simples. Escolhe-se como o pivot o primeiro elemento e
utiliza-se duas variáveis de controle: **i**, que representa a posição final do pivot e **j** que
varre o array da posição 1 até o seu final. Sempre que o valor na posição j for menor que o valor
do pivot, atualiza-se i e troca-se os valores das posições i e j. No fim, troca-se a posição
do pivot com o valor na posição **i**.

Implemente um programa que leia da entrada padrão uma sequência de inteiros e particiona essa sequência
utilizando a estratégia de Lomuto.

O particionamento deve ser feito seguindo duas restrições:

    - Todos os elementos à esquerda do pivot são menores ou iguais ao pivot e todos os elementos à direita
    são maiores que ele;', NULL, 'Seu programa deve uma linha contendo uma sequência de inteiros separados por espaço.', 'Seu programa deve imprimir o estado do array a cada troca efetuada (mesmo quando se
troca um elemento por ele mesmo). Além disso, 
deve imprimir o estado do array ao fim da execução.

Dica: Use Arrays.toString() para formatar a saída.', 'resolutions/particionamento_lomuto.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (64, 'FACIL', 'Particionamento Lomuto Último', 'A estratégia de Lomuto para o particionamento é simples. Escolhe-se como o pivot o primeiro elemento e
utiliza-se duas variáveis de controle: **i**, que representa a posição final do pivot e **j** que
varre o array da posição 1 até o seu final. Sempre que o valor na posição j for menor que o valor
do pivot, atualiza-se i e troca-se os valores das posições i e j. No fim, troca-se a posição
do pivot com o valor na posição **i**.

Neste exercício, você deve seguir uma estratégia muito parecida, mas considerando o 
último elemento com o pivot e o comparando e trocando com os elementos anteriores a ele. 

Importante. Você não pode pegar o último elemento, colocar na primeira posição e executar
o particionamento que já conhecemos. Você deve compará-lo com os anteriores e seguir
a estratégia.

Implemente um programa que leia da entrada padrão uma sequência de inteiros e particiona essa sequência
utilizando a estratégia de Lomuto, mas considerando o último elemento como pivot.

O particionamento deve ser feito seguindo duas restrições:

    - Todos os elementos à esquerda do pivot são menores ou iguais ao pivot e todos os elementos à direita
    são maiores que ele;', NULL, 'Seu programa deve uma linha contendo uma sequência de inteiros separados por espaço.', 'Seu programa deve imprimir o estado do array a cada troca efetuada (mesmo quando se
troca um elemento por ele mesmo). Além disso, 
deve imprimir o estado do array ao fim da execução.

Dica: Use Arrays.toString() para formatar a saída.', 'resolutions/particionamento_lomuto_ultimo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (65, 'FACIL', 'Pilha com Array', 'Implemente uma pilha com capacidade limitada utilizando array.', NULL, 'Seu programa deve ler da entrada o tamanho da pilha e uma série de operações 
(pop, push, peek e print). 
A leitura de operações deve ser encerrada com a palavra `"end"`.', 'Seu programa deve imprimir o conteúdo da pilha sempre que uma operação **print** for lida.
Se a pilha estiver vazia, imprima `"empty"`.

Seu programa deve imprimir o elemento no topo da pilha quando ler a operação **peek**.

Se a pilha estiver vazia e for lida a operação **pop**, imprima `"empty"`.

Se a pilha estiver cheia e for lida a operação **push**, imprima `"full"`.', 'resolutions/pilha_com_array.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (66, 'FACIL', 'Notação Polonesa Reversa', 'Escreva um programa que leia uma expressão em notação polonesa reversa e imprima na saída seu resultado.

**Dica: ** O uso de pilha pode facilitar a sua solução.', '--', 'Seu programa deve ler apenas uma linha da entrada. 
Essa linha irá conter uma expressão em notação polonesa reversa.
Os elementos da expressão são esparados por espaço.
Os numeros são apenas inteiros.', 'Seu programa deve imprimir apenas uma linha na saída com o resultado da equação em ponto flutuante.', 'resolutions/polonesa_reversa.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (67, 'FACIL', 'Posições elemento', 'Escreva um programa que imprima as posições (índices) de um elemento 
em uma dada sequência de inteiros.', NULL, 'O programa deve ler da entrada um número inteiro N e uma sequência de inteiros.', 'O programa deve imprimir na saída as posições (separadas por espaço) 
em que se encontra o elemento na sequência. 
Caso o elemento não esteja na sequência lida, imprima -1.', 'resolutions/posicoes_elemento.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (68, 'FACIL', 'Potência Recursiva', 'Implemente um programa que leia dois números inteiros i e j e imprima na saída i elevado a j.

Seu programa deve usar recursividade!', 'Você deve usar recursão.', 'Seu programa deve ler da entrada dois número inteiros (cada um em uma linha).', 'Seu programa deve imprimir o resultado de i elevado a j.', 'resolutions/potencia_recursiva.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (69, 'FACIL', 'Predecessor BST', 'O predecessor de um valor em uma BST é, dentre os valores menores do que ele presentes na árvores, o maior.
Implemente um programa que imprima o caminho percorrido até encontrar o predecessor de um valor lido da
entrada padrão.', NULL, 'Seu programa deve ler duas linhas da entrada padrão. A primeira linha
irá conter (em ordem) os elementos que devem ser adicionados à árvore.
A segunda linha contém o valor cujo predecessor deverá ser impresso.

Você pode assumir que não haverá elementos repetidos na árvore.
Você pode assumir que o valor existe na árvore, mas **não pode** assumir 
que existe um predecessor para ele.', 'Seu programa deve imprimir o caminho percorrido até encontrar o predecessor. Se não houver
sucessor, imprima o caminho até o último nó visitado.', 'resolutions/predecessor_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (70, 'FACIL', 'Elementos maiores BST', 'Escreva um programa que leia os números a serem adicionados em uma BST e um número N e
determine a quantidade de elementos maiores que N na árvore.', NULL, 'Seu programa deve ler duas linhas da entrada padrão. 
A primeira contendo (em ordem) os elementos que devem ser adicionados
na árvore. A segunda linha contêm um inteiro N.


Você pode assumir que não haverá elementos repetidos na árvore.
Você **não** deve assumir que N está presente na árvore.', 'Seu programa deve imprimir em pré-ordem a árvore lida e deve imprimir quantos
elementos maiores que N estã presentes na árvore.', 'resolutions/quantidade_elementos_maiores_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (71, 'FACIL', 'Elementos menores BST', 'Escreva um programa que leia os números a serem adicionados em uma BST e um número N e
determine a quantidade de elementos menores que N na árvore.', NULL, 'Seu programa deve ler duas linhas da entrada padrão. 
A primeira contendo (em ordem) os elementos que devem ser adicionados
na árvore. A segunda linha contêm um inteiro N.


Você pode assumir que não haverá elementos repetidos na árvore.
Você **não** deve assumir que N está presente na árvore.', 'Seu programa deve imprimir em pré-ordem a árvore lida e deve imprimir quantos
elementos menores que N estã presentes na árvore.', 'resolutions/quantidade_elementos_menores_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (72, 'FACIL', 'Quick Sort', 'Implemente o Quick Sort como vimos em sala de aula (sempre escolhendo o primeiro elemento como pivot).', 'Você não pode usar coleção ou método algum do Collections framework. 
Sua implementação deve ser baseada em arrays.', 'Seu programa deve ler da entrada apenas uma linha contendo uma sequência de inteiros separados por espaço.', 'Seu programa deve imprimir o conteúdo do array depois de cada execução do 
particionamento.', 'resolutions/quick_sort_passo_a_passo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (73, 'FACIL', 'Radix Sort', 'Escreva um programa que ordene uma sequência de números seguindo
a estratégia do Radix Sort. Você deve usar o counting sort
como rotina de ordenação dos dígitos.', 'Não é permitido usar Arrays.sort ou qualquer método
pronto de bibliotecas de ordenação. Caso precise, implemente.

Seu programa deve apenas manipular o array de inteiros. Não pode usar funções como:

    - insert
    - remove
    - pop
    - qualquer função de ordenação que não tenha sido feita por você', 'Seu programa deve ler duas linhas da entrada padrão. A primeira
é uma sequência de inteiros separados por espaço e a 
segunda um número inteiro **d** representando a quantidade de dígitos
dos elementos lidos. 

Importante: Você pode considerar que todos os valores a serem
ordenados tem a mesma quantidade **d** de dígitos.

**Atenção!** Na solução que vimos em sala de aula, o counting sort ordenava
valores entre 1 e k. Contudo, note que o radix aplica o counting sort nos seus dígitos.
Você não pode assumir que os dígitos estão entre 1 e 9. Você deve assumir
que os dígitos estão entre 0 e 9. Sendo assim, vai precisar fazer pequenas
modificações no algoritmo do counting sort que vimos.', 'Seu programa deve imprimir os resultados parciais da ordenação. Ou seja, 
imprimir o array sempre que a rotina do counting sort em um determinado
dígito terminar.', 'resolutions/radix_sort.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (74, 'FACIL', 'Radix Dois Dígitos', 'Escreva um programa que ordene uma sequência de números seguindo
a estratégia do Radix Sort. Você deve usar o counting sort
como rotina de ordenação primária. Contudo, ao invés de ordenar
dígito a dígito, você vai ordenar a cada par de dígitos.', 'Não é permitido usar Arrays.sort ou qualquer método
pronto de bibliotecas de ordenação. Caso precise, implemente.

Seu programa deve apenas manipular o array de inteiros. Não pode usar funções como:

    - insert
    - remove
    - pop
    - qualquer função de ordenação que não tenha sido feita por você', 'Seu programa deve ler duas linhas da entrada padrão. A primeira
é uma sequência de inteiros separados por espaço e a 
segunda um número inteiro **d** representando a quantidade de dígitos
dos elementos lidos. 

Importante: Você pode considerar que todos os valores a serem
ordenados tem a mesma quantidade **d** de dígitos. Também pode considerar
que **d** é par. Além disso, para faciliar a implementação, você pode considerar
que não haverá nenhum número com 0 em sua composição.', 'Seu programa deve imprimir os resultados parciais da ordenação. Ou seja, 
imprimir o array sempre que a rotina do counting sort em um determinado
par de dígitos terminar. Veja o exemplo da ordenação para o 
seguinte array [7843, 5374, 2344, 8543].

Na primeira execução do counting sort, ele deve levar em consideração
43, 74, 44 e 43, que são os números formados pela concatenação do dois primeiros dígitos (mais à direita)
de cada número.

Depois, deve levar em consideração os números 78, 53, 23 e 85, que são os números formados pela concatenação 
dos dígitos 3 e 4 (mais à direita) de cada número.', 'resolutions/radix_sort_dois_digitos.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (75, 'FACIL', 'Radix Três Dígitos', 'Escreva um programa que ordene uma sequência de números seguindo
a estratégia do Radix Sort. Você deve usar o counting sort
como rotina de ordenação primária. Contudo, ao invés de ordenar
dígito a dígito, você vai ordenar a cada trio de dígitos.', 'Não é permitido usar Arrays.sort ou qualquer método
pronto de bibliotecas de ordenação. Caso precise, implemente.

Seu programa deve apenas manipular o array de inteiros. Não pode usar funções como:

    - insert
    - remove
    - pop
    - qualquer função de ordenação que não tenha sido feita por você', 'Seu programa deve ler duas linhas da entrada padrão. A primeira
é uma sequência de inteiros separados por espaço e a 
segunda um número inteiro **d** representando a quantidade de dígitos
dos elementos lidos. 

Importante: Você pode considerar que todos os valores a serem
ordenados tem a mesma quantidade **d** de dígitos. Também pode considerar
que **d** é múltiplo de 3. Além disso, para faciliar a implementação, você pode considerar
que não haverá nenhum número com 0 em sua composição.', 'Seu programa deve imprimir os resultados parciais da ordenação. Ou seja, 
imprimir o array sempre que a rotina do counting sort em um determinado
trio de dígitos terminar. Veja o exemplo da ordenação para o 
seguinte array [784367437, 374212343, 234493756, 785437436].

Na primeira execução do counting sort, ele deve levar em consideração
437, 343, 757 e 436, que são os números formados pela concatenação do três primeiros dígitos (mais à direita)
de cada número.

Depois, deve levar em consideração os números 367, 212, 493 e 437, que são os números formados pela concatenação 
dos dígitos 4, 5 e 6 (mais à direita) de cada número.', 'resolutions/radix_sort_tres_digitos.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (76, 'FACIL', 'Remoção BST', 'Escreva um programa que leia os números a serem adicionados em uma BST e
os números a serem removidos (em sequência) dessa árvore. Seu programa deve imprimir
o estado da árvore (pré-ordem) a cada remoção.

**Importante!** A remoção de um nó com dois filhos deve sempre ser realizada utilizando
o **sucessor** do nó a ser removido.', NULL, 'Seu programa deve ler duas linhas da entrada. 
A primeira linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.
A segunda irá conter os elementos a serem removidos da árvore. É importante destacar
que os elementos devem ser removidos em sequencia, isto é, remove-se o primeiro elemento
da árvore original e, da árvore resultante, remove-se o segundo e assim por diante.

Você pode assumir que não haverá elementos repetidos na árvore.

Você **não** pode assumir que os elementos a serem removidos estarão na árvore. A cada
tentativa de remoção de um elemento que não estiver na árvore, apenas imprima
em pré-ordem o conteúdo da árvore.', 'Seu programa deve imprimir o encaminhamento em pré-ordem a cada remoção (ou tentativa de remoção).
Se a árvore ficar vazia após a remoção, imprima `null`.', 'resolutions/remocao_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (77, 'FACIL', 'Remove index LinkedList', 'Escreva um programa que remove um nó de uma LinkedList. O nó a ser
removido está no índice passado como parâmetro na entrada padrão.', NULL, 'Seu programa irá ler uma sequência de inteiros que devem ser adicionados (addLast) em uma LinkedList. Depois, deve ler um
inteiro representando o índice `i` do elemento a ser removido.

Você pode assumir que o índice `i` é válido.', 'Na saída, seu programa deve imprimir a lista depois da remoção do nós.', 'resolutions/remove_index_linkedlist.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (78, 'FACIL', 'Rotações', 'Escreva um programa que leia três números a serem adicionados em uma BST e
aplique a(s) rotação(ões) necessária(s) para balancear a árvore.', NULL, 'Seu programa deve ler uma linha contendo os três números a serem adicionados (em sequência) na árvore.

Você pode assumir que não haverá elementos repetidos na árvore.', 'Seu programa deve imprimir a(s) rotação(ões) realizada(s) na árvore e o encaminhamento em pré-ordem a cada rotação.
Se nenhuma rotação for necessária, apenas imprima **balanceada**', 'resolutions/rotacoes.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (79, 'FACIL', 'SelectionSort Recursivo', 'Escreva um programa recursivo que ordena um array de inteiros utilizando o selection sort. 

Seu programa deve imprimir o status do array a cada modificação nele. Lembre-se que no 
Selection Sort, alteramos o array quando encontramos o menor elemento e o colocamos na sua 
posição.', 'Seu programa deve, obrigatoriamente, utilizar recursão.', 'Seu programa irá ler apenas um linha de entrada, que consiste em uma lista de inteiros separados por espaço.', 'Na saída, imprima o array a cada alteração. Seu programa
deve parar assim que imprimir a sequência ordenada.', 'resolutions/selection_recursivo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (80, 'FACIL', 'Selection sort passo a passo', 'Escreva um programa que ordena um array de inteiros utilizando o selection sort.
Seu programa deve imprimir o status do array a fim de iteração.', NULL, 'Seu programa irá ler apenas um linha de entrada, que consiste em uma lista de inteiros separados por espaço.', 'Na saída, imprima o array de entrada a cada fim de iteração. Seu programa deve parar assim que imprimir
a sequência ordenada.', 'resolutions/selection_sort_passo_a_passo.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (81, 'FACIL', 'Sem Par', 'Escreva um programa que, dado um array não-ordenado, identifique o único elemento desse array cuja frequência é 1. 
Você pode assumir que todos os elementos possuem frequência igual a 2, exceto pelo elemento que você deve identificar.', NULL, 'Seu programa irá ler apenas um linha de entrada, que consiste em uma lista de inteiros separados por espaço.', 'Na saída, deve ser impresso apenas o único elemento que aparece uma única vez no array.', 'resolutions/sem_par.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (82, 'FACIL', 'Soma folhas', 'Implemente um programa que some os valores de todas as folhas de uma árvore binária de pesquisa.', NULL, 'Seu programa deve ler apenas uma linha da entrada. 
Essa linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.

Você pode assumir que não haverá elementos repetidos na árvore.', 'Seu programa deve imprimir a soma dos valores de todas as folhas da árvore.', 'resolutions/soma_folhas.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (83, 'FACIL', 'Stooge Sort', 'Implemente o Stooge Sort.', 'Você não pode usar coleção ou método algum do Collections framework. Sua implementação deve ser baseada em arrays.
Você não pode usar qualque outro método de ordenação.', 'Seu programa deve ler da entrada apenas uma linha contendo uma sequência de inteiros separados por espaço.', 'Seu programa deve imprimir a sequência ordenada.', 'resolutions/stooge_sort.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (84, 'FACIL', 'Stop Words', 'Stop words são palavras que tipicamente são consideradas irrelevantes para análise de um texto.
Estamos falando de preposições, artigos, entre outros. Analistas de dados costumam remover
essas palavras do texto a ser analisado para que consigam obter melhores resultados nas tarefas
de processamento de linguagem natural.

Seu objetivo nessa questão é remover stopwords de um determinado texto.', NULL, 'Seu programa deve ler da entrada padrão uma string representando o texto a ser analisado e 
uma string representando as stopwords separadas por espaço.', 'Seu programa deve imprimir o texto original sem as ocorrência das stopwords.', 'resolutions/stopwords.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (85, 'FACIL', 'Sucessor BST', 'O sucessor de um valor em uma BST é, dentre os valores maiores do que ele presentes na árvores, o menor.
Implemente um programa que imprima o caminho percorrido até encontrar o sucessor de um valor lido da
entrada padrão.', NULL, 'Seu programa deve ler duas linhas da entrada padrão. A primeira linha
irá conter (em ordem) os elementos que devem ser adicionados à árvore.
A segunda linha contém o valor cujo sucessor deverá ser impresso.

Você pode assumir que não haverá elementos repetidos na árvore.
Você pode assumir que o valor existe na árvore, mas **não pode** assumir 
que existe um sucessor para ele.', 'Seu programa deve imprimir o caminho percorrido até encontrar o sucessor. Se não houver
sucessor, imprima o caminho até o último nó visitado.', 'resolutions/sucessor_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (86, 'FACIL', 'Tabela de Frequência', 'Escreva um programa que calcula a tabela de frequência de todos os elementos
de uma sequência. 

**Importante!** Seu programa deve ter complexidade linear.', '- Não é permitido usar qualquer coleção pertencente ao Collections Framework.
    Você pode usar apenas arrays para resolver a questão.

    - A complexidade de sua solução deve ser linear.', 'O programa deve ler da entrada uma sequência de inteiros cujos valores
variam de 0 a N, onde N é um inteiro positivo.', 'O programa deve imprimir na saída cada elemento da sequência lida e sua frequência
separados por vírgula.', 'resolutions/tabela_de_frequencia.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (87, 'FACIL', 'HT Chaining', 'Devido à natureza das funções de hash que utilizamos na construção de Tabelas Hash, colisões são
inevitáveis. Isto é, para algum par de objetos com chaves diferentes, existe a possibilidade
de seus hashes serem iguais e, por consequência, esses objetos serão mapeados para a mesma
posição da tabela.

Uma das maneiras de se resolver colisões é, ao invés de armazenar o par <chave, valor> em
uma posição da tabela, armazenar uma fila contendo todos os pares <chave, valor> que forem
mapeados para aquela posição.

Implemente um programa que leia da entrada padrão operações em uma 
tabela hash e imprima o seu estado sempre que as operações put e remove forem efetuadas.

A tabela hash deve **armazenar chaves inteiras e valores do tipo String** e deve resolver **colisões por chaining**. 

Sua tabela deve ter as seguintes funções:

    - put <chave> <valor>
    - remove <chave>
    - keys
    - values
    

Importante! Para facilitar os testes, sua tabela sempre terá a seguinte função de hash:

    hash(key) = key % M, onde M é o tamanho da tabela', '- Sua tabela deve ser baseada em arrays. Contudo, as listas dentro da tabela devem ser do tipo ArrayList.
    - A função de hash deve ser sempre a mesma: key % M, onde M é o tamanho da tabela.
    - Crie a classe TabelaHash para organizar o seu código. 
    - Crie uma classe Pair como abstração para chave e valor.', 'Seu programa deve ler da entrada o tamanho da tabela e uma série de operações 
(put, remove, keys, e values). 

    - put: adiciona o par chave,valor na tabela
    - remove: remove o par cuja chave é igual a chave passada como parâmetro
    - keys: imprime em ordem as chaves da tabela. Você pode usar Arrays.sort para isso.
    - values: imprime em ordem os valores da tabela. Você pode usar Arrays.sort para isso.

A leitura de operações deve ser encerrada com a palavra `"end"`.', 'Quando a operação *keys* ou *values* for lida, deve imprimir as chaves ou valores em
ordem crescente.

Sempre que seu programa ler as operações put e remove, ele
deve imprimir o estado da tabela após a execução dessas operações.', 'resolutions/tabela_hash_chaining.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (88, 'FACIL', 'HT Probing Linear', 'Devido à natureza das funções de hash que utilizamos na construção de Tabelas Hash, colisões são
inevitáveis. Isto é, para algum par de objetos com chaves diferentes, existe a possibilidade
de seus hashes serem iguais e, por consequência, esses objetos serão mapeados para a mesma
posição da tabela.

Uma das maneiras de se resolver colisões é, caso o hash da chave seja mapeado para 
uma posição já ocupada, o algoritmo de inserção procura por uma outra posição livre para inserir o
par <chave, valor>. A essa estratégia, dá-se o nome de resolução de colisões por endereçamento aberto. 
Em particular, quando a tentativa é sempre verificar a próxima posição da tabela, diz-se que
a estratégia utiliza um probing linear.

Implemente um programa que leia da entrada padrão operações em uma 
tabela hash e imprima o seu estado sempre que as operações put e remove forem efetuadas.

A tabela hash deve **armazenar chaves inteiras e valores do tipo String** e deve resolver 
**colisões por endereçamento aberto e probing linear**. 

Sua tabela deve ter as seguintes funções:

    - put <chave> <valor>
    - remove <chave>
    - keys
    - values
    

**Importante!** Para facilitar os testes, sua tabela sempre terá a seguinte função *base* de hash:

    hash(key) = key % M, onde M é o tamanho da tabela

**Importante!** Caso a tabela já esteja completamente cheia durante uma inserção, 
basta não adicionar o novo par. Contudo, mesmo que a operação não seja realizada,
imprima o conteúdo da tabela.

 Rehash será assunto para outra questão :)', '- Sua tabela deve ser baseada em arrays. 
    - A função de hash deve ser sempre a mesma (exceto pelo probing): key % M, 
    onde M é o tamanho da tabela.
    - Crie a classe TabelaHash para organizar o seu código. 
    - Crie uma classe Pair como abstração para chave e valor.', 'Seu programa deve ler da entrada o tamanho da tabela e uma série de operações 
(put, remove, keys, e values). 

    - put: adiciona o par chave,valor na tabela
    - remove: remove o par cuja chave é igual a chave passada como parâmetro
    - keys: imprime em ordem as chaves da tabela. Você pode usar Arrays.sort para isso.
    - values: imprime em ordem os valores da tabela. Você pode usar Arrays.sort para isso.

A leitura de operações deve ser encerrada com a palavra `"end"`.', 'Seu programa deve imprimir o conteúdo da tabela sempre após as operações put e remove forem efetuadas.
Quando a operação *keys* ou *values* for lida, deve imprimir as chaves ou valores em
ordem crescente.', 'resolutions/tabela_hash_probing.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (89, 'FACIL', 'Teorema mestre', 'Escreva um programa que, dada uma relação de recorrência, 
aplica o teorema mestre para determinar a sua classe assintótica.

O teorema mestre pode ser aplicado em funções no seguinte formato:

    T(n) = a ''*'' T(n/b) + theta(n''**''ord)

, onde **a** é a quantidade de chamadas recursivas, 
**b** é o tamanho de cada subproblema e **ord** é a ordem da função somada a cada passo recursivo.', NULL, 'Seu programa recebe 3 valores inteiros constítuidos por a, b e ord.', 'Seu programa deve aplicar as regras do teorema mestre e imprimir o theta da relação de recorrência.', 'resolutions/teorema_mestre.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (90, 'FACIL', 'Top N', 'Escreva um programa que imprima os 
**n** maiores elementos de uma sequência.', 'Não é permitido usar arrays auxiliares.

Não é permitido usar Arrays.sort ou qualquer método
pronto de bibliotecas de ordenação. Caso precise, implemente.

Seu programa deve apenas manipular o array de inteiros. Não pode usar funções como:

    - insert
    - remove
    - pop
    - qualquer função de ordenação', 'Seu programa deve ler duas linhas da entrada padrão. A primeira
é uma sequência de inteiros separados por espaço e a 
segunda um número inteiro **n** representando a quantidade de elementos
a serem impressos.

Importante:  você pode considerar que n sempre é maior ou igual a 1 e menor ou
igual ao número de elementos da sequência.', 'Seu programa deve imprimir de forma decrescente o n maiores elementos da sequência lida.', 'resolutions/top_n.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (91, 'FACIL', 'Torre de Hanoi', 'Torre de Hanoi é um jogo estratégico que possui 3 hastes/pinos verticais (A, B e C) que funcionam como pilhas.

No primeiro pino (A) temos discos ordenados de forma crescente de diâmetro (o menor no topo).
O objetivo do jogo é passar esses discos para o último pino (C) com o auxílio do pino central (B).

Contudo o jogo apresenta algumas restrições quanto aos movimentos:

    - apenas um disco pode ser movido por vez;
    - apenas o disco do topo de cada pino pode ser escolhido para ser movido (i. e, pilha);
    - um disco de diâmetro maior nunca pode ficar acima de um disco de diâmetro menor.', NULL, 'Seu programa deve ler apenas a quantidade de discos no primeiro pino.', 'Seu programa deve exibir cada movimento dos discos, incluindo origem e destino do disco.', 'resolutions/torre_de_hanoi.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (92, 'FACIL', '3N + 1', 'Considere a seguinte estratégia para gerar uma sequência de 
números a partir de um número inteiro N:

    - Se N for par, divida por 2.
    - Caso N seja ímpar, multiplique por 3 e some 1.
    - Substitua N pelo número gerado e repita esse processo até que o número gerado seja 1.

Por exemplo, para N = 22, temos a seguinte sequência gerada:
    - 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1

Obs.: Esse é um problema clássico de programação. 
É material de vários livros que abordam o assunto. Portanto, não é 
de autoria dos professores responsáveis pelo tst.

Conjectura-se (não há prova ainda) que para qualquer inteiro, 
a sequência sempre acabe em 1. Contudo, sabe-se que para qualquer inteiro
entre 1 e 1.000.000 isso seja verdadeiro.', NULL, 'Seu programa deve ler da entrada dois inteiros (um por linha)
i e j, ambos menores que 1.000.000.', 'Na saída, você deve imprimir apenas o tamanho da maior sequência gerada pelos
números entre i e j (incluindo ambos).', 'resolutions/tres_n_mais_um.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (93, 'FACIL', 'Trim LinkedList', 'Escreva um programa remove os extremos de uma LinkedList. 
A quantidade de extremos a ser removida é passada como argumento na linha de comando.', NULL, 'Seu programa irá ler uma sequência de inteiros que devem ser adicionados (addLast) 
em uma LinkedList. Depois, deve ler um inteiro representando a quantidade
de extremos que deve ser removida da lista.', 'Na saída, seu programa deve imprimir a lista depois da remoção do nós. 
Se a lista for vazia, deve imprimir **vazia**.

Por exemplo, se for passado 1 na linha de comando, seu programa deve remover
o primeiro e o último elemento. Se for passado 2, o primeiro, segundo, último e penúltimo elementos devem ser removidos e assim por diante.', 'resolutions/trim_linked_list.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (94, 'FACIL', 'Troca Vizinhos', 'Escreva um programa que leia uma sequência de números inteiros e troca os elementos vizinhos.
Se o tamanho da sequência for impar, troque os vizinhos e mantenha o último elemento em
sua posição.', 'O algoritmo deve ser in-place. Ou seja, não é permitido utilizar qualquer outro array auxiliar para trocar
os elementos.', 'Seu programa irá ler uma sequência e armazená-la em um array de inteiros.', 'Na saída, seu programa deve imprimir o array resultante da troca dos elementos vizinhos.
Dica: use Arrays.toString() para formatar a saída.', 'resolutions/troca_vizinhos.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (95, 'FACIL', 'Troca Vizinhos LinkedList', 'Escreva um programa que troca nós vizinhos de uma LinkedList. Você não poderá trocar os valores, deve trocar os nós, isto é, manipular
as referências `next` e `prev` para a troca.', NULL, 'Seu programa irá ler uma sequência de inteiros que devem ser adicionados (addLast) em uma LinkedList. Depois, deve ler um
inteiro representando o índice `i` do elemento a ser trocado. Você deve trocar os elementos no índice `i` e `i+1` apenas.

Você pode assumir que os índices `i` e `i+1` são índices válidos.', 'Na saída, seu programa deve imprimir a lista depois da troca dos nós nos índices `i` e `i+1`.', 'resolutions/troca_vizinhos_linked_list.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (96, 'FACIL', 'Valor Mais Próximo BST', 'Escreva um programa que leia os números a serem adicionados em uma BST e
um número N sobre o qual se deseja encontrar o valor mais próximo a ele presente na árvore.', '- Não é permitido procurar por sucessor ou predecessor. Ainda que fosse, N 
    não precisa ser um valor presente na árvore.
    - A implementação deve ser O(h). Isto é, você não pode percorrer
    toda a árvore para encontrar o elemento.', 'Seu programa deve ler duas linhas da entrada. 
A primeira linha irá conter (em ordem) os elementos que devem ser adicionados à árvore.
A segunda irá conter um valor N (não necessariamente presente na árvore). 

Seu programa deve encontrar na árvore o valor mais próximo de N.

Você pode assumir que não haverá elementos repetidos na árvore.
Você pode assumir que não haverá empate dois valores.', 'Inicialmente, seu programa deve imprimir o encaminhamento em pré-ordem da árvore lida. Depois, 
deve imprimir o valor mais próximo a N presente na árvore.
Veja os exemplos de execução abaixo.', 'resolutions/valor_mais_proximo_bst.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (97, 'FACIL', 'Vetor circular', 'Escreva um programa que imprime um vetor de maneira circular. 
Seu programa deve receber uma sequência de valores e um inteiro N e deve imprimir as N posições da sequência lida. 
Naturalmente, N pode ser maior do que o tamanho da sequência lida. 

Nesses casos, você deve reiniciar a impressão partindo novamente do início do vetor.', NULL, 'Seu programa receberá na primeira linha uma sequência de valores separados por espaço e, na segunda linha, 
um valor N que dirá quantos elementos devem ser impressos.', 'Seu programa deve imprimir a sequencia de número com N elementos de forma circular. 
Ou seja, quando o último elemento for impresso ele deve voltar para o primeiro e 
continuar até chegar a N elementos impressos.', 'resolutions/vetor_circular.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (98, 'FACIL', 'Warm up', 'Escreva um programa que leia um número inteiro N e uma sequência de inteiros e multiplique
cada elemento dessa sequência por N.', NULL, 'Seu programa deve ler duas linhas. Na primeira linha, deve ler um inteiro N. Na segunda,
uma sequência de inteiros separados por espaço.', 'Seu programa deve imprimir na saída a sequência de inteiros resultante da multiplicação
entre N e cada elemento da sequência original.', 'resolutions/warm_up_eda.py') ON CONFLICT DO NOTHING;
INSERT INTO questions (id, difficulty, title, description, restriction, input_format, output_format, resolution_path) VALUES (99, 'FACIL', 'Word Cloud', 'Word cloud é uma forma gráfica de apresentar as palavras de um determinado texto. 
Nela, as palavras assumem tamanho proporcional às suas frequências no texto original. Assim,
uma biblioteca que desenha uma wordcloud deve usar como informação cada palavra
contida no texto sob análise e sua respectiva frequência.


Seu objetivo nessa questão é fornecer a informação necessária para o construtor de word cloud, isto é, 
as palavras e suas respectivas frequências. 
Para isso, implemente um programa que receba uma String representando o texto a ser analisado e retorne essa informação.

Importante: i) considere que a string passada como parâmetro é grande e um algoritmo O(n**2) seria inviável e 
ii) você deve escolher a estrutura de dados adequada para o cálculo da frequência baseado no que vimos em sala de aula.', NULL, 'Seu programa deve ler da entrada padrão o texto a ser analisado e uma sequência de consultas de palavras
até que a palavra `fim` seja lida. Para cada consulta, seu programa deve imprimir a frequência do termo
consultado.

Você pode assumir que a palavra `fim` não faz parte do texto a ser analisado.', 'Seu programa deve imprimir para cada termo do texto analisado a sua respectiva frequência.', 'resolutions/word_cloud.py') ON CONFLICT DO NOTHING;

-- === tests ===
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (1, '1', 'de -> 0 para -> 0 altura -> 0', FALSE, 1) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (2, '10
0 1
1 3
2 3
0 7
3 4
3 5
5 6
6 8
5 9', 'de -> 7 para -> 8 altura -> 6', FALSE, 1) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (3, '5
0 1
0 2
0 3
2 4', 'de -> 1 para -> 4 altura -> 3', TRUE, 1) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (4, '3
0 1
1 2', 'de -> 0 para -> 2 altura -> 2', TRUE, 1) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (5, '10 8 1 9 20 18 25', '2', TRUE, 2) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (6, '1 2 3 4 5 6 7 8', '7', FALSE, 2) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (7, '100 80 200 90 150 300 85 170 400 350 320 330', '6', FALSE, 2) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (8, '100 80 200 90 150 85 170 160', '4', FALSE, 2) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (9, '100 80 200 90 150 85 170 160 83 84', '5', FALSE, 2) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (10, '10', '0', FALSE, 2) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (11, '10 -1', '1', FALSE, 2) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (12, '3
2
1
3
1
2
3', 'Arvores com estruturas diferentes.', TRUE, 3) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (13, '1
3
20', 'Arvores similares.', TRUE, 3) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (14, '5
1
2
3
4
5
10
11
12
13
14
15', 'Arvores similares.', FALSE, 3) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (15, '6
10
5
1
30
20
25
15
7
2
20
19
18', 'Arvores com estruturas diferentes.', FALSE, 3) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (16, '5
10
5
1
30
20
15
7
2
20
19', 'Arvores similares.', FALSE, 3) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (17, '7
15
7
2
20
17
19
16
10
5
1
30
20
25
17', 'Arvores similares.', FALSE, 3) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (18, '100 200 210 90 95 70 1', '100,1 90,1 70,1 1,0 95,0 200,-1 210,0', TRUE, 4) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (19, '1 2 3 4 5 6 7 8', '1,-7 2,-6 3,-5 4,-4 5,-3 6,-2 7,-1 8,0', FALSE, 4) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (20, '100 80 200 90 150 300 85 170 400 350 320 330', '100,-3 80,-2 90,1 85,0 200,-3 150,-1 170,0 300,-4 400,3 350,2 320,-1 330,0', FALSE, 4) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (21, '10 9 8', '10,2 9,1 8,0', FALSE, 4) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (22, '10', '10,0', FALSE, 4) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (23, '10 -1', '10,1 -1,0', FALSE, 4) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (24, '9', '9', FALSE, 5) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (25, '1 2 3 4 5 6 7 8', '1 2 3 4 5 6 7 8', FALSE, 5) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (26, '10 8 1 9 20 18 25', '10 8 20 1 9 18 25', TRUE, 5) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (27, '10 9 8 7', '10 9 8 7', FALSE, 5) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (28, '10 110 90 9 8 7', '10 9 110 8 90 7', FALSE, 5) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (29, '10 110 90 9 8 7 3 6 91', '10 9 110 8 90 7 91 3 6', FALSE, 5) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (30, '9', '9', FALSE, 6) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (31, '1 2 3 4 5 6 7 8', '1 2 3 4 5 6 7 8', FALSE, 6) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (32, '10 8 1 9 20 18 25', '10 20 8 25 18 9 1', TRUE, 6) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (33, '10 9 8 7', '10 9 8 7', FALSE, 6) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (34, '10 110 90 9 8 7', '10 110 9 90 8 7', FALSE, 6) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (35, '10 110 90 9 8 7 3 6 91', '10 110 9 90 8 91 7 3 6', FALSE, 6) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (36, '3 1 8 4 7 11 2', '1 3 4 7 8 2 11
1 3 4 7 2 8 11
1 3 4 2 7 8 11
1 3 2 4 7 8 11
1 2 3 4 7 8 11', TRUE, 7) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (37, '3 2 1', '2 1 3
1 2 3', FALSE, 7) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (38, '3 2 1 1', '2 1 1 3
1 1 2 3', FALSE, 7) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (39, '1 1 1', '1 1 1', FALSE, 7) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (40, '5 3 2 1', '3 2 1 5
2 1 3 5
1 2 3 5', FALSE, 7) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (41, '23 27 45 2 49 26', '[49, 27, 45, 2, 23, 26]', TRUE, 8) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (42, '11 8 1 4 3', '[11, 8, 1, 4, 3]', TRUE, 8) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (43, '0 1 2', '[2, 1, 0]', FALSE, 8) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (44, '2 4 1 7 6 3', '[7, 6, 3, 4, 2, 1]', FALSE, 8) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (45, '4 1 3 2 16 9 10 14 8 7', '[16, 14, 10, 8, 7, 9, 3, 2, 4, 1]', FALSE, 8) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (46, '3 5 8 10 12 18 20
99', '3
5
6
-1', TRUE, 9) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (47, '3 5 8 10 12 18
3', '2
0', TRUE, 9) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (48, '1 1 1
1', '1', FALSE, 9) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (49, '0 1 2 3 4 5 6 7 8 9 10
0', '5
2
0', FALSE, 9) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (50, '0 1 2 3 4 5 6 7 8 9 10
10', '5
8
9
10', FALSE, 9) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (51, '0 1 2 3 4 5 6 7 8 9 10
3', '5
2
3', FALSE, 9) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (52, '0 1 2 3 4 5 6 7 8 9 10
8', '5
8', FALSE, 9) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (53, '3 5 8 10 12 18 20
99', '3
5
6
-1', TRUE, 10) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (54, '3 5 8 10 12 18
3', '2
0', TRUE, 10) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (55, '1 1 1
1', '1', FALSE, 10) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (56, '0 1 2 3 4 5 6 7 8 9 10
0', '5
2
0', FALSE, 10) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (57, '0 1 2 3 4 5 6 7 8 9 10
10', '5
8
9
10', FALSE, 10) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (58, '0 1 2 3 4 5 6 7 8 9 10
3', '5
2
3', FALSE, 10) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (59, '0 1 2 3 4 5 6 7 8 9 10
8', '5
8', FALSE, 10) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (60, '10 8 1 9 20 18 25
1', '[10, 8, 1]', TRUE, 11) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (61, '10 8 1 9 20 18 25
16', '[10, 20, 18]', TRUE, 11) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (62, '1 2 3 4 5 6 7 8
1', '[1]', FALSE, 11) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (63, '1 2 3 4 5 6 7 8
3', '[1, 2, 3]', FALSE, 11) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (64, '10 9 8 7
6', '[10, 9, 8, 7]', FALSE, 11) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (65, '100 80 200 90 150 300 85 170 400 350 320 330
330', '[100, 200, 300, 400, 350, 320, 330]', FALSE, 11) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (66, '100 80 200 90 150 300 85 170 400 350 320 330
90', '[100, 80, 90]', FALSE, 11) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (67, '100 80 200 90 150 300 85 170 400 350 320 330
83', '[100, 80, 90, 85]', FALSE, 11) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (68, '3 5 8 10 12 18 20
99', '-1', TRUE, 12) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (69, '3 5 8 10 12 18
3', '0', TRUE, 12) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (70, '1 1 1
1', '0', FALSE, 12) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (71, '0 1 2 3 4 5 6 7 8 9 10
0', '0', FALSE, 12) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (72, '0 1 2 3 4 5 6 7 8 9 10
10', '10', FALSE, 12) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (73, '0 1 2 3 4 5 6 7 8 9 10
3', '3', FALSE, 12) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (74, '0 1 2 3 4 5 6 7 8 9 10
8', '8', FALSE, 12) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (75, '2 1
0 1', 'True', FALSE, 13) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (76, '2 3
0 1
0 1
0 1', 'False', FALSE, 13) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (77, '3 2
1 2
0 2', 'True', TRUE, 13) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (78, '4 3
1 2
0 2
1 0', 'False', TRUE, 13) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (79, '4 3
2 1
0 1
0 3', 'True', FALSE, 13) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (80, '10 8 1 9 20 18 25', '4', TRUE, 14) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (81, '10', '1', FALSE, 14) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (82, '10 8 9', '1', FALSE, 14) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (83, '10 8 9 1 12', '3', FALSE, 14) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (84, '10 8', '1', FALSE, 14) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (85, '10', '1', FALSE, 14) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (86, '10 8 1 9 20 18 25', '3', TRUE, 15) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (87, '10', '0', FALSE, 15) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (88, '10 8 9', '2', FALSE, 15) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (89, '10 8 9 1 12', '2', FALSE, 15) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (90, '10 8', '1', FALSE, 15) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (91, '100 80 200 90 150 300 85 170 400 350 320 330', '9', FALSE, 15) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (92, '3 1 1 6 4 -2 7
7
-2', '[0, 0, 0, 0, 0, 1, 0, 0, 0, 0]
[0, 0, 0, 1, 0, 1, 0, 0, 0, 0]
[0, 0, 0, 2, 0, 1, 0, 0, 0, 0]
[0, 0, 0, 2, 0, 1, 0, 0, 1, 0]
[0, 0, 0, 2, 0, 1, 1, 0, 1, 0]
[1, 0, 0, 2, 0, 1, 1, 0, 1, 0]
[1, 0, 0, 2, 0, 1, 1, 0, 1, 1]
Cumulativa do vetor de contagem - [1, 1, 1, 3, 3, 4, 5, 5, 6, 7]
[0, 1, 1, 1, 3, 3, 4, 5, 5, 6]
[-2, 1, 1, 3, 4, 6, 7]', TRUE, 16) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (93, '2 2 -4 9 3 2 1 5
9
-4', '[0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
[0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
[1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
[1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1]
[1, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 1]
[1, 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 1]
[1, 0, 0, 0, 0, 1, 3, 1, 0, 0, 0, 0, 0, 1]
[1, 0, 0, 0, 0, 1, 3, 1, 0, 1, 0, 0, 0, 1]
Cumulativa do vetor de contagem - [1, 1, 1, 1, 1, 2, 5, 6, 6, 7, 7, 7, 7, 8]
[0, 1, 1, 1, 1, 1, 2, 5, 6, 6, 7, 7, 7, 7]
[-4, 1, 2, 2, 2, 3, 5, 9]', TRUE, 16) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (94, '-1 0 0 0
0
-1', '[1, 0]
[1, 1]
[1, 2]
[1, 3]
Cumulativa do vetor de contagem - [1, 4]
[0, 1]
[-1, 0, 0, 0]', FALSE, 16) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (95, '0 0 0 0 0
0
0', '[1]
[2]
[3]
[4]
[5]
Cumulativa do vetor de contagem - [5]
[0]
[0, 0, 0, 0, 0]', FALSE, 16) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (96, '3 1 1 6 4 7
7', '0 0 0 1 0 0 0 0
0 1 0 1 0 0 0 0
0 2 0 1 0 0 0 0
0 2 0 1 0 0 1 0
0 2 0 1 1 0 1 0
0 2 0 1 1 0 1 1
Cumulativa do vetor de contagem - 0 2 2 3 4 4 5 6
0 0 2 2 3 4 4 5
1 1 3 4 6 7', TRUE, 17) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (97, '2 2 4 3 2 1 5
5', '0 0 1 0 0 0
0 0 2 0 0 0
0 0 2 0 1 0
0 0 2 1 1 0
0 0 3 1 1 0
0 1 3 1 1 0
0 1 3 1 1 1
Cumulativa do vetor de contagem - 0 1 4 5 6 7
0 0 1 4 5 6
1 2 2 2 3 4 5', TRUE, 17) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (98, '1 1 1 1 1
1', '0 1
0 2
0 3
0 4
0 5
Cumulativa do vetor de contagem - 0 5
0 0
1 1 1 1 1', FALSE, 17) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (99, '0 5 1 2 3
5', '1 0 0 0 0 0
1 0 0 0 0 1
1 1 0 0 0 1
1 1 1 0 0 1
1 1 1 1 0 1
Cumulativa do vetor de contagem - 1 2 3 4 4 5
0 1 2 3 4 4
0 1 2 3 5', FALSE, 17) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (100, '1 3 2 5
6', '1 5', TRUE, 18) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (101, '2 3 5 0 1
4', '3 1', TRUE, 18) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (102, '1 5 2 3 5
11', '-1', TRUE, 18) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (103, '1 5
6', '1 5', FALSE, 18) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (104, '9 3 1 7 34 22 101 7 300 1 45
3', '1 1 3', TRUE, 19) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (105, '9 3 1 7 34 22 101 7 300 1 45
4', '1 1 3 7', TRUE, 19) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (106, '1 2 3
3', '1 2 3', FALSE, 19) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (107, '1 9 3 2
1', '1', FALSE, 19) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (108, '9 6 4 2 89 43 5 42 5
0', '9', TRUE, 20) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (109, '327 123
84', 'indice invalido', FALSE, 20) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (110, '3
2', 'indice invalido', FALSE, 20) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (111, '8 8 8 8 8 8 8 8
3', '8', FALSE, 20) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (112, '1 2 3 4 5
4', '5', FALSE, 20) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (113, '874 47 472 474 724
2', '472', FALSE, 20) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (114, '1 2 3 4 5
1 2 3 4 5 6', '6', TRUE, 21) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (115, '1 7 6
6 4 7 1', '4', TRUE, 21) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (116, '9 6 3
6 3 9 1', '1', FALSE, 21) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (117, '1 5
9 1 5', '9', FALSE, 21) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (118, '1 5 6 8 8 4 2 0', 'true', TRUE, 22) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (119, '1 6 8 7 9 5', 'false', TRUE, 22) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (120, '8', 'false', FALSE, 22) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (121, '1 5 6 8 9 4 5 1', 'true', FALSE, 22) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (122, '9 8 5 5 4 6', 'true', FALSE, 22) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (123, '9 2 4 3 1 -9', '[9, 2, 1, -9, 4, 3]
[-9, 1, 2, 3, 4, 9]
[-9, 1, 3, 4, 2, 9]', FALSE, 23) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (124, '1 2 3 4 5 6 7 8', '[1, 2, 3, 4, 5, 6, 7, 8]
[1, 2, 3, 4, 5, 6, 7, 8]
[8, 7, 6, 5, 4, 3, 2, 1]', FALSE, 23) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (125, '10 8 1 9 20 18 25', '[10, 8, 1, 9, 20, 18, 25]
[1, 8, 9, 10, 18, 20, 25]
[1, 9, 8, 18, 25, 20, 10]', TRUE, 23) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (126, '10 9 8', '[10, 9, 8]
[8, 9, 10]
[8, 9, 10]', FALSE, 23) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (127, '10 110 90 9 -8 7', '[10, 9, -8, 7, 110, 90]
[-8, 7, 9, 10, 90, 110]
[7, -8, 9, 90, 110, 10]', FALSE, 23) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (128, '7
1 5 3 2 88 9 2', 'nao', TRUE, 24) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (129, '7
1 5 7 2 88 9 2', 'sim', TRUE, 24) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (130, '-5
1 -2 -5 -8 -9 12', 'sim', FALSE, 24) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (131, '4
4 4 4 4 4 4 4 4', 'sim', FALSE, 24) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (132, '500
499 -500', 'nao', FALSE, 24) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (133, '4
2', 'nao', FALSE, 24) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (134, '2
1 1 1 1 1 1 2', 'sim', FALSE, 24) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (135, '5 7 8 19 -4 67 -89 -99', '-4', TRUE, 25) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (136, '5 7 8 19 6 89 2', '-', TRUE, 25) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (137, '-10', '-10', FALSE, 25) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (138, '8', '-', FALSE, 25) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (139, '1 2 3 4 5 -6', '-6', FALSE, 25) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (140, '5 7 8 19 -4 67 89 99', '4', TRUE, 26) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (141, '5 7 8 19 67 89 99', '-1', TRUE, 26) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (142, '10', '-1', FALSE, 26) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (143, '0 1 2 5 7 9 2', '6', FALSE, 26) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (144, '10 8 1
1 8 10', 'false', TRUE, 27) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (145, '10 12 1
10 1 12', 'true', FALSE, 27) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (146, '10 1 1 1 1 1 1 1 1
1 10 1 1 1 1 1 1 1', 'false', FALSE, 27) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (147, '1 2 3 4 5 6 7 8 9
1 2 3 4 5 6 7 8 9', 'true', FALSE, 27) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (148, '10 8 12 1 19 67 90
10 8 12 1 19 67 90', 'true', FALSE, 27) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (149, '10 8 12 1 19 67 9
10 8 12 1 19 67 999', 'false', FALSE, 27) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (150, '4 5 9 1 2 6 8', '3', TRUE, 28) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (151, '6 2 1 9 3', '4', TRUE, 28) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (152, '1 2 3 4', '1', FALSE, 28) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (153, '4 2 3 1', '4', FALSE, 28) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (154, '(1+((2+3)*(4*5)))', '101', TRUE, 29) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (155, '((7+4)*(3-4))-(2*3)', '-17', TRUE, 29) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (156, '(1+1)', '2', FALSE, 29) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (157, '(7+(3*(1*2)+1)+1)', '15', FALSE, 29) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (158, '1', '1', TRUE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (159, '0', '0', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (160, '2', '1', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (161, '3', '2', TRUE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (162, '4', '3', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (163, '5', '5', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (164, '6', '8', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (165, '7', '13', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (166, '8', '21', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (167, '9', '34', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (168, '10', '55', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (169, '20', '6765', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (170, '30', '832040', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (171, '40', '102334155', FALSE, 30) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (172, '3
print
add 2
element
add 5
print
remove
print 
add 11
add 18
add 20
remove
remove
remove
remove
end', 'empty
2
2 5
5
full
empty', TRUE, 31) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (173, '5
add 1
add 2
add 3
print
end', '1 2 3', TRUE, 31) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (174, '3
add 1
add 2
add 3
remove
print
add 4
add 5
end', '2 3
full', FALSE, 31) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (175, '5
add 1
add 2
add 3
add 4
add 5
add 6
add 7
add 8
remove
element
add 6
print
end', 'full
full
full
2
2 3 4 5 6', FALSE, 31) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (176, '1 13 3 4 5 3 6
3', '1 13 4 5 6', TRUE, 32) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (177, '3 3
3', 'vazia', TRUE, 32) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (178, '9 7 3 5 4 3
0', '9 7 3 5 4 3', FALSE, 32) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (179, '9 7 3 5 4 3
9', '7 3 5 4 3', FALSE, 32) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (180, '3 4 3 2 6 5 4 2 3
3', '4 2 6 5 4 2', FALSE, 32) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (181, '7
1 5 3 2 88 9 2', '0', TRUE, 33) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (182, '7
1 5 7 2 88 9 2', '1', TRUE, 33) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (183, '-5
1 -2 -5 -8 -9 12', '1', FALSE, 33) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (184, '4
4 4 4 4 4 4 4 4', '8', FALSE, 33) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (185, '500
499 -500', '0', FALSE, 33) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (186, '4
2', '0', FALSE, 33) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (187, '2
1 1 1 1 1 1 2', '1', FALSE, 33) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (188, '0 1 2 3 4 5 6 7 8
4', '[4, 0, 1, 2, 3, 5, 6, 7, 8]
[4, 5, 0, 1, 2, 3, 6, 7, 8]
[4, 5, 6, 0, 1, 2, 3, 7, 8]
[4, 5, 6, 7, 0, 1, 2, 3, 8]
[4, 5, 6, 7, 8, 0, 1, 2, 3]', TRUE, 34) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (189, '5 1 7 3 9 10
2', '[7, 5, 1, 3, 9, 10]
[7, 3, 5, 1, 9, 10]
[7, 3, 9, 5, 1, 10]
[7, 3, 9, 10, 5, 1]', TRUE, 34) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (190, '0 1 2
2', '[2, 0, 1]', FALSE, 34) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (191, '9 1 6 2 6
3', '[2, 9, 1, 6, 6]
[2, 6, 9, 1, 6]', FALSE, 34) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (192, '5
put 0
put 14
put 20
put 0
contains 20
remove 20
contains 20
end', '[0, null, null, null, null]
[0, null, null, null, 14]
[0, 20, null, null, 14]
[0, 20, null, null, 14]
true
[0, null, null, null, 14]
false', TRUE, 35) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (193, '3
remove 9
put 6
put 7
put 8
put 9
remove 6
put 9
end', '[null, null, null]
[6, null, null]
[6, 7, null]
[6, 7, 8]
[6, 7, 8]
[null, 7, 8]
[9, 7, 8]', TRUE, 35) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (194, '3
put 0
put 6
put 0
put 6
remove 0
remove 6
end', '[0, null, null]
[0, 6, null]
[0, 6, null]
[0, 6, null]
[null, 6, null]
[null, null, null]', FALSE, 35) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (195, '3
put 0
put 1
put 2
put 0
put 66
remove 0
remove 1
remove 2
remove 3
put 66
end', '[0, null, null]
[0, 1, null]
[0, 1, 2]
[0, 1, 2]
[0, 1, 2]
[null, 1, 2]
[null, null, 2]
[null, null, null]
[null, null, null]
[66, null, null]', FALSE, 35) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (196, '5 2 6 9 11 13', '[2, 5, 6, 9, 11, 13]', TRUE, 36) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (197, '3 1 2 4', '[1, 2, 3, 4]', TRUE, 36) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (198, '14 1 2', '[1, 2, 14]', FALSE, 36) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (199, '2 6 9 11 13 5', '[2, 5, 6, 9, 11, 13]', TRUE, 37) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (200, '1 2 4 3', '[1, 2, 3, 4]', TRUE, 37) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (201, '1 2 -1', '[-1, 1, 2]', FALSE, 37) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (202, '5 0 6 2', '[0, 5, 6, 2]
[0, 5, 6, 2]
[0, 2, 5, 6]', TRUE, 38) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (203, '4 3 2 1', '[3, 4, 2, 1]
[2, 3, 4, 1]
[1, 2, 3, 4]', TRUE, 38) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (204, '1 22 5 34 0 12', '[1, 22, 5, 34, 0, 12]
[1, 5, 22, 34, 0, 12]
[1, 5, 22, 34, 0, 12]
[0, 1, 5, 22, 34, 12]
[0, 1, 5, 12, 22, 34]', FALSE, 38) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (205, '2 3 4 7 9 12', '[2, 3, 4, 7, 9, 12]
[2, 3, 4, 7, 9, 12]
[2, 3, 4, 7, 9, 12]
[2, 3, 4, 7, 9, 12]
[2, 3, 4, 7, 9, 12]', FALSE, 38) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (206, '36 2 6 3 2 15 0', '[2, 36, 6, 3, 2, 15, 0]
[2, 6, 36, 3, 2, 15, 0]
[2, 3, 6, 36, 2, 15, 0]
[2, 2, 3, 6, 36, 15, 0]
[2, 2, 3, 6, 15, 36, 0]
[0, 2, 2, 3, 6, 15, 36]', FALSE, 38) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (207, '1 2 4', '4 2 1', TRUE, 39) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (208, '8 2 1 3 0', '0 3 1 2 8', TRUE, 39) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (209, '0', '0', FALSE, 39) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (210, '9 8 3 3 1', '1 3 3 8 9', FALSE, 39) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (211, 'ola mundo', 'mundo ola', TRUE, 40) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (212, 'mais um exemplo de frase', 'frase de exemplo um mais', TRUE, 40) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (213, 'um teste a mais', 'mais a teste um', FALSE, 40) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (214, 'mais', 'mais', FALSE, 40) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (215, '3
1 2 4', '1
2
4', TRUE, 41) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (216, '5
8 2 1 3 0', '8
2
1
3
0', TRUE, 41) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (217, '5
1 2 4 8 24
2', '-
4
8
24
2
1', TRUE, 42) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (218, '10
8 2 1 3 0 7 2 90 12 74
6', '-
3
0
7
2
90
12
74
1
2
8', TRUE, 42) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (219, '1
8
0', '-
8', FALSE, 42) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (220, '5
2 5 24 7 4
4', '-
2
5
24
7
4', FALSE, 42) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (221, '3
1 2 4', '1
2
4', TRUE, 43) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (222, '5
8 2 1 3 0', '8
2
1
3
0', TRUE, 43) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (223, '11 3 5', 'true', TRUE, 44) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (224, '100 90 120', 'false', TRUE, 44) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (225, '1 7 3 9 10 2 4 3', 'false', FALSE, 44) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (226, '0 1 2', 'false', FALSE, 44) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (227, '100 90 40 30 20 10 8 1 5 -3 -4 -5 -6 -7 -8', 'true', FALSE, 44) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (228, 'print
add 2
element
add 5
print
remove
print
add 11
add 18
add 20
search 18
remove
print
remove
remove
remove
remove
end', 'empty
2
2 5
5
2
11 18 20
empty', TRUE, 45) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (229, 'search 8
add 9
search 9
add 8
search 9
search 8
remove
search 9
end', '-1
0
0
1
-1', TRUE, 45) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (230, 'element
add 9
element
end', 'empty
9', FALSE, 45) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (231, 'add 1
add 2
add 3
print
remove
print
search 3
end', '1 2 3
2 3
1', FALSE, 45) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (232, '1 1
0 0 100', 'Grafo direcionado
listaDeAdjacencia[0] -> (0, 100)
Grafo nao direcionado
listaDeAdjacencia[0] -> (0, 100)', FALSE, 46) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (233, '10 2
1 2 100
2 0 200', 'Grafo direcionado
listaDeAdjacencia[0] ->
listaDeAdjacencia[1] -> (2, 100)
listaDeAdjacencia[2] -> (0, 200)
listaDeAdjacencia[3] ->
listaDeAdjacencia[4] ->
listaDeAdjacencia[5] ->
listaDeAdjacencia[6] ->
listaDeAdjacencia[7] ->
listaDeAdjacencia[8] ->
listaDeAdjacencia[9] ->
Grafo nao direcionado
listaDeAdjacencia[0] -> (2, 200)
listaDeAdjacencia[1] -> (2, 100)
listaDeAdjacencia[2] -> (1, 100) (0, 200)
listaDeAdjacencia[3] ->
listaDeAdjacencia[4] ->
listaDeAdjacencia[5] ->
listaDeAdjacencia[6] ->
listaDeAdjacencia[7] ->
listaDeAdjacencia[8] ->
listaDeAdjacencia[9] ->', FALSE, 46) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (234, '3 2
1 2 1
2 0 1', 'Grafo direcionado
listaDeAdjacencia[0] ->
listaDeAdjacencia[1] -> (2, 1)
listaDeAdjacencia[2] -> (0, 1)
Grafo nao direcionado
listaDeAdjacencia[0] -> (2, 1)
listaDeAdjacencia[1] -> (2, 1)
listaDeAdjacencia[2] -> (1, 1) (0, 1)', TRUE, 46) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (235, '2 3
0 0 100
1 1 200
0 1 300', 'Grafo direcionado
listaDeAdjacencia[0] -> (0, 100) (1, 300)
listaDeAdjacencia[1] -> (1, 200)
Grafo nao direcionado
listaDeAdjacencia[0] -> (0, 100) (1, 300)
listaDeAdjacencia[1] -> (1, 200) (0, 300)', TRUE, 46) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (236, 'Deuses Americanos,Lugar Nenhum,Sandman,Crimes ABC,Carrie,O Pequeno Principe,Sherlock,Neuromancer', 'Deuses Americanos, Lugar Nenhum, Sandman, Crimes ABC, Carrie, O Pequeno Principe, Sherlock, Neuromancer
Deuses Americanos, Lugar Nenhum, Sandman, Crimes ABC, Carrie, O Pequeno Principe, Sherlock, Neuromancer
Deuses Americanos, Lugar Nenhum, Sandman, Crimes ABC, Carrie, O Pequeno Principe, Sherlock, Neuromancer
Crimes ABC, Deuses Americanos, Lugar Nenhum, Sandman, Carrie, O Pequeno Principe, Sherlock, Neuromancer
Carrie, Crimes ABC, Deuses Americanos, Lugar Nenhum, Sandman, O Pequeno Principe, Sherlock, Neuromancer
Carrie, Crimes ABC, Deuses Americanos, Lugar Nenhum, O Pequeno Principe, Sandman, Sherlock, Neuromancer
Carrie, Crimes ABC, Deuses Americanos, Lugar Nenhum, O Pequeno Principe, Sandman, Sherlock, Neuromancer
Carrie, Crimes ABC, Deuses Americanos, Lugar Nenhum, Neuromancer, O Pequeno Principe, Sandman, Sherlock', TRUE, 47) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (237, 'Sandman,Crimes ABC,Carrie', 'Sandman, Crimes ABC, Carrie
Crimes ABC, Sandman, Carrie
Carrie, Crimes ABC, Sandman', TRUE, 47) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (238, 'Carrie,Lugar Nenhum,Deuses Americanos,Sandman,Crimes ABC', 'Carrie, Lugar Nenhum, Deuses Americanos, Sandman, Crimes ABC
Carrie, Lugar Nenhum, Deuses Americanos, Sandman, Crimes ABC
Carrie, Deuses Americanos, Lugar Nenhum, Sandman, Crimes ABC
Carrie, Deuses Americanos, Lugar Nenhum, Sandman, Crimes ABC
Carrie, Crimes ABC, Deuses Americanos, Lugar Nenhum, Sandman', FALSE, 47) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (239, 'Copo de Colera,Sandman,Minority Report,Brindes de Cianureto,Cronicas de Narnia', 'Copo de Colera, Sandman, Minority Report, Brindes de Cianureto, Cronicas de Narnia
Copo de Colera, Sandman, Minority Report, Brindes de Cianureto, Cronicas de Narnia
Copo de Colera, Minority Report, Sandman, Brindes de Cianureto, Cronicas de Narnia
Brindes de Cianureto, Copo de Colera, Minority Report, Sandman, Cronicas de Narnia
Brindes de Cianureto, Copo de Colera, Cronicas de Narnia, Minority Report, Sandman', FALSE, 47) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (240, 'Minority Report,Brindes de Cianureto,Cronicas de Narnia', 'Minority Report, Brindes de Cianureto, Cronicas de Narnia
Brindes de Cianureto, Minority Report, Cronicas de Narnia
Brindes de Cianureto, Cronicas de Narnia, Minority Report', FALSE, 47) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (241, 'a b c d e f g
0 8 0 8 0 0 0
8 0 5 8 0 3 0
0 5 0 0 0 4 2
8 8 0 0 3 3 0
0 0 0 3 0 1 0
0 3 4 3 1 0 5
0 0 2 0 0 5 0
ab
ba
ac
df
op
fim', '8
8
aresta inexistente.
3
aresta inexistente.', TRUE, 48) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (242, 'a b c
0 0 0
0 0 0
0 0 0
a
b
ab
ba
ac
ca
cc
aa
fim', 'aresta inexistente.
aresta inexistente.
aresta inexistente.
aresta inexistente.
aresta inexistente.
aresta inexistente.
aresta inexistente.
aresta inexistente.', FALSE, 48) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (243, 'a b c d f g h
1 2 3 4 5 6 0
1 2 3 4 5 6 0
1 2 3 4 5 6 0
1 2 3 4 5 6 0
1 2 3 4 5 6 0
1 2 3 4 5 6 0
1 2 3 4 5 6 0
as
ab
aa
ah
bh
ch
dh
hd
ha
fim', 'aresta inexistente.
2
1
aresta inexistente.
aresta inexistente.
aresta inexistente.
aresta inexistente.
4
1', FALSE, 48) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (244, '10 8 1 9 20 18 25', '10 20 25', TRUE, 49) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (245, '10', '10', FALSE, 49) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (246, '10 8 9', '10', FALSE, 49) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (247, '10 8 9 1 12', '10 12', FALSE, 49) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (248, '10 12 15 16 18', '10 12 15 16 18', FALSE, 49) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (249, '10 12 15 11', '10 12 15', FALSE, 49) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (250, '9 6 4 2 89 43 5 42 5', '89', TRUE, 50) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (251, '327 123', '327', FALSE, 50) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (252, '3', '3', FALSE, 50) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (253, '8 8 8 8 8 8 8 8', '8', FALSE, 50) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (254, '8 2 33 4 1 5 9 21
3', '21', TRUE, 51) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (255, '8 2 33 4 1 5 9 21
5', '33', FALSE, 51) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (256, '8
0', '8', FALSE, 51) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (257, '8 2 33 4 1 5 9 21
7', '33', FALSE, 51) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (258, '8 2 33 4 1 5 9 21
3', '21', FALSE, 51) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (259, '0 1 2 3 4 5 6 7 8 9 10
4 10', '4', TRUE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (260, '5 1 7 3 9 10 2 4 3
0 3', '0', TRUE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (261, '0 1 2 3 4 5 6 7 8 9 10
1 6', '6', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (262, '0 1 2 3 4 5 6 7 8 9 10
0 8', '8', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (263, '0 1 2 3 4 5 6 7 8 9 10
5 6', '5', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (264, '0 1 2 3 4 5 6 7 8 9 10
6 5', '5', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (265, '0 1 2 3 4 5 6 7 8 9 10
6 6', '6', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (266, '0 1 2 3 4 5 6 7 8 9 10
5 5', '5', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (267, '0 1 2 3 4 5 6 7 8 9 10
1 9', '1', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (268, '0 1 2 3 4 5 6 7 8 9 10
4 7', '4', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (269, '0 1 2 3 4 5 6 7 8 9 10
6 3', '6', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (270, '4 -1 0 3 10 23 40 23 89
0 8', '0', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (271, '4 -1 0 3 10 23 40 23 89
2 8', '2', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (272, '4 -1 0 3 10 23 40 23 89
0 8', '0', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (273, '-4 -1 0 -3 10 23 40 23 89
1 4', '4', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (274, '2 2 2 2 2 2
0 1
0', '0', FALSE, 52) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (275, '1 2 3 4 6 5', '[1, 2, 3, 4, 6, 5]
[1, 2, 3]
[1, 2]
[1]
[2]
[1, 2]
[3]
[1, 2, 3]
[4, 6, 5]
[4, 6]
[4]
[6]
[4, 6]
[5]
[4, 5, 6]
[1, 2, 3, 4, 5, 6]', TRUE, 53) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (276, '7 2 3 1 5', '[7, 2, 3, 1, 5]
[7, 2, 3]
[7, 2]
[7]
[2]
[2, 7]
[3]
[2, 3, 7]
[1, 5]
[1]
[5]
[1, 5]
[1, 2, 3, 5, 7]', TRUE, 53) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (277, '9 3 1 88 2', '[9, 3, 1, 88, 2]
[9, 3, 1]
[9, 3]
[9]
[3]
[3, 9]
[1]
[1, 3, 9]
[88, 2]
[88]
[2]
[2, 88]
[1, 2, 3, 9, 88]', FALSE, 53) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (278, '10 9 8 7 6 5 4 3 2 1', '[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
[10, 9, 8, 7, 6]
[10, 9, 8]
[10, 9]
[10]
[9]
[9, 10]
[8]
[8, 9, 10]
[7, 6]
[7]
[6]
[6, 7]
[6, 7, 8, 9, 10]
[5, 4, 3, 2, 1]
[5, 4, 3]
[5, 4]
[5]
[4]
[4, 5]
[3]
[3, 4, 5]
[2, 1]
[2]
[1]
[1, 2]
[1, 2, 3, 4, 5]
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]', FALSE, 53) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (279, '10 8 1 9 20 18 25', '10 8 1', TRUE, 54) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (280, '10', '10', FALSE, 54) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (281, '10 8 9', '10 8', FALSE, 54) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (282, '10 8 9 1 12', '10 8 1', FALSE, 54) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (283, '10 12', '10', FALSE, 54) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (284, '1 2 4 3 7 90', '[1, 2, 3, 4, 7, 90]', TRUE, 55) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (285, '5 7 8 19 -4 4 1 6 8 12 81 3', '[-4, 5, 7, 8, 19, 4, 1, 6, 8, 12, 81, 3]', TRUE, 55) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (286, '10 14 12 2', '[10, 12, 14, 2]', FALSE, 55) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (287, '-1 0 1 2 5 7 9 3', '[-1, 0, 1, 2, 3, 5, 7, 9]', FALSE, 55) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (288, '1 2 4 90 99 101 7 14 21', '[1, 2, 4, 90, 99, 7, 101, 14, 21]
[1, 2, 4, 90, 7, 99, 101, 14, 21]
[1, 2, 4, 7, 90, 99, 101, 14, 21]
[1, 2, 4, 7, 90, 99, 14, 101, 21]
[1, 2, 4, 7, 90, 14, 99, 101, 21]
[1, 2, 4, 7, 14, 90, 99, 101, 21]
[1, 2, 4, 7, 14, 90, 99, 21, 101]
[1, 2, 4, 7, 14, 90, 21, 99, 101]
[1, 2, 4, 7, 14, 21, 90, 99, 101]', TRUE, 56) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (289, '1 -7 -5 -2 4 90 99 101', '[-7, 1, -5, -2, 4, 90, 99, 101]
[-7, -5, 1, -2, 4, 90, 99, 101]
[-7, -5, -2, 1, 4, 90, 99, 101]', TRUE, 56) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (290, '1 2 3 4 5 6 -3 -2 -1', '[1, 2, 3, 4, 5, -3, 6, -2, -1]
[1, 2, 3, 4, -3, 5, 6, -2, -1]
[1, 2, 3, -3, 4, 5, 6, -2, -1]
[1, 2, -3, 3, 4, 5, 6, -2, -1]
[1, -3, 2, 3, 4, 5, 6, -2, -1]
[-3, 1, 2, 3, 4, 5, 6, -2, -1]
[-3, 1, 2, 3, 4, 5, -2, 6, -1]
[-3, 1, 2, 3, 4, -2, 5, 6, -1]
[-3, 1, 2, 3, -2, 4, 5, 6, -1]
[-3, 1, 2, -2, 3, 4, 5, 6, -1]
[-3, 1, -2, 2, 3, 4, 5, 6, -1]
[-3, -2, 1, 2, 3, 4, 5, 6, -1]
[-3, -2, 1, 2, 3, 4, 5, -1, 6]
[-3, -2, 1, 2, 3, 4, -1, 5, 6]
[-3, -2, 1, 2, 3, -1, 4, 5, 6]
[-3, -2, 1, 2, -1, 3, 4, 5, 6]
[-3, -2, 1, -1, 2, 3, 4, 5, 6]
[-3, -2, -1, 1, 2, 3, 4, 5, 6]', FALSE, 56) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (291, '1 2 3 4 5 6 7 -7 -6 -5 -4 -3 -2', '[1, 2, 3, 4, 5, 6, -7, 7, -6, -5, -4, -3, -2]
[1, 2, 3, 4, 5, -7, 6, 7, -6, -5, -4, -3, -2]
[1, 2, 3, 4, -7, 5, 6, 7, -6, -5, -4, -3, -2]
[1, 2, 3, -7, 4, 5, 6, 7, -6, -5, -4, -3, -2]
[1, 2, -7, 3, 4, 5, 6, 7, -6, -5, -4, -3, -2]
[1, -7, 2, 3, 4, 5, 6, 7, -6, -5, -4, -3, -2]
[-7, 1, 2, 3, 4, 5, 6, 7, -6, -5, -4, -3, -2]
[-7, 1, 2, 3, 4, 5, 6, -6, 7, -5, -4, -3, -2]
[-7, 1, 2, 3, 4, 5, -6, 6, 7, -5, -4, -3, -2]
[-7, 1, 2, 3, 4, -6, 5, 6, 7, -5, -4, -3, -2]
[-7, 1, 2, 3, -6, 4, 5, 6, 7, -5, -4, -3, -2]
[-7, 1, 2, -6, 3, 4, 5, 6, 7, -5, -4, -3, -2]
[-7, 1, -6, 2, 3, 4, 5, 6, 7, -5, -4, -3, -2]
[-7, -6, 1, 2, 3, 4, 5, 6, 7, -5, -4, -3, -2]
[-7, -6, 1, 2, 3, 4, 5, 6, -5, 7, -4, -3, -2]
[-7, -6, 1, 2, 3, 4, 5, -5, 6, 7, -4, -3, -2]
[-7, -6, 1, 2, 3, 4, -5, 5, 6, 7, -4, -3, -2]
[-7, -6, 1, 2, 3, -5, 4, 5, 6, 7, -4, -3, -2]
[-7, -6, 1, 2, -5, 3, 4, 5, 6, 7, -4, -3, -2]
[-7, -6, 1, -5, 2, 3, 4, 5, 6, 7, -4, -3, -2]
[-7, -6, -5, 1, 2, 3, 4, 5, 6, 7, -4, -3, -2]
[-7, -6, -5, 1, 2, 3, 4, 5, 6, -4, 7, -3, -2]
[-7, -6, -5, 1, 2, 3, 4, 5, -4, 6, 7, -3, -2]
[-7, -6, -5, 1, 2, 3, 4, -4, 5, 6, 7, -3, -2]
[-7, -6, -5, 1, 2, 3, -4, 4, 5, 6, 7, -3, -2]
[-7, -6, -5, 1, 2, -4, 3, 4, 5, 6, 7, -3, -2]
[-7, -6, -5, 1, -4, 2, 3, 4, 5, 6, 7, -3, -2]
[-7, -6, -5, -4, 1, 2, 3, 4, 5, 6, 7, -3, -2]
[-7, -6, -5, -4, 1, 2, 3, 4, 5, 6, -3, 7, -2]
[-7, -6, -5, -4, 1, 2, 3, 4, 5, -3, 6, 7, -2]
[-7, -6, -5, -4, 1, 2, 3, 4, -3, 5, 6, 7, -2]
[-7, -6, -5, -4, 1, 2, 3, -3, 4, 5, 6, 7, -2]
[-7, -6, -5, -4, 1, 2, -3, 3, 4, 5, 6, 7, -2]
[-7, -6, -5, -4, 1, -3, 2, 3, 4, 5, 6, 7, -2]
[-7, -6, -5, -4, -3, 1, 2, 3, 4, 5, 6, 7, -2]
[-7, -6, -5, -4, -3, 1, 2, 3, 4, 5, 6, -2, 7]
[-7, -6, -5, -4, -3, 1, 2, 3, 4, 5, -2, 6, 7]
[-7, -6, -5, -4, -3, 1, 2, 3, 4, -2, 5, 6, 7]
[-7, -6, -5, -4, -3, 1, 2, 3, -2, 4, 5, 6, 7]
[-7, -6, -5, -4, -3, 1, 2, -2, 3, 4, 5, 6, 7]
[-7, -6, -5, -4, -3, 1, -2, 2, 3, 4, 5, 6, 7]
[-7, -6, -5, -4, -3, -2, 1, 2, 3, 4, 5, 6, 7]', FALSE, 56) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (292, '1 2 4 90 99 101 7 14 21', '[1, 2, 4, 90, 99, 7, 101, 14, 21]
[1, 2, 4, 90, 7, 99, 101, 14, 21]
[1, 2, 4, 7, 90, 99, 101, 14, 21]
[1, 2, 4, 7, 90, 99, 14, 101, 21]
[1, 2, 4, 7, 90, 14, 99, 101, 21]
[1, 2, 4, 7, 14, 90, 99, 101, 21]
[1, 2, 4, 7, 14, 90, 99, 21, 101]
[1, 2, 4, 7, 14, 90, 21, 99, 101]
[1, 2, 4, 7, 14, 21, 90, 99, 101]', TRUE, 57) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (293, '1 -7 -5 -2 4 90 99 101', '[-7, 1, -5, -2, 4, 90, 99, 101]
[-7, -5, 1, -2, 4, 90, 99, 101]
[-7, -5, -2, 1, 4, 90, 99, 101]', TRUE, 57) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (294, '1 2 3 4 5 6 -3 -2 -1', '[1, 2, 3, 4, 5, -3, 6, -2, -1]
[1, 2, 3, 4, -3, 5, 6, -2, -1]
[1, 2, 3, -3, 4, 5, 6, -2, -1]
[1, 2, -3, 3, 4, 5, 6, -2, -1]
[1, -3, 2, 3, 4, 5, 6, -2, -1]
[-3, 1, 2, 3, 4, 5, 6, -2, -1]
[-3, 1, 2, 3, 4, 5, -2, 6, -1]
[-3, 1, 2, 3, 4, -2, 5, 6, -1]
[-3, 1, 2, 3, -2, 4, 5, 6, -1]
[-3, 1, 2, -2, 3, 4, 5, 6, -1]
[-3, 1, -2, 2, 3, 4, 5, 6, -1]
[-3, -2, 1, 2, 3, 4, 5, 6, -1]
[-3, -2, 1, 2, 3, 4, 5, -1, 6]
[-3, -2, 1, 2, 3, 4, -1, 5, 6]
[-3, -2, 1, 2, 3, -1, 4, 5, 6]
[-3, -2, 1, 2, -1, 3, 4, 5, 6]
[-3, -2, 1, -1, 2, 3, 4, 5, 6]
[-3, -2, -1, 1, 2, 3, 4, 5, 6]', FALSE, 57) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (295, '10
8 2 1 3 0 7 2 90 12 74', '-
0
1
2
2
3
7
8
12
74
90', TRUE, 58) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (296, '5
1 2 24 8 -1', '-
-1
1
2
8
24', TRUE, 58) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (297, 'JCB-8599,NEH-6731,IKZ-8333,MVW-9463,MWW-3683,MWD-3386,MUB-3143,LWJ-5599,HQZ-7220', 'MUB-3143, MWD-3386, MWW-3683, LWJ-5599, NEH-6731, HQZ-7220, IKZ-8333, JCB-8599, MVW-9463', TRUE, 59) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (298, 'NEH-6731,IKZ-8333,HQZ-7220,JCB-8333', 'NEH-6731, HQZ-7220, IKZ-8333, JCB-8333', TRUE, 59) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (299, 'JJI-7913,JMQ-6019,JIA-6751,HOX-6130,KEB-6061,ICA-2077,MNZ-7322,HGY-0265,KAH-9907,IJL-0730,LWG-7034,ALP-3816,NFB-0011,MYB-2457,NCQ-6100,HZQ-9578', 'NFB-0011, HGY-0265, IJL-0730, ICA-2077, MYB-2457, ALP-3816, JMQ-6019, KEB-6061, NCQ-6100, HOX-6130, JIA-6751, LWG-7034, MNZ-7322, JJI-7913, HZQ-9578, KAH-9907', FALSE, 59) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (300, 'JJI-1913,JMQ-6019,JIA-6751,HOX-6019,KEB-6019', 'JJI-1913, JMQ-6019, HOX-6019, KEB-6019, JIA-6751', FALSE, 59) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (301, 'JMQ-6019,JIA-6019,HOX-6019,KEB-6019', 'JMQ-6019, JIA-6019, HOX-6019, KEB-6019', FALSE, 59) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (302, '(())', 'S', TRUE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (303, '))((', 'N', TRUE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (304, '(((((', 'N', FALSE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (305, ')))))', 'N', FALSE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (306, '()', 'S', FALSE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (307, ')', 'N', FALSE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (308, '(', 'N', FALSE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (309, '((()))', 'S', FALSE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (310, '(((()))', 'N', FALSE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (311, '(((())))', 'S', FALSE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (312, '(()))', 'N', FALSE, 60) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (313, '7 1 3 8 19 18 2', '[1, 3, 2, 7, 8, 19, 18]', TRUE, 61) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (314, '1 1 1', '[1, 1, 1]', FALSE, 61) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (315, '0 1 2 3 4 5 6 7 8 9 10', '[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]', FALSE, 61) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (316, '6 2 5 75 24 5 3 6457 4 1 52 34', '[2, 5, 5, 3, 4, 1, 6, 75, 24, 6457, 52, 34]', FALSE, 61) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (317, '8 1 4 3 2 7 3 65 9 43 6 3 12 5 6 8', '[1, 4, 3, 2, 7, 3, 6, 3, 5, 6, 8, 8, 65, 9, 43, 12]', FALSE, 61) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (318, '3 4 9 7 2 8 1 12', '[2, 1, 3, 4, 9, 7, 8, 12]', FALSE, 61) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (319, '4 11 -2 3 9 19 2', '[2, 3, -2, 11, 9, 19, 4]', TRUE, 62) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (320, '9 1 2 3 7 11 -3', '[-3, 1, 2, 3, 7, 11, 9]', TRUE, 62) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (321, '1 1 1', '[1, 1, 1]', FALSE, 62) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (322, '9 8 7 4', '[4, 8, 7, 9]', FALSE, 62) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (323, '4 11 -2 3 9 19 2', '[4, -2, 11, 3, 9, 19, 2]
[4, -2, 3, 11, 9, 19, 2]
[4, -2, 3, 2, 9, 19, 11]
[2, -2, 3, 4, 9, 19, 11]
[2, -2, 3, 4, 9, 19, 11]', TRUE, 63) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (324, '9 1 2 3 7 11 -3', '[9, 1, 2, 3, 7, 11, -3]
[9, 1, 2, 3, 7, 11, -3]
[9, 1, 2, 3, 7, 11, -3]
[9, 1, 2, 3, 7, 11, -3]
[9, 1, 2, 3, 7, -3, 11]
[-3, 1, 2, 3, 7, 9, 11]
[-3, 1, 2, 3, 7, 9, 11]', TRUE, 63) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (325, '9 1 2 3 7 11 -3', '[9, 1, 2, 3, 7, 11, -3]
[9, 1, 2, 3, 7, 11, -3]
[9, 1, 2, 3, 7, 11, -3]
[9, 1, 2, 3, 7, 11, -3]
[9, 1, 2, 3, 7, -3, 11]
[-3, 1, 2, 3, 7, 9, 11]
[-3, 1, 2, 3, 7, 9, 11]', FALSE, 63) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (326, '1 1 1', '[1, 1, 1]
[1, 1, 1]', FALSE, 63) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (327, '9 8 7 4', '[9, 8, 7, 4]
[9, 8, 7, 4]
[9, 8, 7, 4]
[4, 8, 7, 9]
[4, 8, 7, 9]', FALSE, 63) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (328, '9 5 1 8 2 6', '[9, 5, 1, 2, 8, 6]
[2, 5, 1, 9, 8, 6]
[2, 5, 1, 6, 8, 9]
[2, 5, 1, 6, 8, 9]', TRUE, 64) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (329, '9 -1 2 3 7 11 -3
[9, -1, 2, 3, 7, 11, -3]
[9, -1, 2, 3, 7, 11, -3]
[9, -1, 2, 3, 7, 11, -3]
[9, -1, 2, 3, 7, 11, -3]
[9, -1, 2, 3, 7, 11, -3]
[9, -1, 2, 3, 7, 11, -3]
[-3, -1, 2, 3, 7, 11, 9]
[-3, -1, 2, 3, 7, 11, 9]', '[9, -1, 2, 3, 7, 11, -3]
[9, -1, 2, 3, 7, 11, -3]
[9, -1, 2, 3, 7, 11, -3]
[9, -1, 2, 3, 7, 11, -3]
[9, -1, 2, 3, 7, 11, -3]
[9, -1, 2, 3, 7, 11, -3]
[-3, -1, 2, 3, 7, 11, 9]
[-3, -1, 2, 3, 7, 11, 9]', TRUE, 64) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (330, '1', '[1]
[1]', FALSE, 64) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (331, '1 2 3', '[1, 2, 3]
[1, 2, 3]', FALSE, 64) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (332, '3
print
push 2
peek
push 5
peek
print
pop
print
push 11
push 18
push 20
print
pop
pop
pop
pop
end', 'empty
2
5
2 5
2
full
2 11 18
empty', TRUE, 65) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (333, '5
push 1
push 2
push 3
print
end', '1 2 3', TRUE, 65) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (334, '3
push 1
push 2
push 3
pop
print
push 4
push 5
end', '1 2
full', FALSE, 65) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (335, '5
push 1
push 2
push 3
push 4
push 5
push 6
push 7
push 8
pop
peek
push 6
print
end', 'full
full
full
4
1 2 3 4 6', FALSE, 65) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (336, '2
push 1
print
print
end', '1
1', FALSE, 65) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (337, '5 1 2 + 4 * + 3 -', '14.0', TRUE, 66) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (338, '0 0 +', '0.0', FALSE, 66) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (339, '1 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 0 + 0 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 + *', '2025.0', FALSE, 66) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (340, '1 2 + 3 - 4 + 5 - 6 + 7 - 8 + 9 - 0 9 + 8 - 7 + 6 - 5 + 4 - 3 + 2 - 1 + *', '-15.0', FALSE, 66) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (341, '2 2 * 2 * 2 * 2 * 16 /', '2.0', FALSE, 66) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (342, '9 9 * 9 / 3 /', '3.0', TRUE, 66) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (343, '7
1 5 3 2 88 9 2', '-1', TRUE, 67) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (344, '7
1 7 5 7 2 88 9 2', '1 3', TRUE, 67) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (345, '-5
1 -2 -5 -8 -9 12', '2', FALSE, 67) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (346, '4
4 4 4', '0 1 2', FALSE, 67) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (347, '500
499 -500', '-1', FALSE, 67) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (348, '4
2', '-1', FALSE, 67) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (349, '2
1 1 1 1 1 1 2', '6', FALSE, 67) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (350, '3
2', '9', TRUE, 68) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (351, '5
2', '25', TRUE, 68) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (352, '1
1', '1', FALSE, 68) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (353, '1
0', '1', FALSE, 68) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (354, '3
3', '27', FALSE, 68) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (355, '10 8 1 9 20 18 25
10', '[10, 8, 9]', TRUE, 69) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (356, '10 8 1 9 20 18 25
25', '[25, 20]', FALSE, 69) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (357, '90 100 120 110 70 85 71
90', '[90, 70, 85]', FALSE, 69) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (358, '90 100 120 110 70 85 71
85', '[85, 71]', FALSE, 69) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (359, '90 100 120 110 70 85 71
110', '[110, 120, 100]', FALSE, 69) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (360, '10 8 1 9 20 18 25
10', '[10, 8, 1, 9, 20, 18, 25]
3', TRUE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (361, '1 2 3 4 5 6 7 8
1', '[1, 2, 3, 4, 5, 6, 7, 8]
7', FALSE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (362, '1 2 3 4 5 6 7 8
3', '[1, 2, 3, 4, 5, 6, 7, 8]
5', FALSE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (363, '100 80 200 90 150 300 85 170 400 350 320 330
100', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
8', FALSE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (364, '100 80 200 90 150 300 85 170 400 350 320 330
90', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
9', FALSE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (365, '100 80 200 90 150 300 85 170 400 350 320 330
400', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
0', FALSE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (366, '100 80 200 90 150 300 85 170 400 350 320 330
150', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
7', FALSE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (367, '100 80 200 90 150 300 85 170 400 350 320 330
80', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
11', FALSE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (368, '100 80 200 90 150 300 85 170 400 350 320 330
1', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
12', FALSE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (369, '100 80 200 90 150 300 85 170 400 350 320 330
210', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
5', FALSE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (370, '100 80 200 90 150 300 85 170 400 350 320 330
130', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
8', FALSE, 70) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (371, '10 8 1 9 20 18 25
10', '[10, 8, 1, 9, 20, 18, 25]
3', TRUE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (372, '1 2 3 4 5 6 7 8
1', '[1, 2, 3, 4, 5, 6, 7, 8]
0', FALSE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (373, '1 2 3 4 5 6 7 8
3', '[1, 2, 3, 4, 5, 6, 7, 8]
2', FALSE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (374, '100 80 200 90 150 300 85 170 400 350 320 330
100', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
3', FALSE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (375, '100 80 200 90 150 300 85 170 400 350 320 330
90', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
2', FALSE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (376, '100 80 200 90 150 300 85 170 400 350 320 330
400', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
11', FALSE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (377, '100 80 200 90 150 300 85 170 400 350 320 330
150', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
4', FALSE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (378, '100 80 200 90 150 300 85 170 400 350 320 330
80', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
0', FALSE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (379, '100 80 200 90 150 300 85 170 400 350 320 330
1', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
0', FALSE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (380, '100 80 200 90 150 300 85 170 400 350 320 330
210', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
7', FALSE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (381, '100 80 200 90 150 300 85 170 400 350 320 330
130', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
4', FALSE, 71) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (382, '3 1 8 4', '1 3 8 4
1 3 4 8', TRUE, 72) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (383, '1 7 2 6 3', '1 7 2 6 3
1 3 2 6 7
1 2 3 6 7', TRUE, 72) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (384, '1 1 1 1 1', '1 1 1 1 1
1 1 1 1 1
1 1 1 1 1
1 1 1 1 1', FALSE, 72) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (385, '1 2', '1 2', FALSE, 72) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (386, '4 3 2 1', '1 3 2 4
1 3 2 4
1 2 3 4', FALSE, 72) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (387, '8 2 6 1 9 0', '0 2 6 1 8 9
0 2 6 1 8 9
0 1 2 6 8 9', FALSE, 72) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (388, '8936 1238 5434 7564 3244 4532 7456 4235 9853 2736
4', '[4532, 9853, 5434, 7564, 3244, 4235, 8936, 7456, 2736, 1238]
[4532, 5434, 4235, 8936, 2736, 1238, 3244, 9853, 7456, 7564]
[4235, 1238, 3244, 5434, 7456, 4532, 7564, 2736, 9853, 8936]
[1238, 2736, 3244, 4235, 4532, 5434, 7456, 7564, 8936, 9853]', TRUE, 73) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (389, '327 123
3', '[123, 327]
[123, 327]
[123, 327]', FALSE, 73) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (390, '102 498 423 709 673
3', '[102, 423, 673, 498, 709]
[102, 709, 423, 673, 498]
[102, 423, 498, 673, 709]', FALSE, 73) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (391, '7843 5374 2344 8543
4', '[7843, 8543, 2344, 5374]
[2344, 5374, 7843, 8543]', TRUE, 74) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (392, '743625 129846 352349 987654 296483 627435
6', '[743625, 627435, 129846, 352349, 987654, 296483]
[352349, 743625, 296483, 627435, 987654, 129846]
[129846, 296483, 352349, 627435, 743625, 987654]', FALSE, 74) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (393, '11 22 99 77 44
2', '[11, 22, 44, 77, 99]', FALSE, 74) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (394, '784367437 374212343 234493756 785437436
9', '[374212343, 785437436, 784367437, 234493756]
[374212343, 784367437, 785437436, 234493756]
[234493756, 374212343, 784367437, 785437436]', TRUE, 75) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (395, '123 746 342
3', '[123, 342, 746]', FALSE, 75) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (396, '983465 754638 982344 765428
6', '[982344, 765428, 983465, 754638]
[754638, 765428, 982344, 983465]', FALSE, 75) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (397, '10 8 1 9 20 18 25
18 20 10', '[10, 8, 1, 9, 20, 25]
[10, 8, 1, 9, 25]
[25, 8, 1, 9]', TRUE, 76) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (398, '1 2 3 4 5
5 4 3 2 1', '[1, 2, 3, 4]
[1, 2, 3]
[1, 2]
[1]
null', FALSE, 76) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (399, '90 70 100 80 120 71 85 110
100 80 93198', '[90, 70, 80, 71, 85, 120, 110]
[90, 70, 85, 71, 120, 110]
[90, 70, 85, 71, 120, 110]', FALSE, 76) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (400, '1 13 3 4 5
1', '1 3 4 5', TRUE, 77) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (401, '9 7 3 5 4 3
3', '9 7 3 4 3', TRUE, 77) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (402, '9 7 3 5 4 3
0', '7 3 5 4 3', FALSE, 77) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (403, '9 7 3 5 4 3
5', '9 7 3 5 4', FALSE, 77) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (404, '9 4 3 2 6 5 4 2 3
4', '9 4 3 2 5 4 2 3', FALSE, 77) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (405, '10 8 1', 'rot_dir(10)
[8, 1, 10]', TRUE, 78) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (406, '10 8 9', 'rot_esq(8)
[10, 9, 8]
rot_dir(10)
[9, 8, 10]', TRUE, 78) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (407, '10 8 12', 'balanceada', TRUE, 78) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (408, '12 143 9000', 'rot_esq(12)
[143, 12, 9000]', FALSE, 78) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (409, '12 15 13', 'rot_dir(15)
[12, 13, 15]
rot_esq(12)
[13, 12, 15]', FALSE, 78) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (410, '1 2 3 4 6 5', '[1, 2, 3, 4, 6, 5]
[1, 2, 3, 4, 6, 5]
[1, 2, 3, 4, 6, 5]
[1, 2, 3, 4, 6, 5]
[1, 2, 3, 4, 5, 6]', TRUE, 79) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (411, '7 2 3 1 5', '[1, 2, 3, 7, 5]
[1, 2, 3, 7, 5]
[1, 2, 3, 7, 5]
[1, 2, 3, 5, 7]', TRUE, 79) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (412, '9 3 1 88 2', '[1, 3, 9, 88, 2]
[1, 2, 9, 88, 3]
[1, 2, 3, 88, 9]
[1, 2, 3, 9, 88]', FALSE, 79) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (413, '5 0 6 2', '[0, 5, 6, 2]
[0, 2, 6, 5]
[0, 2, 5, 6]', TRUE, 80) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (414, '4 3 2 1', '[1, 3, 2, 4]
[1, 2, 3, 4]', TRUE, 80) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (415, '1 22 5 34 0 12', '[0, 22, 5, 34, 1, 12]
[0, 1, 5, 34, 22, 12]
[0, 1, 5, 12, 22, 34]', FALSE, 80) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (416, '36 2 6 3 2 15 0', '[0, 2, 6, 3, 2, 15, 36]
[0, 2, 2, 3, 6, 15, 36]', FALSE, 80) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (417, '1 2 3 2 1', '3', TRUE, 81) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (418, '1 7 2 2 9 1 9', '7', TRUE, 81) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (419, '1 1 2 2 3', '3', FALSE, 81) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (420, '1', '1', FALSE, 81) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (421, '10 8 1 9 20 18 25', '53', TRUE, 82) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (422, '10 8', '8', FALSE, 82) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (423, '10 8 9', '9', FALSE, 82) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (424, '10 8 9 12', '21', FALSE, 82) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (425, '10 8 9 12 11', '20', FALSE, 82) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (426, '10 8 9 12 11 13', '33', FALSE, 82) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (427, '3 1 8 4 7 11 2', '1 2 3 4 7 8 11', TRUE, 83) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (428, '3 2 1', '1 2 3', FALSE, 83) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (429, '3 2 1 1', '1 1 2 3', FALSE, 83) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (430, '1 1 1', '1 1 1', FALSE, 83) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (431, '5 3 2 1', '1 2 3 5', FALSE, 83) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (432, 'um exemplo de exemplo de texto
um de', 'exemplo exemplo texto', TRUE, 84) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (433, 'outro exemplo de texto para ser analisado
para de', 'outro exemplo texto ser analisado', TRUE, 84) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (434, 'exemplos no extremo
exemplos extremo', 'no', FALSE, 84) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (435, 'sem remoção de nada
para', 'sem remoção de nada', FALSE, 84) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (436, 'removendo quase tudo que eh possivel
removendo tudo que eh possivel', 'quase', FALSE, 84) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (437, '10 8 1 9 20 18 25
10', '[10, 20, 18]', TRUE, 85) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (438, '10 8 1 9 20 18 25
25', '[25, 20, 10]', FALSE, 85) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (439, '90 100 120 110 70 85 71
120', '[120, 100, 90]', FALSE, 85) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (440, '90 100 120 110 70 85 71
85', '[85, 70, 90]', FALSE, 85) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (441, '90 100 120 110 70 85 71
110', '[110, 120]', FALSE, 85) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (442, '1 5 3 2 88 9 2 88', '1,1 5,1 3,1 2,2 88,2 9,1', TRUE, 86) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (443, '1 1 5 7 1', '1,3 5,1 7,1', TRUE, 86) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (444, '0 0 0 0 0 0 0', '0,7', FALSE, 86) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (445, '9 1 2 5 4 7', '9,1 1,1 2,1 5,1 4,1 7,1', FALSE, 86) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (446, '89 89 89 89 89 89', '89,6', FALSE, 86) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (447, '5
keys
values
put 10 joao
keys
values
put 1 carlos
put 11 pedro
put 14 liu
remove 10
put 1 leticia
keys
values
end', '[]
[]
[[<10, joao>], [], [], [], []]
[10]
[joao]
[[<10, joao>], [<1, carlos>], [], [], []]
[[<10, joao>], [<1, carlos>, <11, pedro>], [], [], []]
[[<10, joao>], [<1, carlos>, <11, pedro>], [], [], [<14, liu>]]
[[], [<1, carlos>, <11, pedro>], [], [], [<14, liu>]]
[[], [<1, leticia>, <11, pedro>], [], [], [<14, liu>]]
[1, 11, 14]
[leticia, liu, pedro]', TRUE, 87) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (448, '5
put 1 joao
put 1 carlos
remove 10
remove 1
remove 1
put 0 joao
put 11 alice
put 21 leticia
put 31 aalice
keys
values
end', '[[], [<1, joao>], [], [], []]
[[], [<1, carlos>], [], [], []]
[[], [<1, carlos>], [], [], []]
[[], [], [], [], []]
[[], [], [], [], []]
[[<0, joao>], [], [], [], []]
[[<0, joao>], [<11, alice>], [], [], []]
[[<0, joao>], [<11, alice>, <21, leticia>], [], [], []]
[[<0, joao>], [<11, alice>, <21, leticia>, <31, aalice>], [], [], []]
[0, 11, 21, 31]
[aalice, alice, joao, leticia]', FALSE, 87) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (449, '3
put 0 joao
put 1 maria
put 2 pedro
put 4 leticia
put 5 zeze
put 6 luciano
put 7 mirosmar
keys
values
end', '[[<0, joao>], [], []]
[[<0, joao>], [<1, maria>], []]
[[<0, joao>], [<1, maria>], [<2, pedro>]]
[[<0, joao>], [<1, maria>, <4, leticia>], [<2, pedro>]]
[[<0, joao>], [<1, maria>, <4, leticia>], [<2, pedro>, <5, zeze>]]
[[<0, joao>, <6, luciano>], [<1, maria>, <4, leticia>], [<2, pedro>, <5, zeze>]]
[[<0, joao>, <6, luciano>], [<1, maria>, <4, leticia>, <7, mirosmar>], [<2, pedro>, <5, zeze>]]
[0, 1, 2, 4, 5, 6, 7]
[joao, leticia, luciano, maria, mirosmar, pedro, zeze]', FALSE, 87) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (450, '5
put 0 joao
put 4 leticia
put 20 carlos
put 0 pedro
remove 20
keys
values
end', '[<0, joao>, null, null, null, null]
[<0, joao>, null, null, null, <4, leticia>]
[<0, joao>, <20, carlos>, null, null, <4, leticia>]
[<0, pedro>, <20, carlos>, null, null, <4, leticia>]
[<0, pedro>, null, null, null, <4, leticia>]
[0, 4]
[leticia, pedro]', TRUE, 88) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (451, '3
remove 9
put 6 joao
put 7 julia
put 8 july
put 9 joca
remove 6
put 9 joca
end', '[null, null, null]
[<6, joao>, null, null]
[<6, joao>, <7, julia>, null]
[<6, joao>, <7, julia>, <8, july>]
[<6, joao>, <7, julia>, <8, july>]
[null, <7, julia>, <8, july>]
[<9, joca>, <7, julia>, <8, july>]', TRUE, 88) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (452, '3
put 0 joao
put 6 july
put 0 july
put 6 joao
remove 0
remove 6
end', '[<0, joao>, null, null]
[<0, joao>, <6, july>, null]
[<0, july>, <6, july>, null]
[<0, july>, <6, joao>, null]
[null, <6, joao>, null]
[null, null, null]', FALSE, 88) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (453, '3
put 0 joao
put 1 carlos
put 2 pedro
put 0 joao
put 66 djavan
remove 0
remove 1
remove 2
remove 3
put 66 djavan
end', '[<0, joao>, null, null]
[<0, joao>, <1, carlos>, null]
[<0, joao>, <1, carlos>, <2, pedro>]
[<0, joao>, <1, carlos>, <2, pedro>]
[<0, joao>, <1, carlos>, <2, pedro>]
[null, <1, carlos>, <2, pedro>]
[null, null, <2, pedro>]
[null, null, null]
[null, null, null]
[<66, djavan>, null, null]', FALSE, 88) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (454, '4 2 3', 'T(n) = theta(n**3)', TRUE, 89) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (455, '9 3 2', 'T(n) = theta(n**2 * log n)', TRUE, 89) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (456, '8 8 3', 'T(n) = theta(n**3)', FALSE, 89) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (457, '3 3 1', 'T(n) = theta(n**1 * log n)', FALSE, 89) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (458, '27 3 3', 'T(n) = theta(n**3 * log n)', FALSE, 89) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (459, '9 3 1 7 34 22 101 7 300 1 45
3', '300 101 45', TRUE, 90) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (460, '9 3 1 7 34 22 101 7 300 1 45
4', '300 101 45 34', TRUE, 90) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (461, '1 2 3
3', '3 2 1', FALSE, 90) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (462, '1 9 3 2
1', '9', FALSE, 90) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (463, '2', 'Move o disco 1 da haste A para a haste B
Move o disco 2 da haste A para a haste C
Move o disco 1 da haste B para a haste C', TRUE, 91) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (464, '3', 'Move o disco 1 da haste A para a haste C
Move o disco 2 da haste A para a haste B
Move o disco 1 da haste C para a haste B
Move o disco 3 da haste A para a haste C
Move o disco 1 da haste B para a haste A
Move o disco 2 da haste B para a haste C
Move o disco 1 da haste A para a haste C', FALSE, 91) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (465, '4', 'Move o disco 1 da haste A para a haste B
Move o disco 2 da haste A para a haste C
Move o disco 1 da haste B para a haste C
Move o disco 3 da haste A para a haste B
Move o disco 1 da haste C para a haste A
Move o disco 2 da haste C para a haste B
Move o disco 1 da haste A para a haste B
Move o disco 4 da haste A para a haste C
Move o disco 1 da haste B para a haste C
Move o disco 2 da haste B para a haste A
Move o disco 1 da haste C para a haste A
Move o disco 3 da haste B para a haste C
Move o disco 1 da haste A para a haste B
Move o disco 2 da haste A para a haste C
Move o disco 1 da haste B para a haste C', FALSE, 91) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (466, '5', 'Move o disco 1 da haste A para a haste C
Move o disco 2 da haste A para a haste B
Move o disco 1 da haste C para a haste B
Move o disco 3 da haste A para a haste C
Move o disco 1 da haste B para a haste A
Move o disco 2 da haste B para a haste C
Move o disco 1 da haste A para a haste C
Move o disco 4 da haste A para a haste B
Move o disco 1 da haste C para a haste B
Move o disco 2 da haste C para a haste A
Move o disco 1 da haste B para a haste A
Move o disco 3 da haste C para a haste B
Move o disco 1 da haste A para a haste C
Move o disco 2 da haste A para a haste B
Move o disco 1 da haste C para a haste B
Move o disco 5 da haste A para a haste C
Move o disco 1 da haste B para a haste A
Move o disco 2 da haste B para a haste C
Move o disco 1 da haste A para a haste C
Move o disco 3 da haste B para a haste A
Move o disco 1 da haste C para a haste B
Move o disco 2 da haste C para a haste A
Move o disco 1 da haste B para a haste A
Move o disco 4 da haste B para a haste C
Move o disco 1 da haste A para a haste C
Move o disco 2 da haste A para a haste B
Move o disco 1 da haste C para a haste B
Move o disco 3 da haste A para a haste C
Move o disco 1 da haste B para a haste A
Move o disco 2 da haste B para a haste C
Move o disco 1 da haste A para a haste C', FALSE, 91) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (467, '2
6', '9', TRUE, 92) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (468, '1
10', '20', TRUE, 92) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (469, '100
200', '125', FALSE, 92) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (470, '201
210', '89', FALSE, 92) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (471, '900
1000', '174', FALSE, 92) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (472, '1 13 3 4 5 3 6
1', '13 3 4 5 3', TRUE, 93) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (473, '3 3
1', 'vazia', TRUE, 93) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (474, '9 7 3 5 4 3
0', '9 7 3 5 4 3', FALSE, 93) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (475, '9 7 3 5 4 3
3', 'vazia', FALSE, 93) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (476, '3 4 3 2 6 5 4 2 3
2', '3 2 6 5 4', FALSE, 93) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (477, '1 13 3 4 5', '[13, 1, 4, 3, 5]', TRUE, 94) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (478, '1 7', '[7, 1]', TRUE, 94) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (479, '9 6 3', '[6, 9, 3]', FALSE, 94) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (480, '1 1 1 1 1 1', '[1, 1, 1, 1, 1, 1]', FALSE, 94) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (481, '1', '[1]', FALSE, 94) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (482, '1 13 3 4 5
1', '1 3 13 4 5', TRUE, 95) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (483, '9 7 3 5 4 3
3', '9 7 3 4 5 3', TRUE, 95) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (484, '9 7 3 5 4 3
0', '7 9 3 5 4 3', FALSE, 95) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (485, '9 7 3 5 4 3
4', '9 7 3 5 3 4', FALSE, 95) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (486, '10 8 1 9 20 18 25
23', '[10, 8, 1, 9, 20, 18, 25]
25', TRUE, 96) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (487, '10 8 1 9 20 18 25
17', '[10, 8, 1, 9, 20, 18, 25]
18', TRUE, 96) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (488, '1 2 3 4 5 6 7 8
9', '[1, 2, 3, 4, 5, 6, 7, 8]
8', FALSE, 96) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (489, '1 2 3 4 5 6 7 8
0', '[1, 2, 3, 4, 5, 6, 7, 8]
1', FALSE, 96) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (490, '100 80 200 90 150 300 85 170 400 350 320 330
301', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
300', FALSE, 96) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (491, '100 80 200 90 150 300 85 170 400 350 320 330
321', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
320', FALSE, 96) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (492, '100 80 200 90 150 300 85 170 400 350 320 330
149', '[100, 80, 90, 85, 200, 150, 170, 300, 400, 350, 320, 330]
150', FALSE, 96) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (493, '4 5 6 1
6', '4 5 6 1 4 5', TRUE, 97) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (494, '3 4 2
8', '3 4 2 3 4 2 3 4', TRUE, 97) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (495, '1
4', '1 1 1 1', FALSE, 97) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (496, '3 5 6 8 1 2
3', '3 5 6', FALSE, 97) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (497, '9 4 5 6 5
10', '9 4 5 6 5 9 4 5 6 5', FALSE, 97) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (498, '2
2 4 6', '4 8 12', TRUE, 98) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (499, '7
2 1 3', '14 7 21', TRUE, 98) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (500, '3
3', '9', FALSE, 98) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (501, '10
10 20 30', '100 200 300', FALSE, 98) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (502, '-1
1 2 3 4', '-1 -2 -3 -4', FALSE, 98) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (503, '-1
-1 2', '1 -2', FALSE, 98) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (504, 'um exemplo de exemplo de texto
um
exemplo
texto
de
fim', '1
2
1
2', TRUE, 99) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (505, 'um exemplo com freq um
um
exemplo
com
freq
um
fim', '2
1
1
1
2', TRUE, 99) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (506, 'mais mais mais mais mais mais mai
mais
mai
fim', '6
1', FALSE, 99) ON CONFLICT DO NOTHING;
INSERT INTO tests (id, input, output, is_public, question_id) VALUES (507, 'para para nao nao para nao
para
para
nao
nao
fim', '3
3
3
3', FALSE, 99) ON CONFLICT DO NOTHING;

-- === question_topics ===
INSERT INTO question_topics (question_id, topic_id) VALUES (1, 4) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (1, 20) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (1, 7) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (1, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (2, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (2, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (3, 4) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (3, 13) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (3, 7) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (4, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (4, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (5, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (5, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (5, 7) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (5, 27) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (5, 15) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (6, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (6, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (6, 7) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (6, 27) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (6, 15) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (7, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (8, 25) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (8, 4) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (8, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (9, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (9, 9) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (9, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (10, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (10, 9) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (10, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (10, 41) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (11, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (11, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (11, 10) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (12, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (12, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (12, 9) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (12, 41) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (13, 20) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (13, 4) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (14, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (14, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (15, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (15, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (16, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (17, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (18, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (18, 18) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (18, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (19, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (19, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (19, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (20, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (20, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (21, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (21, 18) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (21, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (22, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (22, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (22, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (22, 18) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (23, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (23, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (23, 39) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (23, 14) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (23, 38) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (24, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (25, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (25, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (25, 41) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (26, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (26, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (26, 41) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (27, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (27, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (28, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (28, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (28, 35) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (29, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (29, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (30, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (30, 41) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (31, 19) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (31, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (32, 30) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (33, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (34, 19) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (34, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (35, 22) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (35, 23) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (35, 48) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (35, 40) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (35, 24) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (36, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (37, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (38, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (38, 41) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (39, 2) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (39, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (40, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (40, 18) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (40, 47) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (40, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (41, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (42, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (43, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (44, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (44, 25) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (44, 4) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (45, 19) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (45, 29) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (46, 20) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (47, 26) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (47, 45) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (47, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (48, 22) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (48, 23) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (48, 20) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (48, 48) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (48, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (48, 18) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (49, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (49, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (50, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (50, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (51, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (51, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (52, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (52, 35) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (53, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (54, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (54, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (55, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (55, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (56, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (56, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (56, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (57, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (57, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (57, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (58, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (58, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (59, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (60, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (61, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (61, 35) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (62, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (62, 35) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (62, 33) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (63, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (63, 35) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (64, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (64, 35) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (64, 33) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (64, 31) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (65, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (65, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (66, 37) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (66, 36) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (66, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (66, 46) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (66, 42) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (67, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (68, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (68, 41) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (69, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (69, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (70, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (70, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (71, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (71, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (72, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (73, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (73, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (73, 28) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (74, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (74, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (74, 28) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (75, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (75, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (75, 28) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (76, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (76, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (77, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (77, 30) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (78, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (78, 6) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (78, 44) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (78, 43) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (78, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (79, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (79, 41) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (80, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (81, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (81, 18) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (81, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (82, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (82, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (83, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (84, 50) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (84, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (85, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (85, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (86, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (86, 28) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (86, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (86, 18) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (87, 22) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (87, 23) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (87, 48) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (87, 17) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (87, 11) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (88, 22) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (88, 23) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (88, 48) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (88, 16) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (88, 40) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (89, 49) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (90, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (90, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (90, 32) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (91, 34) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (91, 21) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (92, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (92, 18) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (92, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (93, 30) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (94, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (94, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (94, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (95, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (95, 30) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (96, 5) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (96, 8) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (97, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (97, 18) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (97, 3) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (97, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (98, 50) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (98, 1) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (99, 22) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (99, 23) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (99, 48) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (99, 12) ON CONFLICT DO NOTHING;
INSERT INTO question_topics (question_id, topic_id) VALUES (99, 18) ON CONFLICT DO NOTHING;

-- === reset das sequences (evita colisão com futuros INSERTs) ===
SELECT setval(pg_get_serial_sequence('topics', 'id'), COALESCE((SELECT MAX(id) FROM topics), 1));
SELECT setval(pg_get_serial_sequence('questions', 'id'), COALESCE((SELECT MAX(id) FROM questions), 1));
SELECT setval(pg_get_serial_sequence('tests', 'id'), COALESCE((SELECT MAX(id) FROM tests), 1));

COMMIT;