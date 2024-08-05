import Clear.ReasoningPrinciple

import Generated.erc20shim.ERC20Shim.abi_encode_tuple_address

import Generated.erc20shim.ERC20Shim.Common.if_3812165059632449189_gen

import Generated.erc20shim.ERC20Shim.Common.if_3812165059632449189_user


namespace ERC20Shim.Common

section

open Clear EVMState Ast Expr Stmt FunctionDefinition State Interpreter ExecLemmas OutOfFuelLemmas Abstraction YulNotation PrimOps ReasoningPrinciple Utilities Generated.erc20shim ERC20Shim

lemma if_3812165059632449189_abs_of_code {s₀ : State} {fuel : Nat} :
  ∀ s₉, exec fuel if_3812165059632449189 s₀ = s₉ →
        Spec A_if_3812165059632449189 s₀ s₉ :=
  λ _ h ↦ if_3812165059632449189_abs_of_concrete (if_3812165059632449189_concrete_of_code.2 h)

end

end ERC20Shim.Common
