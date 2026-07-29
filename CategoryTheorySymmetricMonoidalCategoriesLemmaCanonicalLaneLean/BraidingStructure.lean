import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.SymmetricMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure BraidingPackage (C : SymmetricMonoidalCategory) where
  hexagonIdentities : Prop
  inverseBraiding : Prop
  hexagonIdentitiesClosed : hexagonIdentities
  inverseBraidingClosed : inverseBraiding

structure BraidingEvidence {C : SymmetricMonoidalCategory} (B : BraidingPackage C) where
  hexagonIdentitiesClosed : B.hexagonIdentities
  inverseBraidingClosed : B.inverseBraiding

def BraidingClosed {C : SymmetricMonoidalCategory} (B : BraidingPackage C) : Prop :=
  B.hexagonIdentities ∧ B.inverseBraiding

theorem braiding_closed_from_evidence {C : SymmetricMonoidalCategory}
    (B : BraidingPackage C) (E : BraidingEvidence B) : BraidingClosed B := by
  exact And.intro E.hexagonIdentitiesClosed E.inverseBraidingClosed

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse