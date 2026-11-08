# cp2425t - Cálculo de Programas

Projeto prático desenvolvido no âmbito da unidade curricular de Cálculo de Programas (3.º ano da Licenciatura em Engenharia Informática) na Universidade do Minho.

## Sobre o Projeto

Este repositório contém a resolução de problemas algorítmicos utilizando o paradigma de programação funcional em Haskell, combinando uma forte componente teórica com a aplicação prática de combinadores (catamorfismos, anamorfismos e hilomorfismos). A metodologia de desenvolvimento segue o princípio de **Programação Literária (Literate Programming)**, onde o código fonte e a documentação coexistem num único ficheiro `.lhs`, permitindo a extração simultânea do código executável e da documentação técnica (em formato PDF).

O projeto aborda os seguintes problemas principais:
1. **H-index de um Histograma:** Cálculo eficiente utilizando um hilomorfismo de listas.
2. **Árvore de Primos:** Geração de uma árvore a partir da fatorização prima de uma lista de inteiros, otimizando o processo de fatorização e utilizando a biblioteca `Exp.hs`.
3. **Convolução de Listas:** Implementação da convolução discreta de duas listas através de um hilomorfismo que gera e combina janelas de valores.
4. **Avaliação de Expressões Numéricas:** Construção de uma biblioteca monádica para avaliar árvores de expressões que incluem operações aritméticas e condicionais (if-then-else), lidando com variáveis e possíveis erros (como aridades inválidas).

## Stack Tecnológica

* **Linguagem Principal:** Haskell (GHC)
* **Documentação & Programação Literária:** LaTeX, lhs2TeX, pdflatex, BibTeX, MakeIndex
* **Ferramentas de Diagramação:** Xy-pic (para LaTeX), circuitikz
* **Ambiente de Execução:** Docker (garantindo um ambiente reprodutível e isolado para as dependências de LaTeX e Haskell)

## Arquitetura do Projeto e Resolução

O núcleo do projeto está contido no ficheiro **`cp2425t.lhs`**, que é estruturado em várias secções, cada uma correspondente a um problema. A resolução enfatiza a escrita de código "pointfree" e a reutilização de bibliotecas algébricas fornecidas:

*   **Bibliotecas Reutilizadas:** 
    *   `List.hs`, `Nat.hs`, `BTree.hs`, `LTree.hs`, `FTree.hs`: Definem os tipos de dados básicos e os respetivos combinadores de base (ana, cata, hylo).
    *   `Exp.hs`: Biblioteca central para a manipulação de expressões (Problema 2 e 4).
    *   `Cp.hs`, `RelCalc.hs`: Funções e combinadores auxiliares de Cálculo de Programas.

*   **Abordagem Literária:** O relatório técnico (`cp2425t.pdf`) e o código fonte partilham a mesma base. Ao longo do relatório, são apresentados e descritos detalhadamente os genes concebidos para os (hilo)morfismos de cada problema, apoiados visualmente por **diagramas comutativos**.

## Como Executar e Compilar (via Docker)

Para evitar conflitos de dependências (Haskell e ferramentas TeX), o projeto inclui uma configuração Dockerizada completa. 

### 1. Construir e Iniciar o Container
Na raiz do repositório, constrói a imagem e inicia o container com um volume partilhado (para que as tuas edições locais reflitam dentro do container):

    docker build -t cp2425t .
    docker run -v ${PWD}:/cp2425t -it cp2425t

### 2. Executar o Código Haskell (GHCi)
Dentro do container, podes abrir o REPL (Read-Eval-Print Loop) do Haskell e testar diretamente o ficheiro Literate Haskell:

    ghci cp2425t.lhs

### 3. Gerar a Documentação em PDF
Ainda dentro do container, podes utilizar o Makefile incluído para processar o ficheiro `.lhs`, extrair o código LaTeX e gerar o relatório final `cp2425t.pdf`:

    make full

O comando `make full` executa sequencialmente `lhs2TeX`, `pdflatex`, `bibtex` e `makeindex`, garantindo que toda a formatação, bibliografia e índices remissivos são corretamente gerados.

## Estrutura de Diretórios

*   `cp2425t.lhs`: O ficheiro principal de Programação Literária (contém código e relatório).
*   `Dockerfile`: Configuração do ambiente Docker (Ubuntu com GHCup, LaTeX, lhs2tex, etc.).
*   `Makefile`: Automação da compilação do relatório.
*   `*.hs` (`Cp.hs`, `Exp.hs`, `Nat.hs`, etc.): Bibliotecas auxiliares base da UC de Cálculo de Programas.
*   `cp2425t_media/`: Diretório contendo as imagens e figuras (PNG, JPG) utilizadas no relatório LaTeX.
*   `cp2425t.sty`, `cp2425t.bib`: Ficheiros de estilo e de bibliografia para o LaTeX.

## Licença

Projeto desenvolvido para fins académicos.
