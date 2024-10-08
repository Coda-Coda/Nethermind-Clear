import Clear.ReasoningPrinciple

import Generated.peano.Peano.Common.if_6183625948864629624
import Generated.peano.Peano.mulk


namespace Peano.Common

set_option autoImplicit false

section

open Clear EVMState Ast Expr Stmt FunctionDefinition State Interpreter ExecLemmas OutOfFuelLemmas Abstraction YulNotation PrimOps ReasoningPrinciple Utilities Peano.Common Generated.peano Peano

def for_727972558926940900_cond := <<
    1
>>

def for_727972558926940900_post : List Stmt := <ss
    {k := sub(k, 1)}
>

def for_727972558926940900_body : List Stmt := <ss
{
    if eq(k, 0) 
    {break}
    y := mulk(y, x)
}
>

def for_727972558926940900 := <s
for { } 1 {k := sub(k, 1)} {
    if eq(k, 0) 
    {break}
    y := mulk(y, x)
}
>

set_option maxRecDepth 4000

-- =============================================================================
--  POST
-- =============================================================================

def for_727972558926940900_post_concrete_of_code
: {
    C : State → State → Prop
    // ∀ {s₀ s₉ fuel}
    , exec fuel (Block for_727972558926940900_post) s₀ = s₉
    → Spec C s₀ s₉
  } := by
  constructor
  intros s₀ s₉ fuel

  unfold Spec for_727972558926940900_post
  rcases s₀ with ⟨evm₀, store₀⟩ | _ | c <;> dsimp only
  rotate_left 1
  · aesop
  · aesop
  swap
  generalize hok : Ok evm₀ store₀ = s₀
  intros h _
  revert h

  rw [cons]; simp only [LetPrimCall', AssignPrimCall']
  simp [evalArgs, head', reverse', multifill', PrimCall', Lit', Var', execPrimCall, evalPrimCall]
  rw [EVMSub']
  try simp
  
  
  -- tacticsOfStmt offsetting
  try rw [nil]
  try simp [Bool.toUInt256, UInt256.size]
  intros h
  exact h


-- =============================================================================
--  BODY
-- =============================================================================

def for_727972558926940900_body_concrete_of_code
: {
    C : State → State → Prop
    // ∀ {s₀ s₉ fuel}
    , exec fuel (Block for_727972558926940900_body) s₀ = s₉
    → Spec C s₀ s₉
  }
:= by
  constructor
  intros s₀ s₉ fuel

  unfold Spec for_727972558926940900_body
  rcases s₀ with ⟨evm₀, store₀⟩ | _ | c <;> dsimp only
  rotate_left 1
  · aesop
  · aesop
  swap
  generalize hok : Ok evm₀ store₀ = s₀
  intros h _
  revert h

  -- abstraction offsetting
  rw [cons]
  generalize hxs : Block _ = xs
  abstract if_6183625948864629624_abs_of_code if_6183625948864629624 with ss hs
  try rw [← hs₁, hok] at hs
  intros h
  try intros h'
  refine' Exists.intro ss (And.intro hs ?_)
  swap; clear hs
  try revert h'
  revert h
  subst xs
  
  rw [cons]; simp only [LetCall', AssignCall']
  simp [evalArgs, head', reverse', multifill', PrimCall', Lit', Var', execPrimCall, evalPrimCall]
  -- EXPR 
  try simp
  generalize hs : execCall _ _ _ _ = s; try rw [← hs₁, hok] at hs
  intros h
  try intros h'
  refine' Exists.intro s (And.intro (mulk_abs_of_code hs) ?_)
  swap; clear hs
  try revert h'
  revert h
  
  
  -- tacticsOfStmt offsetting
  try rw [nil]
  try simp [Bool.toUInt256, UInt256.size]
  intros h
  exact h


end

end Peano.Common
