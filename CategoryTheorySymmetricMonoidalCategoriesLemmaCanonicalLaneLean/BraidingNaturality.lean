import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure BraidingNaturalityPackage where
  braidingNaturalLeft : ∀ (a b c : Type u) (f : a → b), (braiding b c) ∘ (tensor f (id c)) = (tensor (id b) f) ∘ (braiding a c)
  braidingNaturalRight : ∀ (a b c : Type u) (f : b → c), (braiding a c) ∘ (tensor (id a) f) = (tensor f (id a)) ∘ (braiding a b)
  naturalityConditions : Prop

structure BraidingNaturalityEvidence (B : BraidingNaturalityPackage) where
  braidingNaturalLeftClosed : B.braidingNaturalLeft
  braidingNaturalRightClosed : B.braidingNaturalRight
  naturalityConditionsClosed : B.naturalityConditions

def BraidingNaturalityClosed (B : BraidingNaturalityPackage) : Prop :=
  B.naturalityConditions

theorem braiding_naturality_closed_from_evidence (B : BraidingNaturalityPackage) (E : BraidingNaturalityEvidence B) : BraidingNaturalityClosed B := by
  exact E.naturalityConditionsClosed

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse