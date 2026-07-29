import HautevilleHouse.EquationsNonlinearHysteresisOperatorsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationsNonlinearHysteresisOperatorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.sourceKey = sourceRepository ∧ A.object.theoremObject = sourceDescription

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨by rfl, by rfl⟩

end EquationsNonlinearHysteresisOperatorsCanonicalLaneLean
end HautevilleHouse