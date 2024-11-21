namespace Lv4

inductive List (α : Type) where
  | Nil
  | Cons : α → List α → List α
  deriving Repr

open List
infixr:50 " :: " => Cons

section
  -- E agora as ListNat são caso especial
  -- das nossas novas listas polimórficas
  def ListNat := List Nat

  #check ListNat
  #check 3 :: 2 :: 1 :: Nil
end

/- Relações em listas polimórficas -/

-- Algumas funções
def length : List α → Nat
  | Nil     => 0
  | _ :: xs => 1 + (length xs)

def concat : List α → List α → List α
  | Nil, ys     => ys
  | x :: xs, ys => x :: concat xs ys

  infixr:50 " ++ " => concat

-- 
def Prefix (l₁ l₂ : List α) : Prop :=
  -- Uma dica: as funções definidas antes
  sorry

Sublist

Segment

Suffix

Relação de ordem estrita Lexicográfica



-- Alguns teoremas sobre nossas relações
-- AVISO: Talvez nem tudo seja demonstravel ;)
variable (l r s : List α)

section -- Prefix
  theorem Prefix_refl : /- sorry -/ := by
    sorry

  theorem Prefix_trans : /- sorry -/ := by
    sorry

  theorem Prefix_antisymm : /- sorry -/ := by
    sorry
end

agora merecemos usar <=, mesmo que MUITO abuso
-- SERA QUE USAMOS PRA ESSA OU DEIXAMOS PRA OUTRA
-- OU NEM USAMOS?
infixr:50 " <= " => Prefix

-- PREFIX

name?
∀x xs ys, xs <= ys ↔ (x::xs) <= (x::ys)

name?
∀l1​ l2​ l3​, l1 <=​ l2 ​→ l1 <=​ (l2 ​++ l3​)

name?
∀l1​ l2​ l3​, (l1 ​++ l2​) <= l3 → l1 <=​ l3

name? (necessario?)
∀x1​ x2​ xs ys, x1​ ≠ x2​ → ¬ ((x1​::xs) <= (x2​::ys))

-- SUBLIST

refl
trans
∀l1​ l2​ l3​, sublist l1​ l2      → sublist l1​ (l2 ​++ l3​)
∀l1​ l2​ x,  sublist l1​ (x::l2​) ↔ l1​ = (l2 ​∨ (sublist l1​ l2))

-- Segment

refl
trans
∀l1​ l2​, segment l1​ l2​ ↔ ∃(l3​), Prefix l1​ l3 ​∧ Sufix l3​ l2


-- Sufix

refl e trans dnv ;-;

∀l1​ l2​ l3​, Suffix l1​ l2 ​→ Suffix l1​ (l3 ​++ l2​)
∀l1​ l2​,    Suffix l1​ l2​ ↔ ∃(l3)​, l2 ​= (l3 ​++ l1)

-- Rel Lexicografica

Irrefl
Trans
∀l1​ l2​ l3​, LexiLessThan l1​ l2 → LexiLessThan (l1 ​++ l3​) (l2 ​++ l3​)

end Lv4
