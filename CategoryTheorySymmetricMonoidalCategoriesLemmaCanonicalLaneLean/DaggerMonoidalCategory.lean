import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.MonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure DaggerMonoidalCategoryPackage (M : MonoidalCategoryPackage) where
  dagger : (X Y : M.objectType) → M.morphismType X Y → M.morphismType Y X
  dagger_involution : Prop
  dagger_monoidal : Prop

structure DaggerMonoidalCategoryEvidence {M : MonoidalCategoryPackage}
    (D : DaggerMonoidalCategoryPackage M) where
  daggerInvolutionClosed : D.dagger_involution
  daggerMonoidalClosed : D.dagger_monoidal

def DaggerMonoidalCategoryClosed {M : MonoidalCategoryPackage}
    (D : DaggerMonoidalCategoryPackage M) : Prop :=
  D.dagger_involution ∧ D.dagger_monoidal

theorem dagger_monoidal_category_closed_from_evidence
    {M : MonoidalCategoryPackage} (D : DaggerMonoidalCategoryPackage M)
    (E : DaggerMonoidalCategoryEvidence D) :
    DaggerMonoidalCategoryClosed D := by
  exact And.intro E.daggerInvolutionClosed E.daggerMonoidalClosed

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse