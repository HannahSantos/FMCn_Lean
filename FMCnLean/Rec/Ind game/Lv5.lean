namespace Lv5

 -- Talvez tu precise fazer as listas aqui também :)
 -- Aconselho aproveitar o que já fez até agora. Tá quase lá!

inductive Tree (α : Type) : Type
  | Nil  : Tree α
  | Node : α → Tree α → Tree α → Tree α
  deriving Repr, DecidableEq

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

-- No nosso caso, uma folha
-- será um nó sem filhos
def countLeaves : Tree α → Nat 
  | tree => sorry

def contains [Eq α] : α → Tree α → Bool
  | tree => sorry

-- Tambbém dê o tipo das funções abaixo
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
    map : {α β : Type u} → (α → β) → f α → f β
    id_map : ∀ (x : f α), map id x = id x
    comp_map : ∀ (g : α → β) (h : β → γ) (x : f α), map (h ∘ g) x = (map h ∘ map g) x

  def map : (α → β) → Tree α → Tree β
    | tree => sorry

  def id_map : ∀ (x : Tree α), map id x = id x := by
    sorry

  def comp_map : ∀ (f : α → β) (g : β → γ) (x : Tree α), map (g ∘ f) x = (map g ∘ map f) x := by
    sorry

  instance : Funktor Tree where
    map := map
    id_map := id_map
    comp_map := comp_map

end section

-- cuidado, talvez tenha algo errado ;)
-- [Depois de refutar, tenta acrescentar uma hipótese legal
--   que torne demonstrável, caso precise :P ]

-- Enuncie e demonstre:

-- rev da rev
-- size = lenght (flatten)
-- fmap . flatten = flatten . fmap
-- fold f e . flatten = fold f e
