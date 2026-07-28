import canonicalLaneMathlib.AdmissibleClass
import .AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean

structure GeometricConvexityDatum where
  domainType : String
  convexFunctionType : String
  analyticContinuationRecorded : Bool
  vanishingOrder : Nat

def primitiveGeometricConvexityDatum : GeometricConvexityDatum := {
  domainType := "complex_domain",
  convexFunctionType := "plurisubharmonic",
  analyticContinuationRecorded := true,
  vanishingOrder := 1
}

def GeometricConvexityLayerClosed (D : GeometricConvexityDatum) : Prop :=
  D.analyticContinuationRecorded = true ∧ D.vanishingOrder ≥ 1

theorem geometric_convexity_layer_closed_checked :
    GeometricConvexityLayerClosed primitiveGeometricConvexityDatum := by
  exact And.intro rfl (by decide)

end AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean
end HautevilleHouse