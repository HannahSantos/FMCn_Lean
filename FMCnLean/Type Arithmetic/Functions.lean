import FMCnLean.«Type Arithmetic».Definitions

/-
Nomeie e defina as funções listadas.

Lembrando que:
  Sum a b = Sum.inl a | Sum.inr b
  &
  Prod a b = Prod.mk a b
  Podendo ser escrito como ⟨a,b⟩
  Você pode abrir Sum e Prod
  (Para não precisar escrever .inl ou .inr) com:
    open Sum Prod
-/

variable {α β γ δ : Type}

def a : (α → α') → (β → β') → α ⊕ β → α' ⊕ β'
  := sorry

def b : (α → α') → (β → β') → α × β → α' × β'
  := sorry

def c : (α' → α) → (β → β') → (α → β) → α' → β'
  := sorry

def d : (α → δ) × (β → δ) → α ⊕ β → δ
  := sorry

def e : (α ⊕ β → δ) → (α → δ) × (β → δ)
  := sorry

def f : (α × β → δ) → α → β → δ
  := sorry

def g : (α → β → δ) → α × β → δ
  := sorry

def h : (𝟘 → α) → 𝟙
  := sorry

def i : 𝟘 → α
  := sorry

def j : 𝟙 → 𝟘 → α
  := sorry

def k : (𝟙 → α) → α
  := sorry

def l : α → 𝟙 → α
  := sorry

def m : (𝟙 ⊕ 𝟙 → α) → α × α
  := sorry

def n : α × α → 𝟙 ⊕ 𝟙 → α
  := sorry

def o : (α → 𝟙) → 𝟙
  := sorry

def p : 𝟙 → α → 𝟙
  := sorry

def q : δ × (α ⊕ β) → (δ × α) ⊕ (δ × β)
  := sorry

def r : (δ × α) ⊕ (δ × β) → δ × (α ⊕ β)
  := sorry

def s : α ⊕ β ⊕ γ → (α ⊕ β) ⊕ γ
  := sorry

def t : (α ⊕ β) ⊕ γ → α ⊕ β ⊕ γ
  := sorry

def u : α ⊕ β → β ⊕ α
  := sorry

def v : α ⊕ 𝟘 → α
  := sorry

def w : α → α ⊕ 𝟘
  := sorry

def x : (α × β) × γ → α × β × γ
  := sorry

def y : α × β × γ → (α × β) × γ
  := sorry

def z : α × β → β × α
  := sorry

def aa : α × 𝟙 → α
  := sorry

def ab : α → α × 𝟙
  := sorry
