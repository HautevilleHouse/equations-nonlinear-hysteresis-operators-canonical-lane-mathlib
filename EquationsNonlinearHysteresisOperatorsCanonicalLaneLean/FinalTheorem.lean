import HautevilleHouse.EquationsNonlinearHysteresisOperatorsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EquationsNonlinearHysteresisOperatorsCanonicalLaneLean

def HysteresisAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

def NativeClosureTheorem (A : AdmissibleClass) : Prop :=
  HysteresisAdmissibleClosure A

def ConditionalRouteClosure (A : AdmissibleClass) : Prop :=
  HysteresisAdmissibleClosure A ∧ ClassicalSourceBoundaryCarried

theorem hysteresis_admissible_endgame (A : AdmissibleClass) :
    HysteresisAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem native_closure_theorem_checked (A : AdmissibleClass) :
    NativeClosureTheorem A := by
  exact hysteresis_admissible_endgame A

theorem conditional_route_closure_checked (A : AdmissibleClass) :
    ConditionalRouteClosure A := by
  exact And.intro (hysteresis_admissible_endgame A) classical_source_boundary_carried_checked

theorem conditional_route_source_boundary_carried (A : AdmissibleClass) :
    ConditionalRouteClosure A -> ClassicalSourceBoundaryCarried := by
  intro h
  exact h.2

end EquationsNonlinearHysteresisOperatorsCanonicalLaneLean
end HautevilleHouse