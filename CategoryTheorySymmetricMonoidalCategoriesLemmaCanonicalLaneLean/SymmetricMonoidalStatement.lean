import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  categoricalStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceRepository : String := "category-theory-symmetric-monoidal-categories-lemma-canonical-lane"

def sourceDescription : String := "Symmetric monoidal categories coherence theorem"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "classical categorical coherence boundary",
  categoricalStatement := "Every symmetric monoidal category satisfies Mac Lane's coherence theorem",
  certificateLane := "categorical_constrained",
  carriedRemainder := "full categorical foundation outside constrained lane"
}

theorem theorem_statement_defined : sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

end HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse