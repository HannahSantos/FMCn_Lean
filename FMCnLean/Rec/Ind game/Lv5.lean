namespace Lv5

 -- Talvez tu precise fazer as listas aqui também :)
 -- Aconselho aproveitar o que já fez até agora. Tá quase lá!

inductive BinTree (α : Type) : Type
  | Nil  : BinTree α
  | Node : α → BinTree α → BinTree α → BinTree α
  deriving Repr, DecidableEq

open BinTree

-- quantos 'andares' tem a árvore
def height : BinTree α → Nat
  | tree  => sorry

-- quanta 'informação' tem na árvore
def size : BinTree α → Nat
  | tree  => sorry

-- converte a árvore numa lista
def flatten : BinTree α → List α
  | tree  => sorry

def reverse : BinTree α → BinTree α
  | tree  => sorry

-- Uma árvore binária é dita cheia (full) sse
-- ∀ nó, se esse nó tem alguma sub-árvore vazia
--     , então ele está no último nível.

def isFull : BinTree α → Bool
  | tree  => sorry

-- uma heap max, é uma estrutura onde
-- cada nó eh maior ou igual a todos os seus filhos.
-- (A raíz da árvore, por consequência, terá o maior valor)
def isHeapMax [Ord α] : BinTree α → Bool
  | tree  => sorry

-- ideias:
-- countLeaves: conta as folhas
-- contains: o flip de um isIn ou In
-- map
-- filter
-- fold
-- instanciar Lista antiga como funktor
-- instanciar arvore como funKtor

section -- Funktor!!

  class Funktor (f : Type u → Type v) : Type (max (u+1) v) where
    map : {α β : Type u} → (α → β) → f α → f β
    id_map : ∀ (x : f α), map id x = id x
    comp_map : ∀ (g : α → β) (h : β → γ) (x : f α), map (h ∘ g) x = (map h ∘ map g) x

  def map : (α → β) → BinTree α → BinTree β
    | tree => sorry

  def id_map : ∀ (x : BinTree α), map id x = id x := by
    sorry

  def comp_map : ∀ (f : α → β) (g : β → γ) (x : BinTree α), map (g ∘ f) x = (map g ∘ map f) x := by
    sorry

  instance : Funktor BinTree where
    map := map
    id_map := id_map
    comp_map := comp_map

end section

-- cuidado, talvez tenha algo errado ;)
-- [Depois de refutar, tenta acrescentar uma hipótese legal
--   que torne demonstrável, caso precise :P ]
-- demons:
-- rev da rev
-- size = lenght (flatten)
-- fmap . flatten = flatten . fmap
-- fold f e . flatten = fold f e
