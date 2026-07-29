import CompositionAlgebrasCanonicalLaneLean.RiemannianCurvature

/-!
# Quadratic Forms Package
-/

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure QuadraticFormPackage where
  normSquared : Type
  bilinearForm : Type
  nondegenerate : Prop
  positiveDefinite : Prop
  compositionLaw : Prop

structure QuadraticFormEvidence (Q : QuadraticFormPackage) where
  nondegenerateClosed : Q.nondegenerate
  positiveDefiniteClosed : Q.positiveDefinite
  compositionLawClosed : Q.compositionLaw

def QuadraticFormClosed (Q : QuadraticFormPackage) : Prop :=
  Q.nondegenerate ∧ Q.positiveDefinite ∧ Q.compositionLaw

theorem quadratic_form_closed_from_evidence (Q : QuadraticFormPackage) (E : QuadraticFormEvidence Q) :
    QuadraticFormClosed Q := by
  exact And.intro E.nondegenerateClosed (And.intro E.positiveDefiniteClosed E.compositionLawClosed)

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse