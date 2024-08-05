import Clear.ReasoningPrinciple

import Generated.erc20shim.ERC20Shim.fun_msgSender
import Generated.erc20shim.ERC20Shim.fun_spendAllowance
import Generated.erc20shim.ERC20Shim.fun__transfer

import Generated.erc20shim.ERC20Shim.fun_transferFrom_gen

import Generated.erc20shim.ERC20Shim.fun_transferFrom_user


namespace Generated.erc20shim.ERC20Shim

section

open Clear EVMState Ast Expr Stmt FunctionDefinition State Interpreter ExecLemmas OutOfFuelLemmas Abstraction YulNotation PrimOps ReasoningPrinciple Utilities Generated.erc20shim ERC20Shim

lemma fun_transferFrom_abs_of_code {s₀ s₉ : State} {var var_from var_to var_value} {fuel : Nat} :
  execCall fuel fun_transferFrom [var] (s₀, [var_from, var_to, var_value]) = s₉ →
  Spec (A_fun_transferFrom var var_from var_to var_value) s₀ s₉
:= λ h ↦ fun_transferFrom_abs_of_concrete (fun_transferFrom_concrete_of_code.2 h)

end

end Generated.erc20shim.ERC20Shim
