import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.SymmetricMonoidalStructure

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure StrictMonoidalCategoryPackage where
  category : Type u
  tensorProduct : category → category → category
  unit : category
  associativityEq : ∀ {X Y Z : category}, tensorProduct (tensorProduct X Y) Z = tensorProduct X (tensorProduct Y Z)
  leftUnitEq : ∀ {X : category}, tensorProduct unit X = X
  rightUnitEq : ∀ {X : category}, tensorProduct X unit = X

structure StrictificationEquivalence (P : SymmetricMonoidalCategoryPackage) (Q : StrictMonoidalCategoryPackage) where
  functor : P.category → Q.category
  isEquivalence : Prop
  respectsStructure : Prop

def StrictificationEquivalenceClosed {P : SymmetricMonoidalCategoryPackage} {Q : StrictMonoidalCategoryPackage} (E : StrictificationEquivalence P Q) : Prop :=
  E.isEquivalence ∧ E.respectsStructure

theorem strictification_equivalence_closed {P : SymmetricMonoidalCategoryPackage} {Q : StrictMonoidalCategoryPackage} (E : StrictificationEquivalence P Q) (h1 : E.isEquivalence) (h2 : E.respectsStructure) :
  StrictificationEquivalenceClosed E := by
  exact And.intro h1 h2

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse