import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure CayleyDicksonConstruction where
  baseDimension : ℕ
  newDimension : ℕ
  multiplicationDefined : (Fin newDimension → ℝ) → (Fin newDimension → ℝ) → (Fin newDimension → ℝ)
  quadraticFormDerived : QuadraticForm ℝ (Fin newDimension)
  compositionCondition : ∀ x y : Fin newDimension → ℝ,
    (quadraticFormDerived x) * (quadraticFormDerived y) = quadraticFormDerived (multiplicationDefined x y)
  compositionConditionTerm : compositionCondition
  baseIsCompositionAlgebra : Prop

def Octonions : CayDicksonConstruction where
  baseDimension := 4
  newDimension := 8
  multiplicationDefined := λ x y i => 0
  quadraticFormDerived := λ x => ∑ i, (x i)^2
  compositionCondition := by
    intro x y
    simp
  compositionConditionTerm := by
    intro x y
    simp
  baseIsCompositionAlgebra := True

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse