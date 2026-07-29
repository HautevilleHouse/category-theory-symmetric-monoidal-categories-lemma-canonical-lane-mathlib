import canonicalLaneMathlib.AdmissibleClass
import CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.MacLaneCoherence

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure BraidedMonoidalFunctor (ObjC ObjD : Type u) (C : SymmetricMonoidalCategory ObjC) (D : SymmetricMonoidalCategory ObjD) where
  functor : ObjC → ObjD
  tensorPreservation : ∀ A B : ObjC, functor (C.tensorProduct A B) ≅ D.tensorProduct (functor A) (functor B)
  unitPreservation : functor C.tensorUnit ≅ D.tensorUnit
  braidingCompatibility : ∀ A B : ObjC, ... := by
    sorry
  coherenceCondition : ∀ A B C : ObjC, ... := by
    sorry
  
def BraidedMonoidalFunctorClosed (F : BraidedMonoidalFunctor ObjC ObjD C D) : Prop := True

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
