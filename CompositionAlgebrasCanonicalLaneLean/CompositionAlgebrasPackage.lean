import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

structure CompositionAlgebra (F : Type u) where
  addition : F → F → F
  multiplication : F → F → F
  norm : F → ℝ
  normQuadratic : (mul a a) = (norm a) ^ 2  -- placeholder, needs quadratic form

def NormedDivisionAlgebra : Prop := True

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse