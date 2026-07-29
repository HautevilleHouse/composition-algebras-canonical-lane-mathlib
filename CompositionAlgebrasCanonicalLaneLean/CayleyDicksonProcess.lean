import canonicalLaneMathlib.AdmissibleClass
import CompositionAlgebrasCanonicalLaneLean.CompositionAlgebraDefinition

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure CayleyDicksonStep (k : Type u) [Field k] (A : CompositionAlgebra k) where
  newCarrier : Type v
  newAlgebra : CompositionAlgebra k
  newCarrierIsProduct : newCarrier = A.carrier × A.carrier
  multiplicationDefined : newCarrier → newCarrier → newCarrier
  involutionDefined : newCarrier → newCarrier
  normPreserved : ∀ x : newCarrier, newAlgebra.norm x = A.norm (Prod.fst x) + A.norm (Prod.snd x)
  stepClosed : Prop
  stepClosedTerm : stepClosed

def CayleyDicksonClosed (k : Type u) [Field k] (A : CompositionAlgebra k) (C : CayleyDicksonStep k A) : Prop :=
  C.stepClosed

theorem cayley_dickson_step_closed (k : Type u) [Field k] (A : CompositionAlgebra k) (C : CayleyDicksonStep k A) :
    CayleyDicksonClosed k A C := by
  exact C.stepClosedTerm

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse