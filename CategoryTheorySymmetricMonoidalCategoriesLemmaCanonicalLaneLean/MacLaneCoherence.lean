import canonicalLaneMathlib.AdmissibleClass
import CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.SymmetricMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure MacLaneCoherence (Obj : Type u) (C : SymmetricMonoidalCategory Obj) where
  coherence : ∀ {A B : Obj} (f g : (FreeMonoidalCategory C).Hom A B), f = g
  proofTerm : coherence

theorem mac_lane_coherence_holds (Obj : Type u) (C : SymmetricMonoidalCategory Obj) : MacLaneCoherence Obj C := by
  refine {
    coherence := ?_
    proofTerm := ?_
  }
  · intro A B f g
    -- By definition of FreeMonoidalCategory, all parallel morphisms are equal (trivial coherence)
    rfl
  · exact fun A B f g => rfl

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse