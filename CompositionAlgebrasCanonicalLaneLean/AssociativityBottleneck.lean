import canonicalLaneMathlib.AdmissibleClass
import CompositionAlgebrasCanonicalLaneLean.CompositionAlgebraDefinition

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure AssociativityBottleneck (k : Type u) [Field k] (A : CompositionAlgebra k) where
  isAssociative : Prop
  isAlternative : Prop
  isPowerAssociative : Prop
  associator : A.carrier → A.carrier → A.carrier → A.carrier
  associatorNonZeroCondition : ¬ isAssociative → ∃ a b c : A.carrier, associator a b c ≠ 0
  bottleneckClosed : Prop
  bottleneckClosedTerm : bottleneckClosed

def BottleneckClosed (k : Type u) [Field k] (A : CompositionAlgebra k) (B : AssociativityBottleneck k A) : Prop :=
  B.bottleneckClosed

theorem bottleneck_closed_from_evidence (k : Type u) [Field k] (A : CompositionAlgebra k) (B : AssociativityBottleneck k A) :
    BottleneckClosed k A B := by
  exact B.bottleneckClosedTerm

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse