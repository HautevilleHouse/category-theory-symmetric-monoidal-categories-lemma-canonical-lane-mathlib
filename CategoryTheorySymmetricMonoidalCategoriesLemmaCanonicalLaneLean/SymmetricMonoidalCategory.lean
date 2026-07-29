import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure SymmetricMonoidalCategoryPackage where
  monoidalCategory : Type u
  tensorProduct : monoidalCategory → monoidalCategory → monoidalCategory
  unitObject : monoidalCategory
  associator : ∀ (A B C : monoidalCategory), tensorProduct (tensorProduct A B) C ≅ tensorProduct A (tensorProduct B C)
  leftUnitor : ∀ (A : monoidalCategory), tensorProduct unitObject A ≅ A
  rightUnitor : ∀ (A : monoidalCategory), tensorProduct A unitObject ≅ A
  braiding : ∀ (A B : monoidalCategory), tensorProduct A B ≅ tensorProduct B A
  pentagonCoherence : Prop
  triangleCoherence : Prop
  hexagonCoherence : Prop
  symmetryInvolutive : Prop

structure SymmetricMonoidalCategoryEvidence (C : SymmetricMonoidalCategoryPackage) where
  pentagonCoherenceClosed : C.pentagonCoherence
  triangleCoherenceClosed : C.triangleCoherence
  hexagonCoherenceClosed : C.hexagonCoherence
  symmetryInvolutiveClosed : C.symmetryInvolutive

def SymmetricMonoidalCategoryClosed (C : SymmetricMonoidalCategoryPackage) : Prop :=
  C.pentagonCoherence ∧ C.triangleCoherence ∧ C.hexagonCoherence ∧ C.symmetryInvolutive

theorem symmetric_monoidal_category_closed_from_evidence (C : SymmetricMonoidalCategoryPackage) (E : SymmetricMonoidalCategoryEvidence C) : SymmetricMonoidalCategoryClosed C := by
  exact And.intro E.pentagonCoherenceClosed (And.intro E.triangleCoherenceClosed (And.intro E.hexagonCoherenceClosed E.symmetryInvolutiveClosed))

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse