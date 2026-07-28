import AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean.AdmissibleClass
import AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.convexModelChecked,
    A.object.vanishingBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean
end HautevilleHouse
