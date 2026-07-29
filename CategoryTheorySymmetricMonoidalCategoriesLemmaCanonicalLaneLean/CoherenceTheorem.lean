import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.SymmetricMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure CoherencePackage (C : SymmetricMonoidalCategory) where
  macLaneCoherence : Prop
  strictification : Prop
  macLaneCoherenceClosed : macLaneCoherence
  strictificationClosed : strictification

structure CoherenceEvidence {C : SymmetricMonoidalCategory} (P : CoherencePackage C) where
  macLaneCoherenceClosed : P.macLaneCoherence
  strictificationClosed : P.strictification

def CoherenceClosed {C : SymmetricMonoidalCategory} (P : CoherencePackage C) : Prop :=
  P.macLaneCoherence ∧ P.strictification

theorem coherence_closed_from_evidence {C : SymmetricMonoidalCategory}
    (P : CoherencePackage C) (E : CoherenceEvidence P) : CoherenceClosed P := by
  exact And.intro E.macLaneCoherenceClosed E.strictificationClosed

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse