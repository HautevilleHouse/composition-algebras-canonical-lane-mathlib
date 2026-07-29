import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure NormedDivisionAlgebraPackage (A : AdmissibleClass) where
  underlyingAlgebra : Type u
  norm : underlyingAlgebra → ℝ
  division : underlyingAlgebra → underlyingAlgebra → underlyingAlgebra
  normMultiplicative : Prop
  completeness : Prop
  classification : Prop

structure NormedDivisionAlgebraEvidence {A : AdmissibleClass} (N : NormedDivisionAlgebraPackage A) where
  normMultiplicativeClosed : N.normMultiplicative
  completenessClosed : N.completeness
  classificationClosed : N.classification

def NormedDivisionAlgebraClosed {A : AdmissibleClass} (N : NormedDivisionAlgebraPackage A) : Prop :=
  N.classification

theorem normed_division_algebra_closed_from_evidence
    {A : AdmissibleClass} (N : NormedDivisionAlgebraPackage A)
    (E : NormedDivisionAlgebraEvidence N) : NormedDivisionAlgebraClosed N := by
  exact E.classificationClosed

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse