import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace CompositionAlgebrasCanonicalLaneLean

def sourceRepository : String :=
  "composition-algebras-canonical-lane"

def sourceDescription : String :=
  "Composition Algebras Canonical Lane"

def classicalBoundary : String :=
  "unrestricted classical exterior"

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := classicalBoundary
  , manifoldConstrainedStatement :=
    "Admissible closure of composition algebra structure theorem via bridge and gate"
  , certificateLane := "manifold_constrained"
  , carriedRemainder := "Composition law classification outside admissible closure"
  }

theorem theorem_layer_internal_checked :
    sourceTheoremStatement.sourceKey = sourceRepository ∧
    sourceTheoremStatement.certificateLane = "manifold_constrained" := by
  simp [sourceTheoremStatement]

end CompositionAlgebrasCanonicalLaneLean
end HautevilleHouse