import CompositionAlgebrasCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def compositionProjection : Projection CompositionEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem composition_projection_idempotent (x : CompositionEndgameState) :
    compositionProjection.toFun (compositionProjection.toFun x) = compositionProjection.toFun x := by
  exact compositionProjection.idempotent x

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse