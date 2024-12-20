/- 
  Oh não! O grinch roubou a magia do Natal (definições recursivas de funções)
  e agora o destino do Papai Noel está em suas mãos. Armado com a mais poderosa
  arma do polo norte (fold), seu objetivo é derrotar o malfeitor
  (definir o máximo de funções em termos da fold)
  antes que a magia do Natal se acabe por completo (no fim do T34)
-/

def fold : (α → α → α) → α → List α → α
  | op, e, xs => sorry -- falta so definir :P

def sum : List Nat → Nat := fold sorry sorry

def prod : List Nat → Nat := sorry

def concat : List (List α) → List α := sorry

def or : α /- Qual o tipo? -/ := sorry

def and : α := sorry

def maximum : List Nat → Nat := sorry

def minimum : List Nat → Nat := sorry

/-
  No meio da sua jornada, voce encontra uma arma ainda mais poderosa!
-/

def foldr : (α → β → β) → β → List α → β
  | f, e, xs => sorry -- Nada nessa vida vem de graca

def length : List α → Nat := sorry

def any : (α → Bool) → List α → Bool := sorry

def all : (α → Bool) → List α → Bool := sorry

def map : α /- Qual o tipo da map? -/ := sorry

def filter : α /- Qual o tipo da filter? -/ := sorry

def reverse : List α → List α := sorry
