import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure CompositionAlgebra where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  scalarMultiplication : ℝ → carrier → carrier
  norm : carrier → ℝ
  unity : carrier
  bilinear : Prop
  multiplicativeNorm : ∀ x y : carrier, norm (multiplication x y) = norm x * norm y
  unityLeft : ∀ x : carrier, multiplication unity x = x
  unityRight : ∀ x : carrier, multiplication x unity = x
  normSquared : ∀ x : carrier, norm x * norm x = scalarMultiplication (norm x) x

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse