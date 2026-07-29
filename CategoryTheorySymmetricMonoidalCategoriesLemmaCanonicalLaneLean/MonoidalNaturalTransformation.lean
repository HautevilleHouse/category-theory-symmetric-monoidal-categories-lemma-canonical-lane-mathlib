import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure MonoidalNaturalTransformationPackage (A : AdmissibleClass) (F G : A.object.category → A.object.category) where
  underlyingTransformation : ∀ a, F a → G a
  monoidalityCondition : Prop
  monoidalityProof : monoidalityCondition

structure MonoidalNaturalTransformationEvidence (A : AdmissibleClass) (F G : A.object.category → A.object.category) (M : MonoidalNaturalTransformationPackage A F G) where
  monoidalityClosed : M.monoidalityCondition

def MonoidalNaturalTransformationClosed (A : AdmissibleClass) (F G : A.object.category → A.object.category) (M : MonoidalNaturalTransformationPackage A F G) : Prop :=
  M.monoidalityCondition

theorem monoidal_natural_transformation_closed_from_evidence (A : AdmissibleClass) (F G : A.object.category → A.object.category) (M : MonoidalNaturalTransformationPackage A F G) (E : MonoidalNaturalTransformationEvidence A F G M) :
    MonoidalNaturalTransformationClosed A F G M := by
  exact E.monoidalityClosed

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse