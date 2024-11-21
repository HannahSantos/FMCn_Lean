namespace Lv4

inductive List (α : Type) where
  | nil
  | cons : α → List α → List α
  deriving Repr

open List
infixr:50 " :: " => cons

section
  -- E agora as ListNat são caso especial
  -- das nossas novas listas polimórficas
  def ListNat := List Nat

  #check ListNat
  #check 3 :: 2 :: 1 :: nil
end

/- Relações em listas polimórficas -/

-- Algumas funções
def length : List α → Nat
  | nil     => 0
  | _ :: xs => 1 + (length xs)

def concat : List α → List α → List α
  | nil, ys => sorry
  | x :: xs, ys => sorry

  infixr:50 " ++ " => concat


-- Algumas relações
def SameSize (l₁ l₂ : List α) : Prop :=
  length l₁ = length l₂

def Prefix (l₁ l₂ : List α) : Prop :=
  -- Uma dica: as funções definidas antes
  sorry


-- Alguns teoremas sobre nossas relações
variable (l r s : List α)

section -- SameSize]
  theorem SameSize_refl : SameSize l l := by
    sorry

  theorem SameSize_symm : SameSize l r ↔ SameSize r l := by
    sorry

  theorem SameSize_trans : SameSize l r ∧ SameSize r s → SameSize l s := by
    sorry
end

section -- Prefix
  theorem Prefix_refl : /- sorry -/ := by
    sorry

  theorem Prefix_trans : /- sorry -/ := by
    sorry

  theorem Prefix_antisymm : /- sorry -/ := by
    sorry
end

end Lv4
