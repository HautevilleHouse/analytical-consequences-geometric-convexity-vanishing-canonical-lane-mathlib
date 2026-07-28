import AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean
end HautevilleHouse
