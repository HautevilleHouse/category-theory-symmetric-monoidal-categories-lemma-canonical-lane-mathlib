import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.MonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure SymmetricMonoidalStructurePackage (M : MonoidalCategoryPackage) where
  braiding : (X Y : M.objectType) → M.morphismType (M.tensorProduct X Y) (M.tensorProduct Y X)
  braidingNaturality : Prop
  hexagonAxiomForward : Prop
  hexagonAxiomBackward : Prop
  symmetricCondition : Prop

structure SymmetricMonoidalStructureEvidence {M : MonoidalCategoryPackage} (S : SymmetricMonoidalStructurePackage M) where
  braidingNaturalityClosed : S.braidingNaturality
  hexagonAxiomForwardClosed : S.hexagonAxiomForward
  hexagonAxiomBackwardClosed : S.hexagonAxiomBackward
  symmetricConditionClosed : S.symmetricCondition

def SymmetricMonoidalStructureClosed {M : MonoidalCategoryPackage} (S : SymmetricMonoidalStructurePackage M) : Prop :=
  S.braidingNaturality ∧ S.hexagonAxiomForward ∧ S.hexagonAxiomBackward ∧ S.symmetricCondition

theorem symmetric_monoidal_structure_closed_from_evidence {M : MonoidalCategoryPackage}
    (S : SymmetricMonoidalStructurePackage M) (E : SymmetricMonoidalStructureEvidence S) :
    SymmetricMonoidalStructureClosed S := by
  exact And.intro E.braidingNaturalityClosed
    (And.intro E.hexagonAxiomForwardClosed
      (And.intro E.hexagonAxiomBackwardClosed E.symmetricConditionClosed))

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse