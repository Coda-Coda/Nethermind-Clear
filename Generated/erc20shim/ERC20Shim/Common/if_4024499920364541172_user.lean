import Clear.ReasoningPrinciple


import Generated.erc20shim.ERC20Shim.Common.if_4024499920364541172_gen


namespace ERC20Shim.Common

section

open Clear EVMState Ast Expr Stmt FunctionDefinition State Interpreter ExecLemmas OutOfFuelLemmas Abstraction YulNotation PrimOps ReasoningPrinciple Utilities 

def A_if_4024499920364541172 (s₀ s₉ : State) : Prop := sorry

lemma if_4024499920364541172_abs_of_concrete {s₀ s₉ : State} :
  Spec if_4024499920364541172_concrete_of_code s₀ s₉ →
  Spec A_if_4024499920364541172 s₀ s₉ := by
  sorry

end

end ERC20Shim.Common
