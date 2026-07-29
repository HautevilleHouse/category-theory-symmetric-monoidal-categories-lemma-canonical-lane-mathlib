import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.CoherencePackage

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure CoherenceProofTerms (C : CoherencePackage) where
  macLaneProof : C.macLaneCoherence
  conditionProofs : C.coherenceConditions
  naturalityProof : C.braidingNaturality
  hexagonProof : C.hexagonAxiom
  coherencePackageClosed : CoherencePackageClosed C

def CoherencePackage.evidenceTerms (C : CoherencePackage) (E : CoherenceEvidence C) : CoherenceProofTerms C :=
  {
    macLaneProof := E.macLaneCoherenceClosed
    conditionProofs := E.coherenceConditionsClosed
    naturalityProof := E.braidingNaturalityClosed
    hexagonProof := E.hexagonAxiomClosed
    coherencePackageClosed := coherence_closed_from_evidence C E
  }

end HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse