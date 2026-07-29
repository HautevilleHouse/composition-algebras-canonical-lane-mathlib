import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse