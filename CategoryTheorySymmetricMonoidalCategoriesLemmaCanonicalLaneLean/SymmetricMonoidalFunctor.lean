import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.SymmetricMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure SymmetricMonoidalFunctorPackage {C D : MonoidalCategoryPackage}
    (SC : SymmetricMonoidalCategoryPackage C)
    (SD : SymmetricMonoidalCategoryPackage D) where
  functor : C.objectType → D.objectType
  tensorPreserving : Prop
  unitPreserving : Prop
  braidingPreserving : Prop

structure SymmetricMonoidalFunctorEvidence {C D : MonoidalCategoryPackage}
    {SC : SymmetricMonoidalCategoryPackage C}
    {SD : SymmetricMonoidalCategoryPackage D}
    (F : SymmetricMonoidalFunctorPackage SC SD) where
  tensorPreservingClosed : F.tensorPreserving
  unitPreservingClosed : F.unitPreserving
  braidingPreservingClosed : F.braidingPreserving

def SymmetricMonoidalFunctorClosed {C D : MonoidalCategoryPackage}
    {SC : SymmetricMonoidalCategoryPackage C}
    {SD : SymmetricMonoidalCategoryPackage D}
    (F : SymmetricMonoidalFunctorPackage SC SD) : Prop :=
  F.tensorPreserving ∧ F.unitPreserving ∧ F.braidingPreserving

theorem symmetric_monoidal_functor_closed_from_evidence
    {C D : MonoidalCategoryPackage} {SC : SymmetricMonoidalCategoryPackage C}
    {SD : SymmetricMonoidalCategoryPackage D}
    (F : SymmetricMonoidalFunctorPackage SC SD)
    (E : SymmetricMonoidalFunctorEvidence F) :
    SymmetricMonoidalFunctorClosed F := by
  exact And.intro E.tensorPreservingClosed
    (And.intro E.unitPreservingClosed E.braidingPreservingClosed)

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse