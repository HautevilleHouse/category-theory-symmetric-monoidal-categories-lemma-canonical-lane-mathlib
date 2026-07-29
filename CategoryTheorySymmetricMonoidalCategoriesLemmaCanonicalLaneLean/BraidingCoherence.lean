import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.SymmetricMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure BraidingCoherenceLemmaPackage (C : SymmetricMonoidalCategoryPackage) where
  braidingNaturality : Prop
  braidingInverse : ∀ (A B : monoidalCategory), C.braiding A B ∘ C.braiding B A = 𝟙 (C.tensorProduct A B) ∧ C.braiding B A ∘ C.braiding A B = 𝟙 (C.tensorProduct B A)
  hexagonEquations : Prop

structure BraidingCoherenceLemmaEvidence {C : SymmetricMonoidalCategoryPackage} (B : BraidingCoherenceLemmaPackage C) where
  braidingNaturalityClosed : B.braidingNaturality
  braidingInverseClosed : B.braidingInverse
  hexagonEquationsClosed : B.hexagonEquations

def BraidingCoherenceLemmaClosed {C : SymmetricMonoidalCategoryPackage} (B : BraidingCoherenceLemmaPackage C) : Prop :=
  B.braidingNaturality ∧ (∀ (A B : monoidalCategory), (C.braiding A B ∘ C.braiding B A = 𝟙 (C.tensorProduct A B)) ∧ (C.braiding B A ∘ C.braiding A B = 𝟙 (C.tensorProduct B A))) ∧ B.hexagonEquations

theorem braiding_coherence_lemma_closed_from_evidence {C : SymmetricMonoidalCategoryPackage} (B : BraidingCoherenceLemmaPackage C) (E : BraidingCoherenceLemmaEvidence B) : BraidingCoherenceLemmaClosed B := by
  exact And.intro E.braidingNaturalityClosed (And.intro E.braidingInverseClosed E.hexagonEquationsClosed)

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse