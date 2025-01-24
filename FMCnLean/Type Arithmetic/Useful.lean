------------------------------------------------
-- Teoremas Auxiliares:
------------------------------------------------

variable {α β γ δ : Type}

theorem comp_def :
  ∀ {f : α → β} {g : β → γ}, ∀ (a : α), (g ∘ f) a = g (f a) :=
by
  intro f g a
  rw [Function.comp]

theorem id_comp :
  ∀ (f : α → β), id ∘ f = f ∧ f ∘ id = f :=
by
  sorry

theorem comp_assoc :
  ∀ (f : α → β) (g : β → γ) (h : γ → δ), (h ∘ g) ∘ f= h ∘ (g ∘ f) :=
by
  sorry
