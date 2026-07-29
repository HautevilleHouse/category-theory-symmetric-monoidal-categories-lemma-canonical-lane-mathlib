import canonicalLaneMathlib.AdmissibleClass
import CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.MacLaneCoherence
import CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.BraidedMonoidalFunctor

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure CoherenceClosurePackage (Obj : Type u) (C : SymmetricMonoidalCategory Obj) where
  macLane : MacLaneCoherence Obj C
  coherenceForAll : ∀ (A B : Obj) (f g : (FreeSymmetricMonoidalCategory C).Hom A B), f = g
  proofTerm : coherenceForAll

theorem coherence_closure_package_closed (Obj : Type u) (C : SymmetricMonoidalCategory Obj) : CoherenceClosurePackage Obj C := by
  refine { macLane := mac_lane_coherence_holds Obj C, coherenceForAll := ?_, proofTerm := ?_ }
  · intro A B f g
    have h := (mac_lane_coherence_holds Obj C).coherenceForAll A B
    apply h
  · exact fun A B f g => ?_
    have h := (mac_lane_coherence_holds Obj C).coherenceForAll A B
    exact h f g

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse