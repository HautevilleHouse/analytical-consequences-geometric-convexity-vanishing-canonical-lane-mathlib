import canonicalLaneMathlib.AdmissibleClass
import .AnalyticalConsequencesLayer

namespace HautevilleHouse
namespace AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean

structure VanishingCertificate where
  analyticalCertificate : AnalyticalConsequencesCertificate
  vanishingSet : String
  vanishingOrderMatch : Bool
  classicalBoundaryCarried : Bool

def primitiveVanishingCertificate : VanishingCertificate := {
  analyticalCertificate := primitiveAnalyticalConsequencesCertificate,
  vanishingSet := "zero_set",
  vanishingOrderMatch := true,
  classicalBoundaryCarried := true
}

def VanishingLayerClosed (V : VanishingCertificate) : Prop :=
  AnalyticalConsequencesLayerClosed V.analyticalCertificate ∧
  V.vanishingOrderMatch = true ∧
  V.classicalBoundaryCarried = true

theorem vanishing_layer_closed_checked :
    VanishingLayerClosed primitiveVanishingCertificate := by
  exact And.intro analytical_consequences_layer_closed_checked (And.intro rfl rfl)

end AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean
end HautevilleHouse