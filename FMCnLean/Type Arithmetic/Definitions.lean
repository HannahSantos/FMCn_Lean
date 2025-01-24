------------------------------------------------
-- Definições:
------------------------------------------------

def iso (α β : Type) : Prop :=
  ∃ (f : α → β) (g : β → α), f ∘ g = id ∧ g ∘ f = id
notation "(≅)" => iso
infix:50 " ≅ " => (≅)
notation "𝟘" => Empty
notation "𝟙" => Unit

variable {A : Type u}

def reflexive (R : A  → A → Prop) : Prop :=
∀ a, R a a
notation R " é reflexiva" => reflexive R

def symmetric (R : A → A → Prop) : Prop :=
∀ a b, R a b → R b a
notation R " é simétrica" => symmetric R

def transitive (R : A → A → Prop) : Prop :=
∀ a b c, R a b → R b c → R a c
notation R " é transitiva" => transitive R

def equivalent_relation (R : A → A → Prop) : Prop :=
R é reflexiva ∧ R é simétrica ∧ R é transitiva
notation R " é uma relação de equivalência" => equivalent_relation R

def respects_empty : Prop :=
  𝟘 ≅ 𝟘
notation "(≅) respeita 𝟘" => respects_empty

def respects_unit : Prop :=
  𝟙 ≅ 𝟙
notation "(≅) respeita 𝟙" => respects_unit

def respects_sum : Prop :=
  ∀ {α α' β β' : Type}, α ≅ α' ∧ β ≅ β' → (α ⊕ β) ≅ (α' ⊕ β')
notation "(≅) respeita (⊕)" => respects_sum

def respects_prod : Prop :=
  ∀ {α α' β β' : Type}, α ≅ α' ∧ β ≅ β' → (α × β) ≅ (α' × β')
notation "(≅) respeita (×)" => respects_prod

def respects_fun : Prop :=
  ∀ {α α' β β' : Type}, α ≅ α' ∧ β ≅ β' → (α → β) ≅ (α' → β')
notation "(≅) respeita (→)" => respects_fun

def respects_algebric_structure : Prop :=
  (≅) respeita 𝟘 ∧ (≅) respeita 𝟙 ∧ (≅) respeita (⊕) ∧ (≅) respeita (×) ∧ (≅) respeita (→)
notation "(≅) respeita a Estrutura Algébrica" => respects_algebric_structure

def congruent : Prop :=
  (≅) é uma relação de equivalência ∧ (≅) respeita a Estrutura Algébrica
notation "(≅) é uma Congruência" => congruent
