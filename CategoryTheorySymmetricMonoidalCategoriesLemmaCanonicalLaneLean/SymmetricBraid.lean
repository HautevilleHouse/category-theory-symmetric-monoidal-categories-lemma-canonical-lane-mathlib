import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure SymmetricBraidPackage where
  braidDefinition : Prop
  symmetryCondition : Prop
  involutiveBraid : Prop
  braidNaturality : Prop
  braidCompatibility : Prop

structure SymmetricBraidEvidence (S : SymmetricBraidPackage) where
  braidDefinitionClosed : S.braidDefinition
  symmetryConditionClosed : S.symmetryCondition
  involutiveBraidClosed : S.involutiveBraid
  braidNaturalityClosed : S.braidNaturality
  braidCompatibilityClosed : S.braidCompatibility

def SymmetricBraidClosed (S : SymmetricBraidPackage) : Prop :=
  S.braidDefinition ∧ S.symmetryCondition ∧ S.involutiveBraid ∧ S.braidNaturality ∧ S.braidCompatibility

theorem symmetric_braid_closed_from_evidence
    (S : SymmetricBraidPackage) (E : SymmetricBraidEvidence S) :
    SymmetricBraidClosed S := by
  exact And.intro E.braidDefinitionClosed
    (And.intro E.symmetryConditionClosed
      (And.intro E.involutiveBraidClosed
        (And.intro E.braidNaturalityClosed E.braidCompatibilityClosed)))

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse