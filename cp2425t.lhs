\documentclass[11pt, a4paper, fleqn]{article}
\usepackage{cp2425t}
\makeindex

%================= lhs2tex=====================================================%
%include polycode.fmt
%format (div (x)(y)) = x "\div " y
%format succ = "\succ "
%format ==> = "\Longrightarrow "
%format map = "\map "
%format length = "\length "
%format fst = "\p1"
%format p1  = "\p1"
%format snd = "\p2"
%format p2  = "\p2"
%format Left = "i_1"
%format Right = "i_2"
%format i1 = "i_1"
%format i2 = "i_2"
%format >< = "\times"
%format >|<  = "\bowtie "
%format |-> = "\mapsto"
%format . = "\comp "
%format .=?=. = "\mathbin{\stackrel{\mathrm{?}}{=}}"
%format (kcomp (f)(g)) = f "\kcomp " g
%format -|- = "+"
%format conc = "\mathsf{conc}"
%format summation = "{\sum}"
%format (either (a) (b)) = "\alt{" a "}{" b "}"
%format (frac (a) (b)) = "\frac{" a "}{" b "}"
%format (uncurry f) = "\uncurry{" f "}"
%format (const (f)) = "\underline{" f "}"
%format TLTree = "\mathsf{TLTree}"
%format (Seq (a)) = "{" a "}^{*}"
%format (lcbr (x)(y)) = "\begin{lcbr}" x "\\" y "\end{lcbr}"
%format (lcbr3 (x)(y)(z)) = "\begin{lcbr}" x "\\" y "\\" z "\end{lcbr}"
%format (split (x) (y)) = "\conj{" x "}{" y "}"
%format (for (f) (i)) = "\for{" f "}\ {" i "}"
%format B_tree = "\mathsf{B}\mbox{-}\mathsf{tree} "
%format <$> = "\mathbin{\mathopen{\langle}\$\mathclose{\rangle}}"
%format Either a b = a "+" b
%format fmap = "\mathsf{fmap}"
%format NA   = "\textsc{na}"
%format NB   = "\textbf{NB}"
%format inT = "\mathsf{in}"
%format outT = "\mathsf{out}"
%format outLTree = "\mathsf{out}"
%format inLTree = "\mathsf{in}"
%format inFTree = "\mathsf{in}"
%format outFTree = "\mathsf{out}"
%format Null = "1"
%format (Prod (a) (b)) = a >< b
%format fF = "\fun F "
%format l2 = "l_2 "
%format Dist = "\fun{Dist}"
%format IO = "\fun{IO}"
%format LTree = "{\LTree}"
%format FTree = "{\FTree}"
%format inNat = "\mathsf{in}"
%format (cata (f)) = "\llparenthesis\, " f "\,\rrparenthesis"
%format (cataNat (g)) = "\cataNat{" g "}"
%format (cataList (g)) = "\llparenthesis\, " g "\,\rrparenthesis"
%format (cataLTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataFTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataRose (x)) = "\llparenthesis\, " x "\,\rrparenthesis_\textit{\tiny R}"
%format (ana (g)) = "\ana{" g "}"
%format (anaList (g)) = "\anaList{" g "}"
%format (anaLTree (g)) = "\lanabracket\," g "\,\ranabracket"
%format (anaRose (g)) = "\lanabracket\," g "\,\ranabracket_\textit{\tiny R}"
%format (hylo (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket"
%format (hyloRose (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket_\textit{\tiny R}"
%format Nat0 = "\N_0"
%format Rational = "\Q "
%format toRational = " to_\Q "
%format fromRational = " from_\Q "
%format muB = "\mu "
%format (frac (n)(m)) = "\frac{" n "}{" m "}"
%format (fac (n)) = "{" n "!}"
%format (underbrace (t) (p)) = "\underbrace{" t "}_{" p "}"
%format matrix = "matrix"
%format `ominus` = "\mathbin{\ominus}"
%format % = "\mathbin{/}"
%format <-> = "{\,\leftrightarrow\,}"
%format <|> = "{\,\updownarrow\,}"
%format `minusNat`= "\mathbin{-}"
%format ==> = "\Rightarrow"
%format .==>. = "\Rightarrow"
%format .<==>. = "\Leftrightarrow"
%format .==. = "\equiv"
%format .<=. = "\leq"
%format .&&&. = "\wedge"
%format cdots = "\cdots "
%format pi = "\pi "
%format (curry (f)) = "\overline{" f "}"
%format delta = "\Delta "
%format (plus (f)(g)) = "{" f "}\plus{" g "}"
%format ++ = "\mathbin{+\!\!+}"
%format Integer  = "\mathbb{Z}"
%format (Cp.cond (p) (f) (g)) = "\mcond{" p "}{" f "}{" g "}"
%format (square (x)) = x "^2"

%format (cataTree (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis_{\textit{\tiny T}}"
%format (cataForest (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis_{\textit{\tiny F}}"
%format (anaTree (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket_{\textit{\tiny T}}"
%format (anaForest (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket_{\textit{\tiny F}}"
%format (hyloTree (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket_{\textit{\tiny T}}"
%format (hyloForest (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket_{\textit{\tiny F}}"
%format inTree = "\mathsf{in}_{Tree}"
%format inForest = "\mathsf{in}_{Forest}"
%format outTree = "\mathsf{out}_{Tree}"
%format outForest = "\mathsf{out}_{Forest}"

%format (cata' (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis"
%format (ana' (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket"
%format (hylo' (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket"
%format .* = "\star " 
%------------------------------------------------------------------------------%


%====== DEFINIR GRUPO E ELEMENTOS =============================================%

\group{G4}
\studentA{104445}{Alexandre Marques Miranda }
\studentB{104437}{Ana Sá Oliveira }
\studentC{104179}{Sara Azevedo Lopes }

%==============================================================================%

\begin{document}

\sffamily
\setlength{\parindent}{0em}
\emergencystretch 3em
\renewcommand{\baselinestretch}{1.25} 
\input{Cover}
\pagestyle{pagestyle}
\setlength{\parindent}{1em}
\newgeometry{left=25mm,right=20mm,top=25mm,bottom=25mm}

\section*{Preâmbulo}

Em \CP\ pretende-se ensinar a progra\-mação de computadores como uma disciplina
científica. Para isso parte-se de um repertório de \emph{combinadores} que
formam uma álgebra da programação % (conjunto de leis universais e seus corolários)
e usam-se esses combinadores para construir programas \emph{composicionalmente},
isto é, agregando programas já existentes.

Na sequência pedagógica dos planos de estudo dos cursos que têm esta disciplina,
opta-se pela aplicação deste método à programação em \Haskell\ (sem prejuízo
da sua aplicação a outras linguagens funcionais). Assim, o presente trabalho
prático coloca os alunos perante problemas concretos que deverão ser implementados
em \Haskell. Há ainda um outro objectivo: o de ensinar a documentar programas,
a validá-los e a produzir textos técnico-científicos de qualidade.

Antes de abordarem os problemas propostos no trabalho, os grupos devem ler
com atenção o anexo \ref{sec:documentacao} onde encontrarão as instruções
relativas ao \emph{software} a instalar, etc.

Valoriza-se a escrita de \emph{pouco} código que corresponda a soluções simples
e elegantes que utilizem os combinadores de ordem superior estudados na disciplina.

%if False
\begin{code}
{-# OPTIONS_GHC -XNPlusKPatterns #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, DeriveDataTypeable, FlexibleInstances #-}
module Main where
import Cp
import List hiding (fac)
import Nat hiding (aux)
import LTree
import FTree
import Exp
-- import Probability
import Data.List hiding (find)
-- import Svg hiding (for,dup,fdiv)
import Control.Monad
import Control.Applicative hiding ((<|>))
import System.Process
import Data.Char
import Data.Ratio
import Control.Concurrent

main = undefined
\end{code}
%endif

\Problema

Esta questão aborda um problema que é conhecido pela designação '\emph{H-index of a Histogram}'
e que se formula facilmente:
\begin{quote}\em
O h-index de um histograma é o maior número |n| de barras do histograma cuja altura é maior ou igual a |n|.
\end{quote}
Por exemplo, o histograma 
\begin{code}
h = [5,2,7,1,8,6,4,9]
\end{code}
que se mostra na figura
	\histograma
tem |hindex h = 5|
pois há |5| colunas maiores que |5|. (Não é |6| pois maiores ou iguais que seis só há quatro.)

Pretende-se definida como um catamorfismo, anamorfismo ou hilomorfismo uma função em Haskell
\begin{code}
hindex :: [Int] -> (Int,[Int])
\end{code}
tal que, para |(i,x) = hindex h|, |i| é o H-index de |h| e |x| é a lista de colunas de |h| que para ele contribuem.

A proposta de |hindex| deverá vir acompanhada de um \textbf{diagrama} ilustrativo.

\Problema

Pelo \href{https://en.wikipedia.org/wiki/Fundamental_theorem_of_arithmetic}{teorema
fundamental da aritmética}, todo número inteiro positivo tem uma única factorização
prima.  For exemplo,
\begin{verbatim}
primes 455
[5,7,13]
primes 433
[433]
primes 230
[2,5,23]
\end{verbatim}

\begin{enumerate}

\item	
Implemente como anamorfismo de listas a função
\begin{code}
primes :: Integer -> [Integer] 
\end{code}
que deverá, recebendo um número inteiro positivo, devolver a respectiva lista
de factores primos.

A proposta de |primes| deverá vir acompanhada de um \textbf{diagrama} ilustrativo.

\item A figura mostra a ``\emph{árvore dos primos}'' dos números |[455,669,6645,34,12,2]|.

      \primes

Com base na alínea anterior, implemente uma função em Haskell que faça a
geração de uma tal árvore a partir de uma lista de inteiros:

\begin{code}
prime_tree :: [Integer] -> Exp Integer Integer
\end{code}

\textbf{Sugestão}: escreva o mínimo de código possível em |prime_tree| investigando
cuidadosamente que funções disponíveis nas bibliotecas que são dadas podem
ser reutilizadas.%
\footnote{Pense sempre na sua produtividade quando está a programar --- essa
atitude será valorizada por qualquer empregador que vier a ter.}

\end{enumerate}

\Problema

A convolução |a .* b| de duas listas |a| e |b| --- uma operação relevante em computação
---  está muito bem explicada
\href{https://www.youtube.com/watch?v=KuXjwB4LzSA}{neste vídeo} do canal
\textbf{3Blue1Brown} do YouTube,
a partir de \href{https://www.youtube.com/watch?v=KuXjwB4LzSA&t=390s}{|t=6:30|}.
Aí se mostra como, por exemplo:
\begin{quote}
|[1,2,3] .* [4,5,6] = [4,13,28,27,18]| 
\end{quote}
A solução abaixo, proposta pelo chatGPT,
\begin{spec}
convolve :: Num a => [a] -> [a] -> [a]
convolve xs ys = [sum $ zipWith (*) (take n (drop i xs)) ys | i <- [0..(length xs - n)]]
  where n = length ys 
\end{spec}
está manifestamente errada, pois |convolve [1,2,3] [4,5,6] = [32]| (!).

Proponha, explicando-a devidamente, uma solução sua para |convolve|.
Valorizar-se-á a economia de código e o recurso aos combinadores \emph{pointfree} estudados
na disciplina, em particular a triologia \emph{ana-cata-hilo} de tipos disponíveis nas
bibliotecas dadas ou a definir.

\Problema

Considere-se a seguinte sintaxe (abstrata e simplificada) para \textbf{expressões numéricas} (em |b|) com variáveis (em |a|),
\begin{code}
data Expr b a =   V a | N b | T Op [ Expr b a ]  deriving (Show,Eq)

data Op = ITE | Add | Mul | Suc deriving (Show,Eq)
\end{code}
possivelmente condicionais (cf.\ |ITE|, i.e.\ o operador condicional ``if-then-else``).
Por exemplo, a árvore mostrada a seguir
        \treeA
representa a expressão
\begin{eqnarray}
        |ite (V "x") (N 0) (multi (V "y") (soma (N 3) (V "y")))|
        \label{eq:expr}
\end{eqnarray}
--- i.e.\ |if x then 0 else y*(3+y)| ---
assumindo as ``helper functions'':
\begin{code}
soma  x y = T Add [x,y]
multi x y = T Mul [x,y]
ite x y z = T ITE [x,y,z]
\end{code}

No anexo \ref{sec:codigo} propôe-se uma base para o tipo Expr (|baseExpr|) e a 
correspondente algebra |inExpr| para construção do tipo |Expr|.

\begin{enumerate}
\item        Complete as restantes definições da biblioteca |Expr|  pedidas no anexo \ref{sec:resolucao}.
\item        No mesmo anexo, declare |Expr b| como instância da classe |Monad|. \textbf{Sugestão}: relembre os exercícios da ficha 12.
\item        Defina como um catamorfismo de |Expr| a sua versão monádia, que deverá ter o tipo:
\begin{code}
mcataExpr :: Monad m => (Either a (Either b (Op, m [c])) -> m c) -> Expr b a -> m c
\end{code}
\item        Para se avaliar uma expressão é preciso que todas as suas variáveis estejam instanciadas.
Complete a definição da função
\begin{code}
let_exp :: (Num c) => (a -> Expr c b) -> Expr c a -> Expr c b
\end{code}
que, dada uma expressão com variáveis em |a| e uma função que a cada uma dessas variáveis atribui uma
expressão (|a -> Expr c b|), faz a correspondente substituição.\footnote{Cf.\ expressões |let ... in ...|.}
Por exemplo, dada
\begin{code}
f "x" = N 0
f "y" = N 5
f _   = N 99
\end{code}
ter-se-á
\begin{spec}
        let_exp f e = T ITE [N 1,N 0,T Mul [N 5,T Add [N 3,N 1]]]
\end{spec}
isto é, a árvore da figura a seguir: 
        \treeB

\item Finalmente, defina a função de avaliação de uma expressão, com tipo

\begin{code}
evaluate :: (Num a, Ord a) =>  Expr a b -> Maybe a
\end{code}

que deverá ter em conta as seguintes situações de erro:

\begin{enumerate}

\item \emph{Variáveis} --- para ser avaliada, |x| em |evaluate x| não pode conter variáveis. Assim, por exemplo,
        \begin{spec}
        evaluate e = Nothing
        evaluate (let_exp f e) = Just 40
        \end{spec}
para |f| e |e|  dadas acima.

\item \emph{Aridades} --- todas as ocorrências dos operadores deverão ter
      o devido número de sub-expressões, por exemplo:
        \begin{spec}
        evaluate (T Add [ N 2, N 3]) = Just 5
        evaluate (T Mul [ N 2 ]) = Nothing
        \end{spec}

\end{enumerate}

\end{enumerate}

\noindent
\textbf{Sugestão}: de novo se insiste na escrita do mínimo de código possível,
tirando partido da riqueza estrutural do tipo |Expr| que é assunto desta questão.
Sugere-se também o recurso a diagramas para explicar as soluções propostas.

\part*{Anexos}

\appendix

\section{Natureza do trabalho a realizar}
\label{sec:documentacao}
Este trabalho teórico-prático deve ser realizado por grupos de 3 alunos.
Os detalhes da avaliação (datas para submissão do relatório e sua defesa
oral) são os que forem publicados na \cp{página da disciplina} na \emph{internet}.

Recomenda-se uma abordagem participativa dos membros do grupo em \textbf{todos}
os exercícios do trabalho, para assim poderem responder a qualquer questão
colocada na \emph{defesa oral} do relatório.

Para cumprir de forma integrada os objectivos do trabalho vamos recorrer
a uma técnica de programa\-ção dita ``\litp{literária}'' \cite{Kn92}, cujo
princípio base é o seguinte:
%
\begin{quote}\em
	Um programa e a sua documentação devem coincidir.
\end{quote}
%
Por outras palavras, o \textbf{código fonte} e a \textbf{documentação} de um
programa deverão estar no mesmo ficheiro.

O ficheiro \texttt{cp2425t.pdf} que está a ler é já um exemplo de
\litp{programação literária}: foi gerado a partir do texto fonte
\texttt{cp2425t.lhs}\footnote{O sufixo `lhs' quer dizer
\emph{\lhaskell{literate Haskell}}.} que encontrará no \MaterialPedagogico\
desta disciplina des\-com\-pactando o ficheiro \texttt{cp2425t.zip}.

Como se mostra no esquema abaixo, de um único ficheiro (|lhs|)
gera-se um PDF ou faz-se a interpretação do código \Haskell\ que ele inclui:

	\esquema

Vê-se assim que, para além do \GHCi, serão necessários os executáveis \PdfLatex\ e
\LhsToTeX. Para facilitar a instalação e evitar problemas de versões e
conflitos com sistemas operativos, é recomendado o uso do \Docker\ tal como
a seguir se descreve.

\section{Docker} \label{sec:docker}

Recomenda-se o uso do \container\ cuja imagem é gerada pelo \Docker\ a partir do ficheiro
\texttt{Dockerfile} que se encontra na diretoria que resulta de descompactar
\texttt{cp2425t.zip}. Este \container\ deverá ser usado na execução
do \GHCi\ e dos comandos relativos ao \Latex. (Ver também a \texttt{Makefile}
que é disponibilizada.)

Após \href{https://docs.docker.com/engine/install/}{instalar o Docker} e
descarregar o referido zip com o código fonte do trabalho,
basta executar os seguintes comandos:
\begin{Verbatim}[fontsize=\small]
    $ docker build -t cp2425t .
    $ docker run -v ${PWD}:/cp2425t -it cp2425t
\end{Verbatim}
\textbf{NB}: O objetivo é que o container\ seja usado \emph{apenas} 
para executar o \GHCi\ e os comandos relativos ao \Latex.
Deste modo, é criado um \textit{volume} (cf.\ a opção \texttt{-v \$\{PWD\}:/cp2425t}) 
que permite que a diretoria em que se encontra na sua máquina local 
e a diretoria \texttt{/cp2425t} no \container\ sejam partilhadas.

Pretende-se então que visualize/edite os ficheiros na sua máquina local e que
os compile no \container, executando:
\begin{Verbatim}[fontsize=\small]
    $ lhs2TeX cp2425t.lhs > cp2425t.tex
    $ pdflatex cp2425t
\end{Verbatim}
\LhsToTeX\ é o pre-processador que faz ``pretty printing'' de código Haskell
em \Latex\ e que faz parte já do \container. Alternativamente, basta executar
\begin{Verbatim}[fontsize=\small]
    $ make
\end{Verbatim}
para obter o mesmo efeito que acima.

Por outro lado, o mesmo ficheiro \texttt{cp2425t.lhs} é executável e contém
o ``kit'' básico, escrito em \Haskell, para realizar o trabalho. Basta executar
\begin{Verbatim}[fontsize=\small]
    $ ghci cp2425t.lhs
\end{Verbatim}

\noindent Abra o ficheiro \texttt{cp2425t.lhs} no seu editor de texto preferido
e verifique que assim é: todo o texto que se encontra dentro do ambiente
\begin{quote}\small\tt
\verb!\begin{code}!
\\ ... \\
\verb!\end{code}!
\end{quote}
é seleccionado pelo \GHCi\ para ser executado.

\section{Em que consiste o TP}

Em que consiste, então, o \emph{relatório} a que se referiu acima?
É a edição do texto que está a ser lido, preenchendo o anexo \ref{sec:resolucao}
com as respostas. O relatório deverá conter ainda a identificação dos membros
do grupo de trabalho, no local respectivo da folha de rosto.

Para gerar o PDF integral do relatório deve-se ainda correr os comando seguintes,
que actualizam a bibliografia (com \Bibtex) e o índice remissivo (com \Makeindex),
\begin{Verbatim}[fontsize=\small]
    $ bibtex cp2425t.aux
    $ makeindex cp2425t.idx
\end{Verbatim}
e recompilar o texto como acima se indicou. (Como já se disse, pode fazê-lo
correndo simplesmente \texttt{make} no \container.)

No anexo \ref{sec:codigo} disponibiliza-se algum código \Haskell\ relativo
aos problemas que são colocados. Esse anexo deverá ser consultado e analisado
à medida que isso for necessário.

Deve ser feito uso da \litp{programação literária} para documentar bem o código que se
desenvolver, em particular fazendo diagramas explicativos do que foi feito e
tal como se explica no anexo \ref{sec:diagramas} que se segue.

\section{Como exprimir cálculos e diagramas em LaTeX/lhs2TeX} \label{sec:diagramas}

Como primeiro exemplo, estudar o texto fonte (\lhstotex{lhs}) do que está a ler\footnote{
Procure e.g.\ por \texttt{"sec:diagramas"}.} onde se obtém o efeito seguinte:\footnote{Exemplos
tirados de \cite{Ol18}.}
\begin{eqnarray*}
\start
|
	id = split f g
|
\just\equiv{ universal property }
|
     lcbr(
          p1 . id = f
     )(
          p2 . id = g
     )
|
\just\equiv{ identity }
|
     lcbr(
          p1 = f
     )(
          p2 = g
     )
|
\qed
\end{eqnarray*}

Os diagramas podem ser produzidos recorrendo à \emph{package} \Xymatrix, por exemplo:
\begin{eqnarray*}
\xymatrix@@C=2cm{
    |Nat0|
           \ar[d]_-{|cataNat g|}
&
    |1 + Nat0|
           \ar[d]^{|id + (cataNat g)|}
           \ar[l]_-{|inNat|}
\\
     |B|
&
     |1 + B|
           \ar[l]^-{|g|}
}
\end{eqnarray*}

\section{Código fornecido}\label{sec:codigo}

\subsection*{Problema 1}

\begin{code}
h :: [Int]
\end{code}

\subsection*{Problema 4}
Definição do tipo:
\begin{code}
inExpr = either V (either N (uncurry T))

baseExpr g h f = g -|- (h -|- id >< map f)
\end{code}
Exemplos de expressões:
\begin{code}
e = ite (V "x") (N 0) (multi (V "y") (soma (N 3) (V "y")))
i = ite (V "x") (N 1) (multi (V "y") (soma (N (3%5)) (V "y")))
\end{code}
Exemplo de teste:
\begin{code}
teste = evaluate (let_exp f i) == Just (26 % 245)
    where f "x" = N 0 ; f "y" = N (1%7)
\end{code}

%----------------- Soluções dos alunos -----------------------------------------%

\section{Soluções dos alunos}\label{sec:resolucao}
Os alunos devem colocar neste anexo as suas soluções para os exercícios
propostos, de acordo com o ``layout'' que se fornece.
Não podem ser alterados os nomes ou tipos das funções dadas, mas pode ser
adicionado texto ao anexo, bem como diagramas e/ou outras funções auxiliares
que sejam necessárias.

\noindent
\textbf{Importante}: Não pode ser alterado o texto deste ficheiro fora deste anexo.
%format Nat = "\N "
%format (list (x)) = x "^*"

\subsection*{Problema 1}
Para resolver o problema 1, do cálculo do H-index de um histograma e da lista de colunas do histograma que para ele contribuem, foi desenvolvida a seguinte solução:

\begin{code}
hindex = hyloList calc_hindex pop_min

pop_min [] = i1()
pop_min xs = (i2 . split p1 (uncurry delete) . split minimum id) xs

calc_hindex = either (const (0,[])) 
           (cond (uncurry (>=) . (id >< succ . p1)) 
                 (split (succ . p1 . p2) (conc . swap . (singl >< p2))) 
                 p2)
\end{code}

\noindent A função \texttt{hindex} aplica um hilomorfismo de listas (\texttt{hyloList}) para determinar o H-index de uma lista que representa o histograma e para determinar a lista de colunas do histograma que contribuem para o H-index. Um hilomorfismo, como sabemos, é uma composição de um anamorfismo (que gera uma estrutura de dados ou outro tipo de estrutura a partir de um estado inicial) com um catamorfismo (que consome uma estrutura de dados, reduzindo-a a um único resultado). Assim, para construir o hilomorfismo, tivemos de descobrir as funções que são os genes do anamorfismo e do catamorfismo, respetivamente:

\begin{itemize}
    \item \texttt{pop\_min}: Esta função é o gene do anamorfismo que irá gerar uma estrutura de dados apartir do histograma.
    Este anamorfismo irá, mais concretamente, apartir do histograma, gerar uma lista ordenada por ordem crescente.
    Esta função calcula o mínimo de uma lista e a lista sem esse mínimo. Para uma lista vazia, devolve \texttt{i1()}, que corresponde a \texttt{Left ()}, encapsulando o valor da unidade \texttt{()} no lado esquerdo de um tipo \texttt{Either}. Para uma lista não vazia, a função identifica o valor mínimo da lista, remove a primeira ocorrência desse mínimo da lista e prepara o resultado num par, onde o primeiro elemento é o valor mínimo e o segundo é a lista com o mínimo removido. O resultado é então envolvido com \texttt{i2}, que é um sinónimo de \texttt{Right}, o lado direito de um tipo \texttt{Either}. 
    Com este gene, o anamorfismo vai pegando no mínimo da lista e juntando à nova lista, o que irá gerar uma lista ordenada por ordem crescente. Este anamorfismo é o selection sort.
    \item \texttt{calc\_hindex}: Esta função é o gene do catamorfismo que irá processar (consumir) a estrutura gerada pelo anamorfismo para calcular o H-index e determinar os elementos que contribuem para o resultado. O catamorfismo irá, mais concretamente, consumir a lista ordenada pelo anamorfismo, para obter o resultado que pretendemos. No gene, para um valor do tipo \texttt{Left} (\texttt{i1}), devolve diretamente o par \texttt{(0, [])}, representando que o H-index é zero e não há elementos processados. Para um valor do tipo \texttt{Right} (\texttt{i2}), avalia se o primeiro elemento do par (um valor da lista ordenada) é maior ou igual ao sucessor do primeiro elemento do segundo elemento do par (o H-index acumulado até ao momento). Se a condição for verdadeira, incrementa o contador (H-index) e adiciona o elemento atual à lista de contribuições. Caso contrário, devolve apenas o H-index anterior e a lista de contribuições anteriormente acumuladas.
    Com este gene, o catamorfismo vai calculando o H-index e a lista que o justifica, iteração a iteração, para cada "sub-histograma", até por fim, calcular o H-index de todo o histograma e a lista que o justifica, aquilo que queriamos.
\end{itemize}

Diagrama do hilomorfismo:
\[
\xymatrix@@C=2cm{
    |list(Nat)| \ar[r]^-{|pop_min|} \ar[d]_-{|anaList pop_min|} \ar@@/_6pc/[dd]_-{|hindex = hylo calc_hindex pop_min|}
  & |1 + Nat >< list(Nat)| \ar[d]^-{|id + id >< anaList pop_min|} \\
    |list(Nat)| \ar[d]_-{|cataList calc_hindex|} \ar@@/^/[r]^{|out*|}
  & |1 + Nat >< list(Nat)| \ar@@/^/[l]_{\cong}^{|inNat*|} \ar[d]^-{|id + id >< cataList calc_hindex|} \\
    |Nat >< list(Nat)|
  & |1 + Nat >< (Nat >< list(Nat))| \ar[l]^-{|calc_hindex|}
}
\]

\subsection*{Problema 2}
Primeira parte:

Para resolver o problema 2.1, de cálculo dos fatores primos de um número inteiro positivo, foi desenvolvida a seguinte solução:
\begin{code}
primes = anaList divByPrime

divByPrime 1 = i1()
divByPrime n = (i2 . split p2 (uncurry div) . split id fst_prime) n

fst_prime = (head . uncurry filter
     . split (((==0) .) . mod) (conc
     . split ((2:) . enumFromThenTo 3 5 . floor . sqrt . fromIntegral) singl))
\end{code}

Diagrama do anamorfismo:
\[
\xymatrix@@C=2cm{
    |Nat| \ar[r]^-{|divByPrime|} \ar[d]_-{primes = |anaList divByPrime|}
  & |1 + Nat >< Nat| \ar[d]^-{|id + id >< (anaList divByPrime)|} \\
    |list(Nat)|
  & |1 + Nat >< list(Nat)| \ar[l]^-{|inNat*|}
}
\]

Em primeiro lugar, definimos \texttt{primes} como sendo um anamorfismo de listas (\texttt{anaList}) porque, dado um número, esta função gera uma lista, logo temos aqui um anamorfismo de listas.\\
Depois temos de descobrir qual será o gene deste anamorfismo. A função \texttt{divByPrime} será o gene deste anamorfismo.
\begin{spec}
primes = anaList divByPrime
\end{spec}
Se a função receber o número 1, ela entrega \texttt{()} encapsulado em \texttt{i1}.
Se a função receber outro número inteiro positivo, para além de 1, a função, apartir do número, calcula um par de valores (\texttt{split ou <,>}), sendo o primeiro valor o próprio número (\texttt{id})
e sendo o segundo valor o menor fator primo do número (\texttt{fst\_prime}), o "primeiro" fator primo daquele número. Logo a seguir, apartir do par de valores obtido anteriormente (composição - \texttt{(.)}),
calcula outro par de valores  (\texttt{split ou <,>}), sendo o primeiro valor, o segundo valor do par anterior (\texttt{p2}), ou seja, o menor fator primo do número original e sendo o segundo valor 
a divisão inteira do par anterior (\texttt{uncurry div}), ou seja, a divisão do número original pelo seu menor fator primo. Apartir deste par de valores que obtivemos (composição - \texttt{(.)}), encapsulamos o par em \texttt{i2}.
\begin{spec}
divByPrime 1 = i1()
divByPrime n = (i2 . split p2 (uncurry div) . split id fst_prime) n
\end{spec}
Por fim, apenas nos falta definir o \texttt{fst\_prime} usado na função anterior. Como já disse, ele calcula o menor fator primo do número dado. A primeira implementação do \texttt{fst\_prime} foi a seguinte:
\begin{code}
primes1 = anaList divByPrime1

divByPrime1 1 = i1()
divByPrime1 n = (i2 . split p2 (uncurry div) . split id fst_prime1) n

fst_prime1 = head . uncurry filter . split (((==0) .) . mod) (enumFromTo 2)
\end{code}
Aqui, apenas filtramos (\texttt{filter}) desde o número 2 (menor número primo) até ao nosso número (\texttt{enumFromTo 2}), aqueles que dividem o número inteiramente com resto 0 (\texttt{((==0) .) . mod}),
e pegamos apenas no primeiro que cumpra este requisito (\texttt{head}) - o menor fator primo.\\

No entanto, apesar de simples, sabemos que esta solução é pouco eficiente, então decidimos implementar outra:
\begin{spec}
fst_prime = (head . uncurry filter
     . split (((==0) .) . mod) (conc
     . split ((2:) . enumFromThenTo 3 5 . floor . sqrt . fromIntegral) singl))
\end{spec}
Nesta versão, a única diferença é a lista de onde iremos filtrar os números. Desta vez, obtemos uma lista menor, logo o cálculo para encontrar o menor fator primo será mais rápido, porque iremos filtrar
de uma lista menor. Esta função, para além de mais eficiente, continua correta. É eficiente porque obtemos os números 2, o próprio número e os números impares de 3 até à raiz quadrada do nosso número,
bem menos números do que anteriormente. Metade dos números que percorriamos (os números pares maiores que 2) agora não percorremos, porque sabemos que 2 é o único número par e primo, logo ao procurar fatores
primos não vale a pena percorrer os outros números pares. Para além disso, já não percorremos os números da raiz quadrada do número até ao número (mas percorremos o número ainda), porque sabemos que para
calcular os fatores primos de um número, basta procurar divisores primos até a raiz quadrada desse número (e também ver o próprio número). Isso ocorre porque, se o número tem um divisor maior que a sua raiz
quadrada, então obrigatoriamente deve existir outro divisor menor que a raiz quadrada. Assim, ao percorrer apenas até a raiz quadrada, já encontramos todos os fatores primos (menos se o número for primo). Se
até aqui não encontramos nenhum fator primo, é porque o número é primo, então no final da lista pomos o próprio número.\\
Por fim, decidimos ainda desenvolver uma versão que calcula os fatores primos mais eficientemente, em alguns casos:
\begin{code}
primes_ef n = primes2 (2,n)

primes2 = anaList divByPrime2

divByPrime2 (_,1) = i1 ()
divByPrime2 (p,n) = (i2 . split p2 (split p2 (uncurry div)) . split p2 fst_prime2) (p,n)

fst_prime2 = head . Cp.ap
        . split (filter . ((==0) .) . mod . p2) (Cp.ap
        . split (uncurry (.) . ((:) >< flip (++) . singl)) (Cp.ap 
        . (Cp.ap . split enumFromThenTo (+2) . cond (==2) (+1) (+2) >< floor . sqrt . fromIntegral)))
\end{code}

Diagrama do anamorfismo:
\[
\xymatrix@@C=2cm{
    |Nat >< Nat| \ar[r]^-{|divByPrime2|} \ar[d]_-{primes2 = |anaList divByPrime2|}
  & |1 + Nat >< (Nat >< Nat)| \ar[d]^-{|id + id >< (anaList divByPrime2)|} \\
    |list(Nat)|
  & |1 + Nat >< list(Nat)| \ar[l]^-{|inNat*|}
}
\]
Nesta versão, guardamos o menor fator primo da iteração anterior, para não tentarmos testar números que já deviamos saber que não são fatores primos deste número. Por exemplo, se anteriormente calculei que
o menor fator primo de 45 é 3, na próxima iteração, saberei que o menor fator primo de 15 (3*15 = 45) é maior ou igual a 3. Já sei que não será o 2 porque senão teria sido o menor fator de 45 (nós pegamos
nos fatores primos por ordem crescente). Assim, diminuimos a lista de procura de fatores primos e o programa fica mais eficiente.\\\\
Podemos perceber o quão mais eficiente esta função é da anterior, calculando os fatores primos de 99999971³. Usando \texttt{primes}, primeiro ela vai percorrer a lista [2,3,5,7,...99999971] até encontrar o primeiro primo -
99999971. Depois voltará a percorrer [2,3,5,7,...99999971], etc...\\\\
Usando \texttt{primes\_ef}, primeiro ela vai percorrer a lista [2,3,5,7,...99999971] até encontrar o primeiro primo - 99999971. Depois irá percorrer [99999971] porque já sabe que os números menores que 99999971 não
são os fatores primos que faltam do número inicial. Claramente percebemos que a lista percorrida vai diminuir drasticamente em alguns casos, e assim, \texttt{primes\_ef} é bem mais eficiente que \texttt{primes} em alguns casos. Noutros casos
\texttt{primes} e \texttt{primes\_ef} são igualmente eficientes (por exemplo, para calcular os fatores primos de 99999971, já vimos que percorrem a mesma lista).\\

Segunda parte:

Para resolver o problema 2.2, de gerar uma "árvore dos primos", do tipo \texttt{Exp v o}, dada uma lista de números inteiros positivos, foi desenvolvida a seguinte solução:
\begin{code}
prime_tree = Term 1 . untar . map (split primes id)
\end{code}
Em primeiro lugar, percebemos que teriamos de primeiramente calcular os fatores primos de cada número da lista e que teriamos de manter os números da lista, porque na árvore tanto
temos os fatores primos de cada número, como temos os próprios números da lista inicial (como podemos observar na árvore dada como exemplo). Assim, a função que queremos tem de começar
por calcular, para todos os números da lista (função \texttt{map}), um par de valores apartir do número (função \texttt{split} ou <,>): o primeiro elemento do par é os seus fatores primos
(função \texttt{primes}) e o segundo elemento é o próprio número (função \texttt{id}). Assim, em \texttt{prime\_tree} começamos com a seguinte função:
\begin{spec}
map (split primes id)
\end{spec}
Em segundo lugar, percebemos que qualquer árvore de primos terá o número 1, como sendo a raiz da árvore, tal como no exemplo que nos foi dado. Nem todos os números inteiros positivos têm
fatores primos em comum, no entanto, todos os números inteiros positivos têm em comum o facto de serem divisíveis por 1, têm em comum o fator 1. O número 1 é um fator universal, pois divide
qualquer número inteiro positivo, sempre resultando em quociente inteiro e resto 0. Por isso, faz sentido, na árvore de primos, o número 1 ser a raiz da árvore, o ponto de partida. No entanto,
sabemos que o número 1 não é primo, então este não será nenhum fator primo obtido na função anterior. Então, o 1 terá de ser inserido na árvore. Como a árvore é do tipo \texttt{Exp v o}, para o número
1 ser a raiz da árvore, a árvore terá de ser \texttt{Term 1 o}, sendo \texttt{o} a lista de "subárvores", ou seja, \texttt{[Exp v o]}. Assim, em \texttt{prime\_tree} terminamos com a seguinte função:
\begin{spec}
Term 1
\end{spec}
Em terceiro lugar, percebemos que teríamos de usar uma função que organizasse os números e os seus fatores primos, que já obtemos, numa lista de subárvores (\texttt{[Exp v o]}) para podermos depois
obter a tal árvore de primos desejada, com a raiz igual ao número 1. Ou seja, precisamos de uma função cuja entrada seja a saída da função \texttt{map <primes,id>}, ou seja, uma lista de pares,
cujo o primeiro elemento é uma lista de inteiros (os fatores primos) e o segundo é um inteiro (o número), ou seja, do tipo \texttt{[([o],v)]}, e cuja saída seja a entrada da função \texttt{Term 1},
ou seja, do tipo \texttt{[Exp v o]} (a lista de subárvores). No fundo, queremos primeiro aplicar a função \texttt{map <primes,id>} depois aplicar a tal função desejada e por fim, aplicar a função
\texttt{Term 1}. O tipo da função desejada será então \texttt{[([o], v)] -> [Exp v o]}.
\begin{spec}
Term 1 . ? . map (split primes id)

? :: [([o], v)] -> [Exp v o]
\end{spec}
Como a saída da função que queremos é do tipo \texttt{[Exp v o]}, então decidimos investigar cuidadosamente a biblioteca Exp.hs, biblioteca dedicada ao tipo de dados \texttt{Exp v o}. Rapidamente,
encontramos a função \texttt{untar}, que tem o mesmo tipo, que a função desejada.
\begin{spec}
untar :: (Ord v, Ord o) => [([o], v)] -> [Exp v o]
\end{spec}
Testamos a nossa função \texttt{prime\_tree} que usa \texttt{untar} e rapidamente percebemos que fazia aquilo que desejavamos. A função \texttt{untar}, no fundo, reorganiza os números e os seus fatores primos,
que se encontravam num formato \texttt{[([o], v)]}, no formato \texttt{[Exp v o]}, respeitando uma certa ordem (\texttt{(Ord v, Ord o)}). Afinal, como conseguimos ver na árvore dada como exemplo, na árvore
os fatores primos de um número vão aparecendo na árvore por ordem crescente até chegarmos ao número, que é uma folha. Com esta função conseguimos construir a função \texttt{prime\_tree}:
\begin{spec}
prime_tree = Term 1 . untar . map (split primes id)
\end{spec}
Assim, conseguimos resolver o problema 2.2 escrevendo o mínimo de código possível (1 linha). Isto foi conseguido porque reutilizámos uma função da biblioteca Exp.hs, a função \texttt{untar}, que nos poupou muito trabalho.
\subsection*{Problema 3}
Para resolver o problema 3, do cálculo da convolução de duas listas a e b, foi desenvolvida a seguinte solução:

\begin{code}
convolve :: Num a => [a] -> [a] -> [a]
convolve = ((Cp.ap . split ((uncurry hyloList .) (curry combineWindows >< (curry generateWindows . p2)) ) (pad . p2)) .)
          . (curry (split (reverse . p2) (id >< length)))

pad :: Num a => ([a], Int) -> [a]
pad = conc . split p2 conc . (id >< (`replicate` 0). (subtract 1))

generateWindows :: Num a => (Int,[a]) -> Either (Int,[a]) ([a], [a])
generateWindows = cond (uncurry (>) . (id >< length)) (const i1()) (i2 . split (uncurry take) (tail . p2))

combineWindows :: Num a => ([a], Either () ([a], [a])) -> [a]
combineWindows = Cp.ap . ((\ys -> either (const []) (conc . split (singl . sum . (zipWith (*) ys) . p1) p2)) >< id)
\end{code}

\noindent A função \texttt{convolve} implementa a convolução discreta de duas listas, utilizando um hilomorfismo (\texttt{hyloList}) para gerar e combinar janelas de valores. Um hilomorfismo, como sabemos, é uma composição de um anamorfismo (que gera uma estrutura de dados, mais especificamente aqui irá gerar janelas) com um catamorfismo (que consome uma estrutura de dados, reduzindo-a a um único resultado, mais especificamente aqui irá combinar janelas dando origem a um resultado). Assim, para construir o hilomorfismo, tivemos de descobrir as funções que são os genes do anamorfismo e do catamorfismo e ainda tivemos de desenvolver outras funções
auxiliares. Antes de entrarmos no hilomorfismo, obtemos a primeira lista (\texttt{id}) e o comprimento da segunda lista (\texttt{length}).
Depois obtemos também a segunda lista revertida (como se fazia no vídeo) (\texttt{(reverse . p2)}). Depois vamos usar a primeira lista e comprimento da segunda lista, já obtidos, para preparar
uma lista adequada para ajudar a gerar e combinar janelas (a lista que irá ser usada no hilomorfismo). Depois associamos o comprimento da segunda lista ao anamorfismo e associamos a segunda lista revertida ao
catamorfismo.
\begin{itemize}
    \item \texttt{pad}: Uma função que adiciona o número adequado de zeros no final e no início da lista. Recebe um par onde o primeiro elemento é a primeira lista e o segundo é o comprimento da segunda lista.
    Apartir do par dado (\texttt{><}), mantém o primeiro elemento, mantém a primeira lista (\texttt{id}) e pega no segundo elemento, comprimento da segunda lista, retira-lhe um valor (\texttt{subtract 1}) e depois
    (\texttt{.}) replica o 0 esse número de vezes (\texttt{`replicate` 0}), ou seja, forma uma lista com esse número de 0s. Apartir do par (\texttt{split ou <,>}), mantém a lista de zeros (\texttt{p2}) e concatena
    a primeira lista com a mesma lista de zeros (\texttt{conc}). Depois (\texttt{.}), pega no par que resta e concatena a lista de zeros com a lista anteriormente obtida (a lista que contém a primeira
    lista e zeros no final). E assim, obtemos uma lista com zeros no início e final da lista e que no meio tem a primeira lista original. Esta lista será usada no hilomorfismo.
    A função replica zeros e concatena-os à lista original.

    \item \texttt{generateWindows}: Esta função é o gene do anamorfismo que irá gerar as janelas. Esta função gera uma janela de valores da "lista com zeros". Para evitar casos inválidos, verifica se o comprimento da segunda lista original excede o comprimento da janela atual. Se for o caso, devolve \texttt{i1()}, representando que não há mais janelas. Caso contrário, devolve um par envolvido em \texttt{i2}, contendo a nova janela gerada
    (que geramos pegando nos primeiros x elementos da lista com zeros, sendo x o comprimento da segunda lista original) e a parte restante da "lista com zeros" sem a cabeça (\texttt{tail}).

    \item \texttt{combineWindows}: Esta função é o gene do catamorfismo que irá combinar as janelas, que no fundo irá aplicar a convolução. Esta função combina uma janela gerada com os valores da segunda lista revertida. Para cada janela, calcula o produto escalar entre a janela e os valores correspondentes da segunda lista revertida, somando os resultados. Se não houver janelas (\texttt{Left}), devolve uma lista vazia.
\end{itemize}

\noindent A função \texttt{convolve} aplica estas operações para calcular a convolução discreta, gerando uma nova lista onde cada elemento é o resultado da combinação das janelas com os valores da segunda lista revertida.

\subsection*{Problema 4}
Para resolver o problema 4.1, tivemos de definir \texttt{outExpr}, \texttt{recExpr}, \texttt{cataExpr}, \texttt{anaExpr} e \texttt{hyloExpr}.\\\\
Definição do tipo:\\\\
Em primeiro lugar, definimos \texttt{outExpr}. Se \texttt{inExpr} converte um valor do tipo \texttt{Either a (Either b (Op, [Expr b a]))} para um valor do tipo \texttt{Expr b a},
então \texttt{outExpr} irá fazer o oposto, ou seja, \texttt{outExpr} converte um valor do tipo \texttt{Expr b a} para um valor do tipo \texttt{Either a (Either b (Op, [Expr b a]))}:
\begin{code}
outExpr(V a) = i1 a
outExpr(N b) = (i2 . i1) b
outExpr(T op l) = (i2 . i2) (op,l)
\end{code}
Em segundo lugar, definimos \texttt{recExpr}. A função \texttt{recExpr f} é o mesmo que \texttt{F f}, para o tipo de dados \texttt{Expr b a}. \texttt{F f = id + (id + id >< map f)} que é equivalente a:
\begin{code}
recExpr = baseExpr id id
\end{code}
\emph{Ana + cata + hylo}:\\\\
Em terceiro lugar, definimos \texttt{cataExpr}, \texttt{anaExpr} e \texttt{hyloExpr} e ainda fizemos um diagrama ilustrativo.
\begin{code}
cataExpr h = h . (recExpr (cataExpr h)) . outExpr

anaExpr g = inExpr . (recExpr (anaExpr g)) . g

hyloExpr h g = cataExpr h . anaExpr g
\end{code}
\[
\xymatrix@@C=2cm{
    |c| \ar[r]^-{|g|} \ar[d]_-{|anaExpr g|} \ar@@/_6pc/[dd]_-{|hyloExpr h g|}
  & |Either a (Either b (Op, [c]))| \ar[d]^-{|recExpr (anaExpr g)|} \\
    |Expr b a| \ar[d]_-{|cataExpr h|} \ar@@/^/[r]^{|outExpr|}
  & |Either a (Either b (Op, [Expr b a]))| \ar@@/^/[l]_{\cong}^{|inExpr|} \ar[d]^-{|recExpr (cataExpr h)|} \\
    |c|
  & |Either a (Either b (Op, [c]))| \ar[l]^-{|h|}
}
\]

\emph{Monad}:\\
Para resolver o problema 4.2, tivemos de declarar \texttt{Expr b} como instância da classe Monad.
\begin{code}
instance Functor (Expr b) where
     fmap f = cataExpr (inExpr . baseExpr f id id)

instance Applicative (Expr b) where
     (<*>) = aap
     pure  = return

instance Monad (Expr b) where
    return  = V
    (V a) >>= g = g a
    (N b) >>= g = N b
    (T op l) >>= g = T op (map (>>= g) l)
\end{code}
Em primeiro lugar, declaramos \texttt{Expr b} como instância da classe Monad.
Para declarar \texttt{Expr b} como instância da classe Monad, em Haskell, tivemos de implementar as funções \texttt{return} e \texttt{(>>=)}. O \texttt{return} em Haskell é a unidade. Com o \texttt{(>>=)} do Haskell podemos implementar a multiplicação, \texttt{mu}, como fizemos em baixo.
Para o programa compilar,
tivemos de declarar ainda \texttt{Expr b} como instância das classes Applicative e Functor. Todas as monades são primeiro
funtores então faz sentido termos de declarar \texttt{Expr b} como instância de Functor. Para isso, tivemos de implementar a função \texttt{fmap}.
Desde a introdução do "Applicative Monad Proposal" (AMP), a classe Monad agora exige que a classe Applicative seja implementada antes. Isso significa que também precisamos implementar pure e <*>, que vêm da classe Applicative e foi isso que fizemos.
\begin{code}
mu :: Monad m => m (m b) -> m b
mu x = x >>= id
\end{code}
\emph{Maps}:
\emph{Monad}:
\emph{Let expressions}:

Para resolver o problema 4.4, usamos a função \texttt{(>>=)} anteriormente definida:
\begin{code}
let_exp f = (>>= f)
\end{code}
Catamorfismo monádico:

Para resolver o problema 4.3, de definir o catamorfismo monádico deste tipo de dados, desenvolvemos a seguinte solução:
\begin{code}
mcataExpr g = g .! (d . recExpr (mcataExpr g) . outExpr)

d :: Monad m => Either a (Either b (Op, [m c])) -> m (Either a (Either b (Op, m [c])))
d = either (return.i1) (either (return.i2.i1) (fmap (i2.i2) . l))

l :: Monad m => (Op, [m c]) -> m (Op, m [c])
l (op, t) = do
    mcs <- sequence t
    return (op, return mcs)
\end{code}

\[
\xymatrix@@C=2cm{
    |Expr b a| \ar[dd]_-{|mcataExpr g|} \ar@@/^/[r]^-{|outExpr|}
  & |Either a (Either b (Op, [Expr b a]))| \ar[d]^-{|recExpr (mcataExpr g)|} \\
    | |
  & |Either a (Either b (Op, [m c]))| \ar[d]^-{|d|} \\
    |m c|
  & |m (Either a (Either b (Op, m [c])))| \ar[l]^-{|(>>= g)|}
}
\]

Avaliação de expressões:

Para resolver o problema 4.5, usamos o catamorfismo monádico definido anteriormente:
\begin{code}
evaluate = mcataExpr (inMaybe . evalExpr)

evalExpr :: (Num a, Ord a) => Either b (Either a (Op, Maybe [a])) -> Either () a
evalExpr = either (const (i1())) (either (i2) (uncurry evalOp))

evalOp :: (Num a, Ord a) => Op -> Maybe [a] -> Either () a
evalOp Suc (Just [x]) = i2(x + 1)
evalOp Add (Just [x, y]) = i2(x + y)
evalOp Mul (Just [x, y]) = i2(x * y)
evalOp ITE (Just [x, y, z]) = if x /= 0 then i2(y) else i2(z)
evalOp _ _        = i1()
\end{code}
\[
\xymatrix@@C=2cm{
    |Expr b a| \ar[dd]_-{|evaluate = mcataExpr (inMaybe . evalExpr)|} \ar@@/^/[r]^-{|outExpr|}
  & |Either a (Either b (Op, [Expr b a]))| \ar[d]^-{|recExpr (mcataExpr (inMaybe . evalExpr))|} \\
    | |
  & |Either a (Either b (Op, [Maybe c]))| \ar[d]^-{|d|} \\
    |Maybe c|
  & |Maybe (Either a (Either b (Op, Maybe [c])))| \ar[l]^-{|(>>= (inMaybe . evalExpr))|}
}
\]

%----------------- Índice remissivo (exige makeindex) -------------------------%

\printindex

%----------------- Bibliografia (exige bibtex) --------------------------------%

\bibliographystyle{plain}
\bibliography{cp2425t}

%----------------- Fim do documento -------------------------------------------%
\end{document}
