import canonicalLaneMathlib.AdmissibleClass
import CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.SymmetricMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure CoherencePackage (C : SymmetricMonoidalCategoryObject) where
  macLaneCoherence : Prop
  braidingNaturality : Prop
  associatorNaturality : Prop
  unitNaturality : Prop

def CoherencePackageClosed (C : SymmetricMonoidalCategoryObject) (P : CoherencePackage C) : Prop :=
  P.macLaneCoherence ∧ P.braidingNaturality ∧ P.associatorNaturality ∧ P.unitNaturality

structure CoherencePackageEvidence (C : SymmetricMonoidalCategoryObject) (P : CoherencePackage C) where
  macLaneCoherenceClosed : P.macLaneCoherence
  braidingNaturalityClosed : P.braidingNaturality
  associatorNaturalityClosed : P.associatorNaturality
  unitNaturalityClosed : P.unitNaturality

theorem coherence_package_closed_from_evidence (C : SymmetricMonoidalCategoryObject) (P : CoherencePackage C) (E : CoherencePackageEvidence C P) :
    CoherencePackageClosed C P := by
  exact And.intro E.macLaneCoherenceClosed (And.intro E.braidingNaturalityClosed (And.intro E.associatorNaturalityClosed E.unitNaturalityClosed))

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse