import CompositionAlgebrasCanonicalLaneLean.NormedDivisionAlgebras

/-!
# Hurwitz Theorem Package
-/

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure HurwitzTheoremPackage where
  compositionAlgebra : Type
  dimension : ℕ
  hurwitzBound : Prop
  onlyDimensions : Prop
  classification : Prop

structure HurwitzTheoremEvidence (H : HurwitzTheoremPackage) where
  hurwitzBoundClosed : H.hurwitzBound
  onlyDimensionsClosed : H.onlyDimensions
  classificationClosed : H.classification

def HurwitzTheoremClosed (H : HurwitzTheoremPackage) : Prop :=
  H.hurwitzBound ∧ H.onlyDimensions ∧ H.classification

theorem hurwitz_theorem_closed_from_evidence (H : HurwitzTheoremPackage) (E : HurwitzTheoremEvidence H) :
    HurwitzTheoremClosed H := by
  exact And.intro E.hurwitzBoundClosed (And.intro E.onlyDimensionsClosed E.classificationClosed)

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse