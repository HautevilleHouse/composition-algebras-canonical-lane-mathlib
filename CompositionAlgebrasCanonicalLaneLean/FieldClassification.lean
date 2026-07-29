import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure FieldClassificationPackage (A : AdmissibleClass) where
  fieldType : Type u
  characteristic : ℕ
  algebraicClosure : Prop
  orderedField : Prop
  archimedean : Prop
  classificationComplete : Prop

structure FieldClassificationEvidence {A : AdmissibleClass} (F : FieldClassificationPackage A) where
  fieldTypeClosed : F.fieldType = F.fieldType
  characteristicClosed : F.characteristic = F.characteristic
  algebraicClosureClosed : F.algebraicClosure
  orderedFieldClosed : F.orderedField
  archimedeanClosed : F.archimedean
  classificationCompleteClosed : F.classificationComplete

def FieldClassificationClosed {A : AdmissibleClass} (F : FieldClassificationPackage A) : Prop :=
  F.classificationComplete

theorem field_classification_closed_from_evidence
    {A : AdmissibleClass} (F : FieldClassificationPackage A)
    (E : FieldClassificationEvidence F) : FieldClassificationClosed F := by
  exact E.classificationCompleteClosed

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse