namespace intsV1

--universe u

class Integer (Z : Type u) where
  zero    : Z
  one     : Z
  plus    : Z → Z → Z
  minus   : Z → Z
  times   : Z → Z → Z

  ZA_Ass  : ∀ (a b c : Z), plus (plus a b) c   = plus a (plus b c)
  ZA_IdR  : ∀ (a : Z),     plus a zero         = a
  ZA_InvR : ∀ (a : Z),     plus a (minus a)    = zero
  ZA_Com  : ∀ (a b : Z),   plus a b            = plus b a

  ZM_Ass  : ∀ (a b c : Z), times (times a b) c = times a (times b c)
  ZM_IdR  : ∀ (a : Z),     times a one         = a
  ZM_Com  : ∀ (a b : Z),   times a b           = times b a

  Z_DistR : ∀ (d a b : Z), times (plus a b) d  = plus (times a d) (times b d)

open Integer

-- acucar <3
infixl: 55 " + "   => plus
prefix: 57 " - "   => minus
infixl: 56 " * "   => times
infixl: 55 " - "   => λ a b => plus a (minus b)
-- "Observe que o símbolo " − "  está sendo
-- sobrecarregado, mas o contexto sempre
-- deixará claro qual das (−) : Int → Int,
-- (−) : Int × Int → Int, esta sendo usada".

-- alternativas
notation "O"       => zero
notation "l"       => one


variable {Z : Type u} [Integer Z]

-------------------_Theorems_------------------
theorem ZA_IDL : ∀(a : Z), zero + a = a :=
by
  intro a
  rw [ZA_Com zero a]
  rw [ZA_IdR a]


theorem ZA_InvL : (??) :=
by sorry

theorem ZM-IdL : (??) :=
by sorry

theorem Z-DistL : (??) :=
by sorry

theorem ZA_InvL : (??) :=
by sorry

theorem ZA_InvL : (??) :=
by sorry

theorem ZA_InvL : (??) :=
by sorry

theorem ZA_InvL : (??) :=
by sorry





end intsV1
