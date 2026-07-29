import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure FunctorialConstructionsPackage where
  symmetricMonoidalFunctor : Prop
  monoidalNaturalTransformation : Prop
  equivalenceOfSymmetricMonoidalCategories : Prop
  coherencePreserving : Prop
  functorialConstraints : Prop

structure FunctorialConstructionsEvidence (F : FunctorialConstructionsPackage) where
  symmetricMonoidalFunctorClosed : F.symmetricMonoidalFunctor
  monoidalNaturalTransformationClosed : F.monoidalNaturalTransformation
  equivalenceOfSymmetricMonoidalCategoriesClosed : F.equivalenceOfSymmetricMonoidalCategories
  coherencePreservingClosed : F.coherencePreserving
  functorialConstraintsClosed : F.functorialConstraints

def FunctorialConstructionsClosed (F : FunctorialConstructionsPackage) : Prop :=
  F.symmetricMonoidalFunctor ∧ F.monoidalNaturalTransformation ∧ F.equivalenceOfSymmetricMonoidalCategories ∧ F.coherencePreserving ∧ F.functorialConstraints

theorem functorial_constructions_closed_from_evidence (F : FunctorialConstructionsPackage) (E : FunctorialConstructionsEvidence F) : FunctorialConstructionsClosed F := by
  exact And.intro E.symmetricMonoidalFunctorClosed (And.intro E.monoidalNaturalTransformationClosed (And.intro E.equivalenceOfSymmetricMonoidalCategoriesClosed (And.intro E.coherencePreservingClosed E.functorialConstraintsClosed)))

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse