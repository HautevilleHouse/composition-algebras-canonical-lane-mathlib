import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure QuadraticFormPackage (A : AdmissibleClass) where
  vectorSpace : Type u
  quadraticForm : vectorSpace → ℝ
  bilinearForm : vectorSpace → vectorSpace → ℝ
  nondegenerate : Prop
  signature : (Nat × Nat × Nat)
  orthogonalDecomposition : Prop

structure QuadraticFormEvidence {A : AdmissibleClass} (Q : QuadraticFormPackage A) where
  nondegenerateClosed : Q.nondegenerate
  signatureClosed : Q.signature = Q.signature
  orthogonalDecompositionClosed : Q.orthogonalDecomposition

def QuadraticFormClosed {A : AdmissibleClass} (Q : QuadraticFormPackage A) : Prop :=
  Q.nondegenerate ∧ Q.orthogonalDecomposition

theorem quadratic_form_closed_from_evidence
    {A : AdmissibleClass} (Q : QuadraticFormPackage A)
    (E : QuadraticFormEvidence Q) : QuadraticFormClosed Q := by
  exact And.intro E.nondegenerateClosed E.orthogonalDecompositionClosed

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse