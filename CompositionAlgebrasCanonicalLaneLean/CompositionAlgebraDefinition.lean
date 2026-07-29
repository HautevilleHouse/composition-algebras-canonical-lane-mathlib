import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure CompositionAlgebra (k : Type u) [Field k] where
  carrier : Type v
  inst : Algebra k carrier
  involution : carrier → carrier
  norm : carrier → k
  quadraticForm : carrier → k
  trace : carrier → k
  normSquaredIsQuadratic : ∀ x : carrier, norm x ^ 2 = quadraticForm x
  traceIsLinear : LinearMap k carrier k
  traceOfInvolution : ∀ x : carrier, trace (involution x) = trace x
  normMultIsMultiplicative : ∀ x y : carrier, norm (x * y) = norm x * norm y

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse