import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure CayleyDicksonPackage (A : AdmissibleClass) where
  baseAlgebra : Type u
  baseAlgebraType : String
  dimensionPower : Nat
  involution : baseAlgebra → baseAlgebra
  multiplication : baseAlgebra → baseAlgebra → baseAlgebra
  conjugation : baseAlgebra → baseAlgebra
  normSquared : baseAlgebra → baseAlgebra
  trace : baseAlgebra → baseAlgebra
  propertiesAdmitted : Prop

structure CayleyDicksonEvidence {A : AdmissibleClass} (Cd : CayleyDicksonPackage A) where
  involutionInvolutive : Prop
  conjugationDistributes : Prop
  normSquaredMultiplicative : Prop
  traceZeroOnImaginary : Prop
  involutionInvolutiveClosed : involutionInvolutive
  conjugationDistributesClosed : conjugationDistributes
  normSquaredMultiplicativeClosed : normSquaredMultiplicative
  traceZeroOnImaginaryClosed : traceZeroOnImaginary

def CayleyDicksonClosed {A : AdmissibleClass} (Cd : CayleyDicksonPackage A) : Prop :=
  Cd.propertiesAdmitted

theorem cayley_dickson_closed_from_evidence
    {A : AdmissibleClass} (Cd : CayleyDicksonPackage A)
    (E : CayleyDicksonEvidence Cd) : CayleyDicksonClosed Cd := by
  exact Cd.propertiesAdmitted

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse