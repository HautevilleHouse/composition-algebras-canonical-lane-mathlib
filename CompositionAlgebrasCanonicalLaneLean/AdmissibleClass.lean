import CompositionAlgebrasCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure AdmissibleClass where
  object : CompositionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CompositionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse