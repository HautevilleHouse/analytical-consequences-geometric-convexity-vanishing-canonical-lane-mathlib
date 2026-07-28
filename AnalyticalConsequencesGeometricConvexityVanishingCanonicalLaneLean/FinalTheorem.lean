import canonicalLaneMathlib.AdmissibleClass
import AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean.ConvexityVanishingLayer
import AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean.AnalyticalConsequencesLayer

namespace HautevilleHouse
namespace AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean

def ConstrainedGeometricConvexityVanishingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧
  ConvexityVanishingLayerClosed convexityVanishingCertificate ∧
  AnalyticalConsequenceLayerClosed analyticalConsequenceCertificate

theorem constrained_geometric_convexity_vanishing_endgame (A : AdmissibleClass) :
    ConstrainedGeometricConvexityVanishingClosure A := by
  refine And.intro (bridge_from_admissible_class A) ?_
  refine And.intro (gate_from_admissible_class A) ?_
  refine And.intro convexity_vanishing_layer_closed_checked ?_
  exact analytical_consequence_layer_closed_checked

end AnalyticalConsequencesGeometricConvexityVanishingCanonicalLaneLean
end HautevilleHouse