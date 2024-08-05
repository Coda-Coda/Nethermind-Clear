import Clear.ReasoningPrinciple


import Generated.erc20shim.ERC20Shim.fun_msgSender_gen


namespace Generated.erc20shim.ERC20Shim

section

open Clear EVMState Ast Expr Stmt FunctionDefinition State Interpreter ExecLemmas OutOfFuelLemmas Abstraction YulNotation PrimOps ReasoningPrinciple Utilities 

def A_fun_msgSender (var : Identifier)  (s₀ s₉ : State) : Prop := sorry

lemma fun_msgSender_abs_of_concrete {s₀ s₉ : State} {var } :
  Spec (fun_msgSender_concrete_of_code.1 var ) s₀ s₉ →
  Spec (A_fun_msgSender var ) s₀ s₉ := by
  unfold fun_msgSender_concrete_of_code A_fun_msgSender
  sorry

end

end Generated.erc20shim.ERC20Shim
