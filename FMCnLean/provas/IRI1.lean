namespace IRI1

  namespace A -- Defina os: Nat, List, map, filter , pw , fold.

  end A

  namespace G
    def map : (α → β) → List α → List β := sorry
    def sum : List Nat → Nat := sorry
    def product : List Nat → Nat := sorry
    def reverse : List α → List α := sorry
    def length : List α → Nat := sorry
    def replicate : Nat → α → List α := sorry
    def ev : Nat → Bool := sorry
    def sorted : List α → Bool := sorry
    def descend : Nat → Nat → List Nat := sorry

    variable (k : Nat)

    example : map f (xs ++ ys) = _ := sorry
    example : sum (xs ++ ys) = _ := sorry
    example : product (xs ++ ys) = _ := sorry
    example : reverse (xs ++ ys) = _ := sorry
    example : length (map f xs) = _ := sorry
    example : sum (replicate n x) = _ := sorry
    example : sum (map (. + k) ns) = _ := sorry
    example : sum (map (. * k) ns) = _ := sorry
    example : product (map (· * k) ns) = _ := sorry
    example : ev (product ns) = _ := sorry
    example : ev (sum ns) = _ := sorry
    example : sorted (map (. + k) ns) = _ := sorry
    example : length (descend n d) = _ := sorry
  end G

  namespace P -- Escolha até duas das equações de G para demonstrar. As duas equações escolhidas precisam começar com palavras diferentes. Precisas definir (corretamente!) todas as funções envolvidas, exceto aquelas que tu já definiu no A.

  -- Definicoes

  -- Demonstracao de _

  -- Demonstracao de _
  end P

  namespace I -- Para qualquer α : Type, definimos o tipo
  
  inductive Tree α 
    | Tip : α → Tree α
    | Fork : Tree α → Tree α → Tree α

  -- Escreva como regra de inferência o princípio da indução para o tipo Tree α.
  end I

end IRI1
