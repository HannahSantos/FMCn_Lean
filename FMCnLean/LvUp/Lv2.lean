import FMCnLean.Lv1
-- Se teu outro arquivo compilou,
-- talvez tu precise usar Ctrl + Shift + P : Restart File

open Lv1
open Lv1.Nat

namespace Lv2

def Nat := Lv1.Nat

---------------------------------------------Defs---------------------------------------------

inductive Bool where
  | -- Defina
deriving Repr

open Bool

-- Logical and         (∧)
def land : α → α
  | _ => sorry

#eval land True True
#eval land True False
#eval land False True
#eval land False False

-- Logical or          (∨)
def lor : α → α
  | _ => sorry

#eval lor True True
#eval lor True False
#eval lor False True
#eval lor False False

-- Logical implies     (→)
def limplies : α → α
  | _ => sorry

#eval limplies False True
#eval limplies True False

-- Logical impliedBy   (←)
def limplied : α → α
  | _ => sorry

#eval limplied False True
#eval limplied True False

-- Logical not         (¬)
def lneg : α → α
  | _ => sorry

#eval lneg True
#eval lneg False

-- Logical NAND
def lnand : α → α
  | _ => sorry

#eval lnand True True
#eval lnand False False
#eval lnand True False

-- Logical NOR
def lnor : α → α
  | _ => sorry

#eval lnor True False
#eval lnor True True

-- Logical Exclusive-or
def lxou : α → α
  | _ => sorry

#eval lxou True  True
#eval lxou False False
#eval lxou True  False

--  Par
def isEven : α → α
  | _ => sorry

#eval isEven O
#eval isEven (S O)
#eval isEven (S (S Ordering))

-- Impar
def isOdd : α → α
  | _ => sorry

#eval isOdd (S (S O))
#eval isOdd (S (S (S O)))

-- (<)
def isLt : α → α
  | _ => sorry

#eval isLt (S O) (S (S O))
#eval isLt (S (S (S O))) (S O)

-- (==)
def isEq : α → α
  | _ => sorry

#eval isEq O (S (S O))
#eval isEq (S O) (S O)

-- (>)
def isGt : α → α
  | _ => sorry

#eval isGt O (S (S O))
#eval isGt (S (S O)) (S O)

-----------------------------------------Demons---------------------------------------------


theorem ⁻/-nome-/ :
  ∃(e : Bool), ∀(b : Bool), (land b e = b) ∧ (land e b = b) :=
by
  sorry


theorem /-nome-/ :
  ∃(e : Bool), ∀(b : Bool), (lor b e = b) ∧ (lor e b = b) :=
by
  sorry

theorem /-nome-/ :
   ∀(b : Bool), lneg (lneg b) = b :=
by
  sorry

theorem /-nome-/ :
  ∀(n : Nat), isLt O n = True ∨ isEq O n :=
by
  sorry

theorem /-nome-/ :
∀(n : Nat), isEven n = lneg (isOdd n) :=
by
  sorry
