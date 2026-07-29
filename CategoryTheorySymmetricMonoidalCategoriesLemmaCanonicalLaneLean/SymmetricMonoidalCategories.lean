import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure SymmetricMonoidalCategoryPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  tensorProd : objects → objects → objects
  tensorUnit : objects
  associator : ∀ a b c, morphisms (tensorProd (tensorProd a b) c) (tensorProd a (tensorProd b c))
  leftUnitor : ∀ a, morphisms (tensorProd tensorUnit a) a
  rightUnitor : ∀ a, morphisms (tensorProd a tensorUnit) a
  braiding : ∀ a b, morphisms (tensorProd a b) (tensorProd b a)
  pentagonCondition : Prop
  triangleCondition : Prop
  hexagonCondition : Prop
  symmetryCondition : ∀ a b, (braiding a b) ∘ (braiding b a) = 𝟙 (tensorProd a b)
  coherenceConditions : Prop

structure SymmetricMonoidalCategoryEvidence (P : SymmetricMonoidalCategoryPackage) where
  pentagonConditionClosed : P.pentagonCondition
  triangleConditionClosed : P.triangleCondition
  hexagonConditionClosed : P.hexagonCondition
  symmetryConditionClosed : ∀ a b, P.symmetryCondition a b
  coherenceConditionsClosed : P.coherenceConditions

def SymmetricMonoidalCategoryClosed (P : SymmetricMonoidalCategoryPackage) : Prop :=
  P.pentagonCondition ∧ P.triangleCondition ∧ P.hexagonCondition ∧ P.coherenceConditions

theorem symmetric_monoidal_category_closed_from_evidence (P : SymmetricMonoidalCategoryPackage) (E : SymmetricMonoidalCategoryEvidence P) : SymmetricMonoidalCategoryClosed P := by
  exact And.intro E.pentagonConditionClosed (And.intro E.triangleConditionClosed (And.intro E.hexagonConditionClosed E.coherenceConditionsClosed))

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse