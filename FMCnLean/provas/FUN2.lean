namespace Fun2

inductive Tree α
  | Tip : α → Tree α
  | Fork : Tree α → Tree α → Tree α

namespace G

  def flatten : Tree α → List α := sorry
  def map : (α → β) → Tree α → Tree β := sorry
  def replicate : Nat → α → List α := sorry
  def sum : List Nat → Nat := sorry
  def sorted : List α → Bool := sorry

  namespace G1 -- Complete as equações seguintes com algo interessante:
    variable (f : α → β) (n : Nat) (k : Nat) (x : Nat) (ns : List Nat) (t : Tree α)

    example : List.map f (flatten t) = _ := by sorry
    example : sum (replicate n x) = _ := by sorry
    example : sum (List.map (. + k) ns) = _ := by sorry
    example : sum (List.map (. * k) ns) = _ := by sorry
    example : sorted (List.map (. + k) ns) = _ := by sorry
  end G1

  namespace G2 -- Escolha uma das equações de G1 para demonstrar. precisas definir (corretamente!) todas as funções envolvidas, exceto se foram definidas em outras questões desta prova.

    -- DEFINICOES

    -- DEMOSTRACAO DE: _

  end G2

end G

namespace F

  inductive Dir
    | L : Dir
    | R : Dir

  def Path := List Dir

  namespace F1 -- Defina as funções

    def depth : Tree α → Nat := sorry
    def ntips : Tree α → Nat := sorry
    def nforks : Tree α → Nat := sorry
    def flatten : Tree α → List α := sorry
    def mirror : Tree α → Tree α := sorry
    def fetch : Tree α → Path → Option α := sorry
    -- O Option do Lean e isomorfo ao nosso Maybe.
    -- Voce pode hover'ar aquele Option e ver direitinho o que ele faz.

  end F1

  namespace F2 -- Defina uma versão eficiente de flatten usando uma função auxiliar flatten′.
  
  end F2

  namespace F3 -- Enuncie uma equação interessante sobre flatten e mirror .

  end F3

  namespace F4 -- Enuncie e demonstre uma equação interessante sobre ntips e nforks.

  end F4

  namespace F5 -- Desenhe os diagramas comutativos que correspondem aos teoremas F3 e F4.

  end F5

  namespace F6 -- Modifique o Tree para representar arvores que carregam informações não apenas nas folhas, mas nos nós também, mantendo a natureza binária.

  end F6

  namespace F7 -- Qual seria um tipo razoável para a flatten desse tipo de arvores? Defina tal flatten (não se preocupe com eficiência).

  end F7

end F 

namespace E -- Considere o tipo de expressões aritméticas envolvendo apenas números e divisões inteiras:

  inductive Expr
    | Val : Int → Expr
    | Div : Expr → Expr → Expr

  namespace E1 -- Dada a função div que retorna o quociente explique qual o problema da função seguinte:

    def div : Int → Int → Int := sorry

    def eval : Expr → Int
      | Expr.Val n => n
      | Expr.Div u v => div (eval u) (eval v)

    -- RESPOSTA

  end E1

  namespace E2 -- Defina uma versão segura (total) de div (chame de safediv )

  def safediv : α := sorry

  end E2

  namespace E3 -- Usando tua função safediv defina uma melhor eval : Expr → ?.

  def eval : Expr → α := sorry

  end E3

  namespace E4 -- Um aluno—talvez não o melhor da turma—–respondeu na E3 assim:

  def eval : Expr → Option Int
  | Expr.Val n => pure n
  | Expr.Div u v => pure E2.safediv  <*> eval u <*> eval v

  -- Compila? Se não, explique o porquê. Se sim, explique porque seria melhor evitar esta definição.

  end E4

end E

end Fun2
