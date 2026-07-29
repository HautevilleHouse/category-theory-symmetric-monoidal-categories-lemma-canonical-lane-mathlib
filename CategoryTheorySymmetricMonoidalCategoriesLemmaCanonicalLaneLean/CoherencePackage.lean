import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.SymmetricMonoidalObjects

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure CoherencePackage where
  macLaneCoherence : Prop
  coherenceConditions : Prop
  braidingNaturality : Prop
  hexagonAxiom : Prop

deriving Repr, DecidableEq

structure CoherenceEvidence (C : CoherencePackage) where
  macLaneCoherenceClosed : C.macLaneCoherence
  coherenceConditionsClosed : C.coherenceConditions
  braidingNaturalityClosed : C.braidingNaturality
  hexagonAxiomClosed : C.hexagonAxiom

def CoherencePackageClosed (C : CoherencePackage) : Prop :=
  C.macLaneCoherence ∧ C.coherenceConditions ∧ C.braidingNaturality ∧ C.hexagonAxiom

theorem coherence_closed_from_evidence (C : CoherencePackage) (E : CoherenceEvidence C) :
    CoherencePackageClosed C := by
  exact And.intro E.macLaneCoherenceClosed
    (And.intro E.coherenceConditionsClosed
      (And.intro E.braidingNaturalityClosed E.hexagonAxiomClosed))

end HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse