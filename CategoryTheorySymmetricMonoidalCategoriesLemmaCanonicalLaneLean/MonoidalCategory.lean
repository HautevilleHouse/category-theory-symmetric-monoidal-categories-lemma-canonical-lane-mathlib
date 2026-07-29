import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure MonoidalCategoryPackage where
  objectType : Type u
  morphismType : objectType → objectType → Type v
  tensorProduct : objectType → objectType → objectType
  tensorUnit : objectType
  associator : (X Y Z : objectType) → morphismType ((tensorProduct (tensorProduct X Y)) Z) (tensorProduct X (tensorProduct Y Z))
  leftUnitor : (X : objectType) → morphismType (tensorProduct tensorUnit X) X
  rightUnitor : (X : objectType) → morphismType (tensorProduct X tensorUnit) X
  pentagonCondition : Prop
  triangleCondition : Prop
  coherenceCondition : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategoryPackage) where
  pentagonConditionClosed : M.pentagonCondition
  triangleConditionClosed : M.triangleCondition
  coherenceConditionClosed : M.coherenceCondition

def MonoidalCategoryClosed (M : MonoidalCategoryPackage) : Prop :=
  M.pentagonCondition ∧ M.triangleCondition ∧ M.coherenceCondition

theorem monoidal_category_closed_from_evidence
    (M : MonoidalCategoryPackage) (E : MonoidalCategoryEvidence M) :
    MonoidalCategoryClosed M := by
  exact And.intro E.pentagonConditionClosed
    (And.intro E.triangleConditionClosed E.coherenceConditionClosed)

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse