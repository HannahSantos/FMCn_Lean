namespace Lv5

 -- Talvez tu precise fazer as listas aqui também :)
 -- Aconselho aproveitar o que já fez até agora. Tá quase lá!

inductive Tree (α : Type) : Type
  | Nil  : Tree α
  | Node : α → Tree α → Tree α → Tree α
  deriving Repr, DecidableEq

-- Considere que Nils não contam como filhos
-- E que um Node pai de dois Nils seja uma folha.

open Tree

-- quantos 'andares' tem a árvore
def height : Tree α → Nat
  | tree  => sorry

-- quanta 'informação' tem na árvore
def size : Tree α → Nat
  | tree  => sorry

-- converte a árvore numa lista
def flatten : Tree α → List α
  | tree  => sorry

def reverse : Tree α → Tree α
  | tree  => sorry

-- Uma árvore binária é dita cheia (full) sse
-- ∀ nó, se esse nó tem alguma sub-árvore vazia
--     , então ele está no último nível.

def isFull : Tree α → Bool
  | tree  => sorry

-- uma heap max, é uma estrutura onde
-- cada nó eh maior ou igual a todos os seus filhos.
-- (A raíz da árvore, por consequência, terá o maior valor)
def isHeapMax [Ord α] : Tree α → Bool
  | tree  => sorry

-- A dual da HeapMax
def isHeapMin [Ord α] : Tree α → Bool
  | tree  => sorry

--  todo nó é menor que seu filho direito 
--          e maior que seu filho esquerdo
def isSearchTree : Tree α → Bool
  | tree => sorry

-- No nosso caso, uma folha
-- será um nó sem filhos
def countLeaves : Tree α → Nat 
  | tree => sorry

def contains [DecidableEq α] : α → Tree α → Bool
  | tree => sorry

def without : Tree α → α → Tree α 
  | tree => sorry

-- Type'ie e defina as funções abaixo
-- Vc consegue XD!
/-  def mapTree    :   -/
/-    | tree => sorry  -/
/--/
/- def filterTree : -/
/-   | tree => sorry -/
/--/
/- def foldTree :  -/
/-   | tree => sorry -/

-- instanciar Lista antiga como funktor
-- instanciar arvore como funKtor

section -- Funktor!!

  class Funktor (f : Type u → Type v) : Type (max (u+1) v) where
    fmap : {α β : Type u} → (α → β) → f α → f β

    id_law : ∀ (x : f α), fmap id x = id x

    comp_law : ∀ (g : α → β) (h : β → γ) (x : f α), fmap (h ∘ g) x 
      = (fmap h ∘ fmap g) x

  def id_mapTree : ∀ (x : Tree α), fmap id x = id x := by
    sorry

  def comp_mapTree : ∀ (f : α → β) (g : β → γ) (x : Tree α), fmap (g ∘ f) x = (fmap g ∘ fmap f) x := by
    sorry

  instance : Funktor Tree where
    fmap     := sorry
    id_law   := sorry 
    comp_law := sorry 

end section

-- cuidado, talvez tenha algo errado ;)
-- [Depois de refutar, tenta acrescentar uma hipótese legal
--   que torne demonstrável, caso precise :P ]

-- Enuncie e demonstre:

-- rev da rev
-- size = lenght (flatten)
-- fmap . flatten = flatten . fmap
-- fold f e . flatten = fold f e


