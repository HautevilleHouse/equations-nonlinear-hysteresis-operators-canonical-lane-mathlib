import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationsNonlinearHysteresisOperatorsCanonicalLaneLean

structure HysteresisTheoremObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure AdmissibleClass where
  object : HysteresisTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.sourceKey = sourceRepository ∧ A.object.theoremObject = sourceDescription) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EquationsNonlinearHysteresisOperatorsCanonicalLaneLean
end HautevilleHouse