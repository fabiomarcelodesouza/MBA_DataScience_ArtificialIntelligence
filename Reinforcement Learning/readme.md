# Desafio de Aprendizado por Reforço - Solução para empresa de logística que opera uma frota de robôs de entrega autônomos
## Sumário
- [Desafio](#Desafio)
	- [Contexto](#contexto)
	- [Objetivo](#Objetivo)
	- [Tarefas](#Tarefas)
	- [Critérios de avaliação](#Criterios)
- [Implementação](#Implementacao)
	- [Requerimentos](#Requerimentos)
	- [Descrição da aplicação](#DescricaoAplicacao)
	- [Ambiente](#Ambiente)
	- [Agente](#Agente)
	- [Treinamento](#Treinamento)
	- [Visualização Gráfica](#VisualizacaoGrafica)
	- [Parâmetros Configuráveis](#ParametrosConfiguraveis)
	- [Resultado Final](#ResultadoFinal)
	- [Código Fonte](#CodigoFonte)
		- [Enviroment.py](#Enviroment.py)
		- [Agent.py](#Agent.py)
		- [QTable.py](#QTable.py)
		- [Main](#Main.py)

<a id="Desafio"></a>
# Desafio
<a id="Contexto"></a>
## Contexto:
Imagine que você está trabalhando em uma empresa de logística que opera uma frota de robôs de entrega autônomos. Sua tarefa é implementar um algoritmo de aprendizado por reforço para otimizar a entrega de pacotes em um ambiente simulado. Os robôs têm a capacidade de se mover em um ambiente em grade 2D e devem aprender a tomar decisões sobre para onde se mover para entregar pacotes de forma eficiente.

<a id="Objetivo"></a>
## Objetivo:
O objetivo do desafio é implementar um agente de aprendizado por reforço usando ténicas como por exemplo Q-Table, equação de Bellman, ε-greedy e etc, para maximizar o retorno cumulativo ao entregar pacotes no menor tempo possível, considerando um "living penalty" para incentivar o agente a ser eficiente.

<a id="Tarefas"></a>
## Tarefas:
1.	Modelagem do ambiente: Crie um ambiente 2D simulado, onde o agente pode se mover em um grid. Considere que o ambiente tem obstáculos e pontos de entrega de pacotes.
2.	Definição do MDP: Modele o problema como um MDP, definindo os estados, as ações, as recompensas, a função de transição e o fator de desconto.
3.	Implementação da Q-Table: Crie uma Q-Table para representar o valor estimado de cada par (estado, ação).
4.	Implementação do agente: Desenvolva um agente de aprendizado por reforço que utiliza a equação de Bellman para atualizar a Q-Table com base nas recompensas recebidas ao longo do tempo.
5.	Living Penalty: Introduza um "living penalty" para penalizar o agente por gastar muito tempo no ambiente. Isso deve incentivar o agente a encontrar a rota mais eficiente para entregar os pacotes.
6.	Treinamento e avaliação: Treine o agente usando um algoritmo de aprendizado por reforço, como o Q-Learning, e avalie seu desempenho em termos de eficiência na entrega de pacotes.

<a id="Criterios"></a>
## Critérios de Avaliação:
Os alunos serão avaliados com base nos seguintes critérios:
1.	Implementação correta do ambiente, MDP e Q-Table.
2.	Implementação do algoritmo de aprendizado por reforço (Q-Learning ou similar).
3.	Introdução e configuração adequada do "living penalty".
4.	Eficiência do agente na entrega de pacotes.
5.	Documentação clara e código bem comentado em Python.

<a id="Implementacao"></a>
# Implementação

<a id="Requerimentos"></a>
## Requerimentos
| Linguagem        | Bibliotecas       | Versão       |
|------------------|-------------------|--------------|
| Python 3.11.5    | contourpy         | 1.2.0        |
|                  | cycler            | 0.12.1       |
|                  | fonttools         | 4.46.0       |
|                  | kiwisolver        | 1.4.5        |
|                  | matplotlib        | 3.8.2        |
|                  | numpy             | 1.26.2       |
|                  | packaging         | 23.2         |
|                  | Pillow            | 10.1.0       |
|                  | pyparsing         | 3.1.1        |
|                  | python-dateutil   | 2.8.2        |
|                  | six               | 1.16.0       |

[![Open in GitHub Codespaces](https://img.shields.io/static/v1?style=for-the-badge&label=GitHub+Codespaces&message=Open&color=brightgreen&logo=github)](https://codespaces.new/fabiomarcelodesouza/reinforcement_learning_ambiente_2d/tree/main)

<a id="DescricaoAplicacao"></a>
## Descrição da aplicação
Essa aplicação implementa um ambiente 2D para treinamento de aprendizado por reforço, utilizando um agente que interage com esse ambiente. Segue abaixo uma descrição detalhada:

<a id="Ambiente"></a>
### Ambiente:
O ambiente é um labirinto 2D com obstáculos e pontos de entrega.
O agente inicia em uma posição específica no labirinto.
Existem obstáculos que o agente deve evitar e pontos de entrega que o agente deve alcançar.

<a id="Agente"></a>
### Agente:
Um agente é criado para navegar no ambiente.
O agente toma decisões (ações) com base no estado atual do ambiente para maximizar as recompensas acumuladas ao longo do tempo.
O agente utiliza uma tabela Q para aprender e otimizar suas decisões.

<a id="Treinamento"></a>
### Treinamento:
O agente passa por um processo de treinamento em vários episódios.
Em cada episódio, o agente interage com o ambiente, escolhendo ações com base em uma política epsilon-greedy.
O agente aprende com as recompensas recebidas e atualiza sua tabela Q usando a equação de Bellman.

<a id="VisualizacaoGrafica"></a>
### Visualização Gráfica:
Durante o treinamento, uma representação gráfica do ambiente é exibida.
O agente é visualizado no gráfico à medida que se move pelo labirinto.
Um gráfico animado mostra o progresso do agente, destacando suas posições e recompensas ao longo do tempo.

<a id="ParametrosConfiguraveis"></a>
### Parâmetros Configuráveis:
Diversos parâmetros são configuráveis, como tamanho do ambiente, localização de obstáculos e pontos de entrega, taxa de aprendizado (alpha), fator de desconto (gamma), e taxa de exploração (epsilon).

<a id="ResultadoFinal"></a>
### Resultado Final:
O treinamento é concluído após um número especificado de episódios.
O resultado final inclui a exibição gráfica do labirinto com o agente, mostrando como o agente aprendeu a navegar no ambiente ao longo do tempo.
Essencialmente, a aplicação simula um cenário de aprendizado por reforço em um ambiente 2D, onde um agente procura otimizar suas ações para maximizar recompensas, representando um exemplo simples de como algoritmos de aprendizado por reforço podem ser aplicados em problemas práticos.

<a id="CodigoFonte"></a>
## Código Fonte:

<a id="Enviroment.py"></a>
### Enviroment.py
Classe que representa o ambiente para um problema de entrega.
- Attributes:
    - ambient_size (tuple): Tamanho do ambiente, representado como (largura, altura).
    - obstacles_points (list): Lista de coordenadas dos pontos de obstáculos no ambiente.
    - delivery_points (list): Lista de coordenadas dos pontos de entrega no ambiente.
    - agent_position (tuple): Posição atual do agente no ambiente.
    - maze (numpy.ndarray): Matriz representando o ambiente com obstáculos (1) e pontos de entrega (2).
    - fig (matplotlib.figure.Figure): Objeto de figura para visualização gráfica do ambiente.
    - ax (matplotlib.axes._subplots.AxesSubplot): Eixo para visualização gráfica do ambiente.

- Methods:
    - __init__(ambient_size, obstacles_points, delivery_points): Inicializa o ambiente com o tamanho, obstáculos e pontos de entrega dados.
    - is_valid_move(move): Verifica se um movimento é válido no ambiente.
    - take_action(action): Realiza uma ação no ambiente, simulando o movimento do agente e fornecendo uma recompensa.
<a id="Agent.py"></a>
### Agent.py
Classe que representa um agente para aprendizado por reforço.
- Attributes:
	- q_table (QTable): Tabela Q utilizada pelo agente para tomar decisões.

- Methods:
	- __init__(ambient_size, actions): Inicializa um agente com uma tabela Q baseada no tamanho do ambiente e nas ações disponíveis.
	- learn(state, action, reward, next_state, alpha, gamma): Atualiza a tabela Q do agente com informações sobre a transição de estado.
	- choose_action(state, epsilon, actions): Escolhe uma ação com base no estado atual, usando a tabela Q do agente e uma política epsilon-greedy.

<a id="QTable.py"></a>
### QTable.py
Classe que representa uma tabela Q para aprendizado por reforço.
- Attributes:
	- q_table (numpy.ndarray): Tabela Q que armazena os valores Q para cada estado e ação.

- Methods:
	- __init__(ambient_size, actions): Inicializa a tabela Q com base no tamanho do ambiente e no número de ações disponíveis.
	- update(state, action, reward, next_state, alpha, gamma): Atualiza a tabela Q usando a equação de Bellman.
	- choose_action(state, epsilon, actions): Escolhe uma ação com base no estado atual usando uma política epsilon-greedy.

<a id="Main.py"></a>
### Main.py
Arquivo python onde são definidos os parâmetros configuráveis, instanciados os objetos de agente e ambiente, executada a função train() de acordo com o número de episódios configurado e exibido o resultado gráfico final.
![image](https://github.com/fabiomarcelodesouza/reinforcement_learning_ambiente_2d/assets/115677711/0795e5d7-320c-4d95-9f61-11930f44e579)
