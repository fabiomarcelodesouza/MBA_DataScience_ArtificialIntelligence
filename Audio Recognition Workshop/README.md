# Disciplina: Audio Recognition Workshop

- [Disciplina: Audio Recognition Workshop](#disciplina-audio-recognition-workshop)
  - [Professor: Alexandre Gastaldi ](#professor-alexandre-gastaldi-)
  - [Conteúdo da Disciplina](#conteúdo-da-disciplina)
- [Cases Desenvolvidos](#cases-desenvolvidos)
  - [Case: Projeto Integrado - Quantum Finance](#case-projeto-integrado---quantum-finance)
    - [Descricao do Case:](#descricao-do-case)
    - [Integrantes da Equipe](#integrantes-da-equipe)
    - [Ferramentas e Tecnologias Utilizadas](#ferramentas-e-tecnologias-utilizadas)
    - [Entregas Realizadas](#entregas-realizadas)

## Professor: Alexandre Gastaldi [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/alexandregastaldifernandes/)

## Conteúdo da Disciplina
1. Evolução, conceitos e definições
2. Prognósticos e mercado
3. Aplicações e exemplos de sucesso
4. Considerações e melhores práticas
5. Exercícios práticos
6. Trabalho final

# Cases Desenvolvidos
## Case: Projeto Integrado - Quantum Finance
### Descricao do Case:
Chegou o momento da QuantumFinance dar voz ao seu atendimento digital. A ideia é permitir que um cliente interaja por meio de voz também e não somente por texto com a empresa. Dessa forma, será necessário implementar a vocalização de frases pré-determinadas (Text To Speech), para saudar e oferecer as opções ao cliente e Speech To Text para identificar a opção selecionada. 

### Integrantes da Equipe
1. Fabio Souza [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/fabiomarcelosouza/)
2. Felipe Scudeller [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-scudeller/)
3. Victor Galvão [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/victor-galv%C3%A3o-74b63410a/)

### Ferramentas e Tecnologias Utilizadas
1. **Python [![Python](https://img.shields.io/badge/Python-Programming-yellow?style=flat-square&logo=python)](https://www.python.org/)**
   - Python é uma linguagem de programação de alto nível, interpretada e de propósito geral, amplamente utilizada em ciência de dados, desenvolvimento web, automação, entre outros.
   - É conhecida por sua sintaxe simples e legibilidade, tornando-a ideal para iniciantes e profissionais.
   - Possui uma vasta biblioteca padrão e uma grande variedade de pacotes de terceiros para diferentes fins.

2. **Jupyter Notebook [![Jupyter Notebook](https://img.shields.io/badge/Jupyter_Notebook-Interactive_Computing-orange?style=flat-square&logo=jupyter)](https://jupyter.org/)**
   - Jupyter Notebook é uma aplicação web de código aberto que permite criar e compartilhar documentos interativos que contêm código, visualizações e texto explicativo.
   - É amplamente utilizado em ciência de dados e pesquisa acadêmica para prototipagem rápida, exploração de dados, experimentação e apresentação.
   - Suporta várias linguagens de programação, incluindo Python, R, Julia e Scala, entre outras.

3. **Google Colab [![Google Colab](https://img.shields.io/badge/Google_Colab-Notebooks-orange?style=flat-square&logo=google-colab)](https://colab.research.google.com/)**
   - Google Colab é uma plataforma gratuita baseada na nuvem que permite escrever e executar códigos Python diretamente no navegador, sem a necessidade de configuração local.
   - Ele fornece acesso gratuito a GPUs e TPUs, facilitando a execução de modelos de aprendizado de máquina e experimentos de computação intensiva.
   - É especialmente útil para prototipagem rápida, colaboração e compartilhamento de notebooks Jupyter.

4. **numpy [![numpy](https://img.shields.io/badge/numpy-Scientific_Computing-blue?style=flat-square&logo=numpy)](https://numpy.org/)**
   - NumPy é uma biblioteca fundamental para computação científica em Python.
   - Fornece suporte para arrays multidimensionais e operações matemáticas de alto nível para manipulação de dados.
   - É amplamente utilizado em áreas como processamento de sinais, álgebra linear, estatísticas, entre outras.

5. **scipy [![scipy](https://img.shields.io/badge/scipy-Scientific_Computing-blue?style=flat-square&logo=scipy)](https://www.scipy.org/)**
   - SciPy é uma biblioteca open-source de ferramentas e algoritmos matemáticos para Python.
   - Construído sobre o NumPy, fornece rotinas eficientes para otimização, integração numérica, interpolação, álgebra linear e muito mais.
   - É amplamente utilizado em ciência, engenharia e computação técnica.

6. **gtts [![gtts](https://img.shields.io/badge/gtts-Text_to_Speech-yellow?style=flat-square&logo=google)](https://gtts.readthedocs.io/en/latest/)**
   - gTTS (Google Text-to-Speech) é uma biblioteca Python para conversão de texto em fala.
   - Permite gerar arquivos de áudio a partir de texto com várias opções de idiomas e vozes.
   - É útil para aplicações de assistência de voz, automação de tarefas, entre outros.

7. **numpy.lib**
   - numpy.lib é um módulo da biblioteca NumPy que fornece funcionalidades adicionais e utilitários para manipulação de arrays.
   - Inclui funções para operações de indexação avançadas, manipulação de polinômios, transformações de Fourier, entre outros.
   - É uma extensão poderosa para o NumPy, oferecendo recursos adicionais para usuários avançados.

8. **re [![re](https://img.shields.io/badge/re-Regular_Expressions-yellow?style=flat-square)](https://docs.python.org/3/library/re.html)**
   - O módulo re é uma parte padrão da biblioteca padrão do Python que fornece suporte para operações de expressões regulares.
   - Permite pesquisar, manipular e processar strings com padrões complexos de texto.
   - É amplamente utilizado em análise de texto, validação de entrada, extração de informações, entre outros.

9. **IPython.display**
   - IPython.display é um módulo que oferece recursos para exibir conteúdo rico em notebooks Jupyter.
   - Permite exibir objetos HTML, áudio, vídeo, imagens e outros tipos de mídia diretamente nos notebooks.
   - Facilita a criação de documentos interativos e visuais.

10. **ffmpeg [![ffmpeg](https://img.shields.io/badge/ffmpeg-Multimedia_Processing-red?style=flat-square&logo=ffmpeg)](https://ffmpeg.org/)**
   - ffmpeg é uma biblioteca e conjunto de programas para manipulação de áudio, vídeo e outros tipos de mídia.
   - Oferece uma ampla gama de recursos para conversão de formatos, edição, streaming, gravação e muito mais.
   - É amplamente utilizado em pipelines de processamento de mídia e automação de tarefas relacionadas à multimídia.

11. **speech_recognition [![speech_recognition](https://img.shields.io/badge/speech_recognition-Speech_Recognition-blue?style=flat-square)](https://github.com/Uberi/speech_recognition)**
   - A biblioteca speech_recognition é uma interface para reconhecimento de fala em Python.
   - Suporta vários mecanismos de reconhecimento, incluindo Google Speech Recognition, Sphinx, entre outros.
   - É útil para criar aplicativos de controle por voz, transcrição de áudio, automação de tarefas baseadas em voz, entre outros.

### Entregas Realizadas
1. `SOLUCAO_SCRIPT_VIDEO.txt` - Arquivo texto com instruções sobre o que foi desenvolvido
2. `[Ciência_de_dados]_Speech_to_Text_Atendimento_telefonico.ipynb` - Jupyter Notebook com a solução dos problemas propostos