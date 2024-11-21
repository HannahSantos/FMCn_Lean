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

-- Alguns teoremas sobre nossas relações
variable (l r s : List α)

section -- Prefix
  theorem Prefix_refl : /- sorry -/ := by
    sorry

  theorem Prefix_trans : /- sorry -/ := by
    sorry

  theorem Prefix_antisymm : /- sorry -/ := by
    sorry
end



--------------MAYBE--------------



end Lv4
