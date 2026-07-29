import CompositionAlgebrasCanonicalLaneLean.QuadraticForms

/-!
# Normed Division Algebras Package
-/

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure NormedDivisionAlgebraPackage where
  norm : Type
  division : Prop
  normed : Prop
  reals : Prop
  complexes : Prop
  quaternions : Prop
  octonions : Prop
  classificationComplete : Prop

structure NormedDivisionAlgebraEvidence (N : NormedDivisionAlgebraPackage) where
  divisionClosed : N.division
  normedClosed : N.normed
  classificationCompleteClosed : N.classificationComplete

def NormedDivisionAlgebraClosed (N : NormedDivisionAlgebraPackage) : Prop :=
  N.division ∧ N.normed ∧ N.classificationComplete

theorem normed_division_algebra_closed_from_evidence (N : NormedDivisionAlgebraPackage) (E : NormedDivisionAlgebraEvidence N) :
    NormedDivisionAlgebraClosed N := by
  exact And.intro E.divisionClosed (And.intro E.normedClosed E.classificationCompleteClosed)

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse