import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompositionAlgebrasCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CompositionAlgebrasCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

def ConstrainedCompositionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_composition_endgame (A : AdmissibleClass) :
    ConstrainedCompositionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse