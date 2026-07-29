import canonicalLaneMathlib.CompositionAlgebraStructure

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure RealDivisionAlgebra extends CompositionAlgebra where
  noZeroDivisors : ∀ x y : carrier, multiplication x y = unity → x = unity ∨ y = unity

structure RealDivisionAlgebraEvidence (A : RealDivisionAlgebra) where
  noZeroDivisorsClosed : A.noZeroDivisors

theorem real_division_algebra_closed (A : RealDivisionAlgebra) (E : RealDivisionAlgebraEvidence A) : A.noZeroDivisors := by
  exact E.noZeroDivisorsClosed

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse