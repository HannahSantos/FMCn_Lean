import FMCnLean.«Type Arithmetic».Definitions
import FMCnLean.«Type Arithmetic».Functions
import FMCnLean.«Type Arithmetic».Useful

------------------------------------------------
-- Parte Relação de Equivalência:
------------------------------------------------

theorem iso_refl:
  (≅) é reflexiva :=
by
  sorry

theorem iso_symm:
  (≅) é simétrica :=
by
  sorry

theorem iso_trans:
  (≅) é transitiva :=
by
  sorry

theorem iso_eq_rel:
  (≅) é uma relação de equivalência :=
by
  sorry

------------------------------------------------
-- Parte Estrutura Algébrica:
------------------------------------------------

theorem iso_empty:
  (≅) respeita Empty :=
by
  sorry

theorem iso_unit:
  (≅) respeita Unit :=
by
  sorry

theorem iso_sum:
  (≅) respeita (⊕) :=
by
  sorry

theorem iso_prod:
  (≅) respeita (×) :=
  sorry

theorem iso_fun:
  (≅) respeita (→) :=
by
  sorry

theorem iso_algebric_structure:
  (≅) respeita a Estrutura Algébrica :=
by
  sorry

------------------------------------------------
-- Congruência:
------------------------------------------------

theorem iso_congruent:
  (≅) é uma Congruência :=
by
  sorry

------------------------------------------------
-- Teoremas Divertidos
------------------------------------------------
variable {α β γ δ : Type}
------------------------Sum-Pow------------------------

theorem iso_pow_sum :
  (α ⊕ β → δ) ≅ ((α → δ) × (β → δ)) :=
by
  sorry

------------------------Curry------------------------

theorem iso_curry :
  (α → β → δ) ≅ (α × β → δ) :=
by
  sorry

-----------------------Pow-Empty-----------------------

theorem only_one_empty_fun :
  ∀ (g g' : Empty → α), g = g' :=
by
  sorry

theorem iso_eq_one :
  (Empty → α) ≅ Unit :=
by
  sorry

------------------------Pow-One------------------------

theorem iso_pow_unit :
  (Unit → α) ≅ α :=
by
  sorry

------------------------Pow-Two------------------------

theorem iso_pow_two :
  (Unit ⊕ Unit → α) ≅ (α × α) :=
by
  sorry

------------------------Unit-Pow------------------------

theorem iso_one_pow :
  (α → Unit) ≅ Unit :=
by
  sorry

--------------------Empty-Pow-Empty--------------------

theorem iso_empty_pow_empty :
  (Empty → Empty) ≅ Unit :=
by
  sorry

------------------------Distr-L------------------------

theorem iso_distr_L :
  (δ × (α ⊕ β)) ≅ ((δ × α) ⊕ (δ × β)) :=
by
  sorry

------------------------Sum-Ass------------------------

theorem iso_sum_ass :
  (α ⊕ β ⊕ γ) ≅ ((α ⊕ β) ⊕ γ) :=
by
  sorry

------------------------Sum-Com------------------------

theorem iso_sum_com :
  (α ⊕ β) ≅ (β ⊕ α) :=
by
  sorry

-------------------------Sum-Id-------------------------

theorem iso_sum_id :
  (α ⊕ Empty) ≅ α :=
by
  sorry

------------------------Prod-Ass------------------------

theorem iso_prod_ass :
  ((α × β) × γ) ≅ (α × (β × γ)) :=
by
  sorry

------------------------Prod-Com------------------------

theorem iso_prod_com :
  (α × β) ≅ (β × α) :=
by
  sorry

------------------------Distr-R------------------------

theorem iso_distr_R :
  ((α ⊕ β) × δ) ≅ (α × δ ⊕ β × δ) :=
by
  sorry

-------------------------Prod-Id-------------------------

theorem iso_prod_id:
  (α × Unit) ≅ α :=
by
  sorry

-----------------------Pow-Two-Sum-----------------------

theorem iso_pow_two_sum {α β : Type}:
  (Unit ⊕ Unit → α ⊕ β) ≅ (α × α ⊕ α × β ⊕ β × α ⊕ β × β) :=
by
  sorry
