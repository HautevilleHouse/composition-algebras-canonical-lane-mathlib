import CompositionAlgebrasCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Algebra.Group.Basic

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CompositionAlgebra where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  additiveGroup : AddCommGroup carrier
  ring : Ring carrier
  quadraticForm : carrier → ℝ
  normSquared : carrier → ℝ
  normSquaredHomomorphism : ∀ a b, normSquared (a * b) = normSquared a * normSquared b
  alternativeLaws : ∀ a b, a*(a*b) = (a*a)*b ∧ (a*b)*b = a*(b*b)

structure CompositionAdmittedObject where
  compositionAlgebra : CompositionAlgebra
  divisionAlgebra : Prop
  compositionAlgebraClosed : Prop
  conclusion : compositionAlgebraClosed

structure CompositionEndgameState where
  object : CompositionAdmittedObject

def CompositionWitnessClosed (O : CompositionAdmittedObject) : Prop :=
  O.compositionAlgebraClosed

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse