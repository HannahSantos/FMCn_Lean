namespace Lv4

inductive List (α : Type) where
  | nil
  | cons : α → List α → List α
  deriving Repr

open List
infixr:50 " :: " => cons

section
  -- E agora as ListNat são caso especial
  -- Das nossas novas listas polimórficas
  def ListNat := List Nat

  #check 3 :: 2 :: 1 :: nil
end

section -- Relações em listas polimórficas

-- Algumas funções
def length : List α → Nat
  | nil     => 0
  | _ :: xs => 1 + (length xs)

def concat : List α → List α → List α
  | nil, ys => ys
  | x :: xs, ys => x :: (concat xs ys)
infixr:50 " ++ " => concat

def SameSize (l₁ l₂ : List α) : Prop :=
  length l₁ = length l₂

-- Algumas relações
variable (l r s : List α)

theorem SameSize_refl : SameSize l l := by
  sorry

theorem SameSize_symm : SameSize l r ↔ SameSize r l := by
  sorry

theorem SameSize_trans : SameSize l r ∧ SameSize r s → SameSize l s := by
  sorry

-- Sua vez de escrever!
-- Uma dica: eu defini uma concat lá em cima
def Prefix (l₁ l₂ : List α) : Prop :=
  sorry

theorem Prefix_refl : /- sorry -/ := by
  sorry

theorem Prefix_antisymm : /- sorry -/ := by
  sorry

theorem Prefix_trans : /- sorry -/ := by
  sorry

end

end Lv4
