import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure CoherenceConditionsPackage where
  pentagonCoherence : Prop
  triangleCoherence : Prop
  hexagonCoherence : Prop
  braidingNaturality : Prop
  unitNaturality : Prop
  coherenceDiagramsCommute : Prop

structure CoherenceConditionsEvidence (C : CoherenceConditionsPackage) where
  pentagonCoherenceClosed : C.pentagonCoherence
  triangleCoherenceClosed : C.triangleCoherence
  hexagonCoherenceClosed : C.hexagonCoherence
  braidingNaturalityClosed : C.braidingNaturality
  unitNaturalityClosed : C.unitNaturality
  coherenceDiagramsCommuteClosed : C.coherenceDiagramsCommute

def CoherenceConditionsClosed (C : CoherenceConditionsPackage) : Prop :=
  C.pentagonCoherence ∧ C.triangleCoherence ∧ C.hexagonCoherence ∧ C.braidingNaturality ∧ C.unitNaturality ∧ C.coherenceDiagramsCommute

theorem coherence_conditions_closed_from_evidence (C : CoherenceConditionsPackage) (E : CoherenceConditionsEvidence C) : CoherenceConditionsClosed C := by
  exact And.intro E.pentagonCoherenceClosed (And.intro E.triangleCoherenceClosed (And.intro E.hexagonCoherenceClosed (And.intro E.braidingNaturalityClosed (And.intro E.unitNaturalityClosed E.coherenceDiagramsCommuteClosed))))

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse