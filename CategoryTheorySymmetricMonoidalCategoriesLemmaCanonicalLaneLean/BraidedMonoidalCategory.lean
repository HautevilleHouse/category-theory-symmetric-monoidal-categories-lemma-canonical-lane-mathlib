import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.MonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure BraidedMonoidalCategoryPackage (M : MonoidalCategoryPackage) where
  braiding : (X Y : M.objectType) → M.morphismType (M.tensorProduct X Y) (M.tensorProduct Y X)
  hexagonCondition : Prop
  naturalityCondition : Prop

structure BraidedMonoidalCategoryEvidence {M : MonoidalCategoryPackage}
    (B : BraidedMonoidalCategoryPackage M) where
  hexagonConditionClosed : B.hexagonCondition
  naturalityConditionClosed : B.naturalityCondition

def BraidedMonoidalCategoryClosed {M : MonoidalCategoryPackage}
    (B : BraidedMonoidalCategoryPackage M) : Prop :=
  B.hexagonCondition ∧ B.naturalityCondition

theorem braided_monoidal_category_closed_from_evidence
    {M : MonoidalCategoryPackage} (B : BraidedMonoidalCategoryPackage M)
    (E : BraidedMonoidalCategoryEvidence B) :
    BraidedMonoidalCategoryClosed B := by
  exact And.intro E.hexagonConditionClosed E.naturalityConditionClosed

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse