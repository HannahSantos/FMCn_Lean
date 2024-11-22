namespace Lv4

/- Relações em listas polimórficas -/

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

-- Algumas funções
def length : List α → Nat
  | Nil     => 0
  | _ :: xs => 1 + (length xs)

def concat : List α → List α → List α
  | Nil, ys     => ys
  | x :: xs, ys => x :: concat xs ys

  infixr:50 " ++ " => concat

-- Não tenha medo de definir outras
-- (ou reaproveitar do Lv3)

-- Algumas relações
def Prefix (l₁ l₂ : List α) : Prop :=
  sorry

def Suffix (l₁ l₂ : List α) : Prop :=
  sorry

def Segment (l₁ l₂ : List α) : Prop :=
  sorry

def Sublist (l₁ l₂ : List α) : Prop :=
  sorry

def LexiLe (l₁ l₂ : List α) : Prop :=
  /- Relação de ordem estrita Lexicográfica -/
  sorry

-- Alguns teoremas sobre nossas relações
-- [AVISO] Talvez nem tudo seja demonstravel ;)
variable (l r s : List α)
variable (xs ys zs : List α)
variable (x y z : α)

namespace Prefix

  theorem refl : Prefix l l := by
    sorry

  theorem trans : Prefix l r ∧ Prefix r s → Prefix l s := by
    sorry

  theorem antisymm : Prefix l r ∧ Prefix r l → l = r := by
    sorry

-- Ja te lembro que podes definir uma notacao infixa e ajustar
-- nos teoremas abaixo, desse modoe, por ex:
  infixr:50 " << " => Prefix

  theorem cons_preserva_prefix : xs << ys ↔ (x :: xs) << (x :: ys) := by
    sorry

  theorem cons_nao_preserva_prefix : x ≠ y → ¬(Prefix (x :: xs) (y :: ys)) := by
    sorry

  theorem /- Um nome bom -/ : Prefix l r → Prefix l (r ++ s) := by
    sorry

  theorem /- Um nome bom -/ : Prefix (l ++ r) s → Prefix l s := by
    sorry

end Prefix

-- Como acessar teoremas sobre a Prefix:
#check Prefix.refl
#check Prefix.cons_nao_preserva_prefix

namespace Suffix

  theorem refl : Suffix l l := by
    sorry

  theorem trans : Suffix l l := by
    sorry

  theorem /- Um nome bom -/ : Suffix l r → Suffix l (s ++ r) := by
    sorry

end Suffix

namespace Segment

  theorem refl : Segment l l := by
    sorry

  theorem trans : Segment l l := by
    sorry

  theorem preffix_suffix : Segment l r ↔ ∃ s, (Prefix l s) ∧ (Suffix s r) := by
    sorry

end Segment

namespace Sublist

  theorem refl : Sublist l l := by
    sorry

  theorem trans : Sublist l r ∧ Sublist r s → Sublist l s := by
    sorry

  theorem /- Um nome bom -/ : Sublist l r → sublist l (r ++ s) := by
    sorry

  theorem /- Um nome bom -/ : Sublist xs (y :: ys) ↔ (xs = ys) ∨ (Sublist xs ys) := by
    sorry

end Sublist

namespace LexiLe

  theorem irrefl : ¬(LexiLe l l) := by
    sorry

  theorem trans : LexiLe l r ∧ LexiLe r s → LexiLe l s := by
    sorry

  theorem concat_preserva : LexiLe l r → LexiLe (l ++ s) (r ++ s) := by
    sorry

end LexiLe

end Lv4
